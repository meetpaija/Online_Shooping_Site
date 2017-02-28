using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_shopping_system.cust_account.sports
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cust"] != null)
            {
                int id = int.Parse(Session["cust"].ToString());
                shoppingDataContext sdc = new shoppingDataContext();
                var query = from u in sdc.users
                            where u.id == id
                            select u;

                foreach (var n in query)
                {
                    Label1.Text = n.first_name;
                }

            }
            else
            {
                Response.Redirect("login.aspx?Data=Please Login First...");

            }
        }
    }
}