using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ZenithFrontEnd.Models;

namespace ZenithFrontEnd.Logic
{
    public class Price
    {
       
        public double calcPrice( double length, double height, double width, int qty, int printingSide, int material, int finish )
        {

            double price = 0.0;
            double unitPrice = 0.0;
            double valuePerQty = 0;
           // double valuePerQty = 13.00;

            //SIZE
            double l = length * 0.4;
            double h = height * 0.3;
            double w = width * 0.5;
            valuePerQty = l + h + w;


            //QUANTITY
            if (qty < 1)
            {
                unitPrice = 0;
            }
            else if (qty == 1)
            {
                unitPrice = 28.00;
            }
            else if (qty < 10)
            {
                unitPrice = 15;
            }
            else if (qty < 25)
            {
                unitPrice = valuePerQty;
            }
            else if (qty < 50)
            {
                unitPrice = valuePerQty - (valuePerQty * 0.082);
            }
            else if (qty < 100)
            {
                unitPrice = valuePerQty - (valuePerQty * 0.7082);
            }
            else if (qty < 500)
            {
                unitPrice = valuePerQty - (valuePerQty * 0.7444);
            }
            else if (qty < 1000)
            {
                unitPrice = valuePerQty - (valuePerQty * 0.82);
            }
            else if (qty < 2000)
            {
                unitPrice = valuePerQty - (valuePerQty * 0.83);
            }
            else if (qty < 5000)
            {
                unitPrice = valuePerQty - (valuePerQty * 0.84);
            }
            else
            {
                unitPrice = valuePerQty - (valuePerQty * 0.86);
            }
            // PRINTING SIDE
            if (printingSide == 1 )
            {
                unitPrice = unitPrice + 0.50;
            }
            else if (printingSide == 2)
            {
                unitPrice = unitPrice + (unitPrice * 0.25);
            }
            //MATERIAL
            if (material == 2)
            {
                unitPrice = unitPrice + 1;
            }
            else if (material == 1)
            {
                unitPrice = unitPrice + 0.5;
            }
            //FINISH
            if (finish == 1)
            {
                unitPrice = unitPrice + 1;
            }
            else if (finish == 2)
            {
                unitPrice = unitPrice + 0.5;
            }
           

            price = unitPrice * qty;
            return price;
        }
    }
}