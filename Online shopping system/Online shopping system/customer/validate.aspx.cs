using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Linq.SqlClient;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_shopping_system.customer
{
    public partial class validate : System.Web.UI.Page
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
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
                   Label2.Text= this.Request.QueryString["data"];
                    

                   
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
                    int id = int.Parse(Session["cust"].ToString());
                    shoppingDataContext sdc = new shoppingDataContext();
                    var query = from u in sdc.users
                                where u.id == id
                                select u;

                    foreach (var n in query)
                    {
                        Label1.Text = n.first_name;
                    }
                    Label2.Text = this.Request.QueryString["data"];
                }
                else
                {
                    Response.Redirect("login.aspx?Data=Session is terminated...Please Login First...");
                }
            }
        }

        
       
    }
        
    }
