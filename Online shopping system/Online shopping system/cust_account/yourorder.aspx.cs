using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_shopping_system.cust_account
{
    public partial class yourorder : System.Web.UI.Page
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
                    BindGrid();
                   
                }
                else
                {
                    Response.Redirect("/customer/login.aspx?Data=Please Login First...");

                }
            
        }
        protected void BindGrid()
        {
            int id = int.Parse(Session["cust"].ToString());
            shoppingDataContext sdc = new shoppingDataContext();
            var query = from o in sdc.orders
                        join p in sdc.products
                        on o.prod_id equals p.id
                        join d in sdc.deliveries
                        on o.id equals d.order_id
                        where o.order_date <= DateTime.Now.AddDays(30) && o.cust_id==id
                        orderby o.id descending
                        select new { Product_Name = p.prod_name, Quantity = o.quantity,Shipping_Address=o.shipping_address, Order_Date = o.order_date, Delivery_Date = d.delivery_date };
            GridView1.DataSource=query;
            GridView1.DataBind();
        }
    }
}