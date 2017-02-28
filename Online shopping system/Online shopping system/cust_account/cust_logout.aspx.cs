using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_shopping_system.cust_account
{
    public partial class logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["cust"] != null)
                {
                    if (Session["cust"] != null)
                    {
                        Session.Clear();
                        Session.Abandon();
                    }

                    Response.Redirect("/customer/login.aspx?Data=Successfully Logged Out");
                }
                else
                {
                    Response.Redirect("login.aspx?Data=Please Login First...");

                }
            }
            else
            {
                if (Session["cust"] != null)
                {
                    if (Session["cust"] != null)
                    {
                        Session.Clear();
                        Session.Abandon();
                    }

                    Response.Redirect("/customer/login.aspx?Data=Successfully Logged Out");
                }
                else
                {
                    Response.Redirect("login.aspx?Data=Session is terminated...Please Login First...");
                }
            }
        }
    }
}