﻿using System;
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
                
            }
            else 
            {
                throw new ArgumentException("Fältet inehåller inte ett flyttal över 0!");
            }
        }
    }
}