using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using PayPal.PayPalAPIInterfaceService;
using PayPal.PayPalAPIInterfaceService.Model;

namespace ZenithFrontEnd.CheckoutPages
{
    public partial class PaypalResponse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Post back to either sandbox or live
            string strSandbox = "https://www.sandbox.paypal.com/cgi-bin/webscr";
            HttpWebRequest req = (HttpWebRequest)WebRequest.Create(strSandbox);
            //Set values for the request back
            req.Method = "POST";
            req.ContentType = "application/x-www-form-urlencoded";
            byte[] param = Request.BinaryRead(HttpContext.Current.Request.ContentLength);
            string strRequest = Encoding.ASCII.GetString(param);
            string strResponse_copy = strRequest;  //Save a copy of the initial info sent by PayPal
            strRequest += "&cmd=_notify-validate";
            req.ContentLength = strRequest.Length;

            //for proxy
            //WebProxy proxy = new WebProxy(new Uri("http://url:port#"));
            //req.Proxy = proxy;
            //Send the request to PayPal and get the response
            StreamWriter streamOut = new StreamWriter(req.GetRequestStream(), System.Text.Encoding.ASCII);
            streamOut.Write(strRequest);
            streamOut.Close();
            StreamReader streamIn = new StreamReader(req.GetResponse().GetResponseStream());
            string strResponse = streamIn.ReadToEnd();
            streamIn.Close();


            if (strResponse == "VERIFIED")
            {
                // paypal has verified the data, it is safe for us to perform processing now

                // extract the form fields expected: buyer and seller email, payment status, amount
 
                string transactionID = Request.Form["txn_id"];

                Session["transactionID"] = transactionID.ToString();

                if (Session["transactionID"] != null)
                {
                    txnID.Text = Session["transactionID"].ToString();
                } else
                {
                    txnID.Text = "it was null x_x";
                }
            } else if (strResponse == "INVALID")
            {
                txnID.Text = strRequest.ToString() + strResponse.ToString() + " Not Verfied";
            }
        }
    }
}