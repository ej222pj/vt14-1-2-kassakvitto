using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Kassakvitto.Model
{
    public class Receipt
    {

        private double _subtotal;

        public double Subtotal
        {
            get 
            {
                return _subtotal;
            }
            set 
            {
                if (value <= 0)
                {
                    throw new ArgumentOutOfRangeException("Värdet är inte större än 0");
                }
                else 
                {
                    _subtotal = value;
                }
            }
        }
        //Autoimplementerade
        public double DiscountRate { get; set; }
        public double MoneyOff { get; set; }
        public double Total { get; set; }

        public void Calculate(double subtotal) {

            Subtotal = subtotal;

            if (Subtotal < 500) {
                DiscountRate = 0.0;
                MoneyOff = Subtotal * DiscountRate;
                Total = Subtotal - MoneyOff;
            }
            else if (Subtotal > 499 && Subtotal < 1000)
            {
                DiscountRate = 0.05;
                MoneyOff = Subtotal * DiscountRate;
                Total = Subtotal - MoneyOff;
            }
            else if (Subtotal > 1000 && Subtotal < 5000)
            {
                DiscountRate = 0.1;
                MoneyOff = Subtotal * DiscountRate;
                Total = Subtotal - MoneyOff;
            }
            else if (Subtotal > 4999)
            {
                DiscountRate = 0.15;
                MoneyOff = Subtotal * DiscountRate;
                Total = Subtotal - MoneyOff;
            }
        }

        public override string ToString()
        {
            return String.Format("Totalt: {0:c}\n\nRabattsats: {1:p0}\nRabatt: {2:c}\nAtt Betala: {3:c}", Subtotal, DiscountRate * 100, MoneyOff, Total;
        }

        public Receipt(double subtotal){
            Calculate(subtotal);     
        }
    }
}