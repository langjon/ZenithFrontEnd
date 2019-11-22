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
        string payerEmail;
        string paymentStatus;
        string receiverEmail;
        string amount;
        string transactionID;
        protected void Page_Load(object sender, EventArgs e)
        {
            // receive PayPal ipn data

            // extract ipn data into a string
            byte[] param = Request.BinaryRead(HttpContext.Current.Request.ContentLength);
            string strRequest = Encoding.ASCII.GetString(param);

            // append PayPal verification code to end of string
            strRequest += "&cmd=_notify-validate";

            // create an HttpRequest channel to perform handshake with PayPal
            HttpWebRequest req = (HttpWebRequest)WebRequest.Create(@"https://www.sandbox.paypal.com/cgi-bin/webscr");
            req.Method = "POST";
            req.ContentType = "application/x-www-form-urlencoded";
            req.ContentLength = strRequest.Length;

            // send data back to PayPal to request verification
            StreamWriter streamOut = new StreamWriter(req.GetRequestStream(), Encoding.ASCII);
            streamOut.Write(strRequest);
            streamOut.Close();

            // receive response from PayPal
            StreamReader streamIn = new StreamReader(req.GetResponse().GetResponseStream());
            string strResponse = streamIn.ReadToEnd();
            streamIn.Close();

            // if PayPal response is successful / verified
            if (strResponse.Equals("VERIFIED"))
            {
                // paypal has verified the data, it is safe for us to perform processing now

                // extract the form fields expected: buyer and seller email, payment status, amount
                payerEmail = Request.Form["payer_email"];
                paymentStatus = Request.Form["payment_status"];
                receiverEmail = Request.Form["receiver_email"];
                amount = Request.Form["mc_gross"];
                transactionID = Request.Form["txn_id"];

                Session["transactionID"] = transactionID.ToString();

                
                payerEmailText.Text = payerEmail.ToString();
                statusText.Text = paymentStatus.ToString();
                receiverEmailText.Text = receiverEmail.ToString();
                amountText.Text = amount.ToString();

                if (Session["transactionID"] != null)
                {
                    txnID.Text = Session["transactionID"].ToString();
                } else
                {
                    txnID.Text = "it was null x_x";
                }
            }
        }
    }
}