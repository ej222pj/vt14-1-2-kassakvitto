using Kassakvitto.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Kassakvitto
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button_Click(object sender, EventArgs e)
        {
            if (IsValid) 
            {
                Panel1.Visible = true;

                Receipt Receipt = new Receipt(Double.Parse(Amount.Text));
                labelSubtotal.Text = String.Format("{0:c}", Receipt.Subtotal);
                labelDiscountRate.Text = String.Format("{0:p}", Receipt.DiscountRate);
                labelMoneyOff.Text = String.Format("{0:c}", Receipt.MoneyOff);
                labelTotal.Text = String.Format("{0:c}", Receipt.Total);
            }
        }
    }
}