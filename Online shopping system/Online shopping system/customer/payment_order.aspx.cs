using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_shopping_system.customer
{
    public partial class payment_order : System.Web.UI.Page
    {
        private IFormatProvider provider;

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
                int pid = int.Parse(Request.QueryString["pro-id"]);
                int qty = int.Parse(Request.QueryString["qnty"]);
             
                var query = from c in sdc.orders
                             where c.prod_id == pid && c.cust_id == id && c.quantity == qty 
                             select c;
                foreach (var q in query)
                {
                    ViewState["o-id"] = q.id;
                   
                }
              
            }
            else
            {
                Response.Redirect("login.aspx?Data=Please Login First...");

            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Session["cust"].ToString());
            shoppingDataContext sdc = new shoppingDataContext();
            int qty = int.Parse(Request.QueryString["qnty"]);
            int pid = int.Parse(Request.QueryString["pro-id"]);
            int oid = int.Parse(ViewState["o-id"].ToString());
            delivery del = new delivery()
            {
                cust_id = id,
                order_id = oid,
                delivery_date = DateTime.Now.AddDays(3),
                delivery_status = "Successfully placed.."
            };
            sdc.deliveries.InsertOnSubmit(del);
            sdc.SubmitChanges();
            var qu = from p in sdc.products
                     where p.id == pid
                     select p;
            foreach(var q in qu)
            {
                ViewState["q"] = q.prod_quantity;
            }

            int newqnty = int.Parse(ViewState["q"].ToString()) - qty;
            var query4 = from c in sdc.products
                         where c.id == pid
                         select c;
            foreach (var q in query4)
            {
                q.prod_quantity = newqnty;
            }
            sdc.SubmitChanges();

            Response.Redirect("/customer/cust_delivery.aspx?pro-id=" + pid + "&order-id=" + oid );
        }
        }
    }
