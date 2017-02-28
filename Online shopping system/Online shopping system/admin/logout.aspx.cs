using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_shopping_system.admin
{
    public partial class logout : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["admin"] != null)
            {
                if (Session["admin"] != null)
                {
                    Session.Clear();
                    Session.Abandon();
                }

                Response.Redirect("/customer/login.aspx?Data=Successfully Logged Out");
            }
            else
            {
                Response.Redirect("/customer/login.aspx?Data=Please Login First...");

            }

        }
    }
}