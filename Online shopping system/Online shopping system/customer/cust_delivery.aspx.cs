using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_shopping_system.customer
{
    public partial class cust_delivery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cust"] != null)
            {
                int id = int.Parse(Session["cust"].ToString());
                shoppingDataContext sdc = new shoppingDataContext();
                var query2 = from u in sdc.users
                             where u.id == id
                             select u;

                foreach (var n in query2)
                {
                    Label1.Text = n.first_name;
                }

                Label5.Visible = false;
                Label6.Visible = false;
                int pid = int.Parse(Request.QueryString["pro-id"]);
                int oid = int.Parse(Request.QueryString["order-id"]);
               
                var query3 = from c in sdc.products
                             join o in sdc.orders
                             on c.id equals o.prod_id
                             where o.id == oid && o.cust_id==id
                             select o;
                foreach (var n in query3)
                {
                    Label4.Text = "₹ " + n.amount.ToString();
                    Label7.Text = n.quantity.ToString();
                    Label10.Text = n.shipping_address;
                }
                var query4 = from c in sdc.deliveries
                             where c.order_id == oid && c.cust_id==id
                             select c;
                foreach (var p in query4)
                {
                   
                    Label8.Text = ((DateTime)p.delivery_date).ToString("dd-MM-yyyy");

                }
                var query = from c in sdc.products
                            join o in sdc.orders
                            on c.id equals o.prod_id
                            where o.id == oid && o.cust_id==id
                            select c;
                foreach (var q in query)
                {
                    Label2.Text = q.prod_name;
                    Label3.Text = q.description;
                    
                    if (q.size != null)
                    {
                        Label5.Visible = true;
                        Label6.Visible = true;
                        Label6.Text = q.size;
                    }
                    else
                    {
                        Label5.Visible = false;
                        Label6.Visible = false;
                    }
                }
            }
            else
            {
                Response.Redirect("login.aspx?Data=Please Login First...");

            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox8.Text != "")
            {
                int id = int.Parse(Session["cust"].ToString());
                int pid = int.Parse(Request.QueryString["pro-id"]);

                shoppingDataContext sdc = new shoppingDataContext();
                feedback feed = new feedback()
                {
                    prod_id = pid,
                    cust_id = id,
                    message = TextBox8.Text
                };
                sdc.feedbacks.InsertOnSubmit(feed);
                sdc.SubmitChanges();
                Label9.Text = "Successfully Submitted";
            }
            else
            {
                Label9.Text = "Please fill first..";
            }
        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("validate.aspx");
        }
    }
}