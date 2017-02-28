using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_shopping_system.admin
{
    public partial class orderhistory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["admin"] != null)
            {
                int id = int.Parse(Session["admin"].ToString());
                shoppingDataContext sdc = new shoppingDataContext();
                var query = from u in sdc.users
                            where u.id == id
                            select u;

                foreach (var n in query)
                {
                    Label1.Text = n.first_name;
                }

                var query2 = from p in sdc.products
                             join o in sdc.orders
                             on p.id equals o.prod_id
                             join u in sdc.users
                             on o.cust_id equals u.id
                             orderby o.id descending
                             select new { CUSTOMER_NAME = u.first_name, PRODUCT_NAME = p.prod_name, QUANTITY = o.quantity, AMOUNT = o.quantity * p.discount_price, ORDER_DATE = o.order_date };
                GridView1.DataSource = query2;
                GridView1.DataBind();
            }
            else
            {
                Response.Redirect("/customer/login.aspx?Data=Please Login First...");

            }
        }
    }
}