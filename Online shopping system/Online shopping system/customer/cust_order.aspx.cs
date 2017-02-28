using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_shopping_system.customer
{
    public partial class cust_order : System.Web.UI.Page
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
                int i = int.Parse(Request.QueryString["data"]);
                int qty = int.Parse(Request.QueryString["qnty"]);

                var query = from c in sdc.products
                            where c.id == i
                            select c;
                foreach (var q in query)
                {
                    ViewState["q"] = q.prod_quantity;
                    ViewState["price"] = q.discount_price.ToString();
                    Label2.Text = q.prod_name;
                    Label3.Text = q.description;
                    Label4.Text = "₹" + q.price.ToString();
                    Label5.Text = "₹" + q.discount_price.ToString();
                    Label6.Text = "₹" + (q.price - q.discount_price).ToString() + " => " + Convert.ToInt32((((q.price - q.discount_price) * 100) / (q.price))).ToString() + "% Off";
                    Label7.Text = qty.ToString();
                    if (q.size != null)
                    {
                        lab_size.Visible = true;
                        Label8.Visible = true;
                        Label8.Text = q.size;
                    }
                    else
                    {
                        lab_size.Visible = false;
                        Label8.Visible = false;
                    }
                }
                var query3 = from c in sdc.addresses
                             where c.user_id == id
                             select new { Address = c.address1 };
               
                GridView1.DataSource = query3;
                    GridView1.DataBind();
                 Label9.Text = "₹" + int.Parse(ViewState["price"].ToString()) * qty;
            }
            else
            {
                Response.Redirect("login.aspx?Data=Please Login First...");

            }


        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            
            address.Visible = true;
            TextBox6.Visible = true;
            Button1.Visible = true;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox6.Text != "")
            {
                shoppingDataContext sdc = new shoppingDataContext();
                int id = int.Parse(Session["cust"].ToString());
                address add = new address()
                {
                    address1 = TextBox6.Text,
                    user_id = id
                };
                sdc.addresses.InsertOnSubmit(add);
                sdc.SubmitChanges();
            }
            else
            {
                Label10.Text = "plz write new address";
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            if (ViewState["add"] != null)
            {
                int qty = int.Parse(Request.QueryString["qnty"]);
                int id = int.Parse(Session["cust"].ToString());
                string addre = ViewState["add"].ToString();


                shoppingDataContext sdc = new shoppingDataContext();
                int i = int.Parse(Request.QueryString["data"]);

                order order = new order()
                {
                    cust_id = id,
                    prod_id = i,
                    order_date = DateTime.Now.AddDays(0),
                    quantity = qty,
                    amount = int.Parse(ViewState["price"].ToString()) * qty,
                    shipping_address = addre
                };
                sdc.orders.InsertOnSubmit(order);
                sdc.SubmitChanges();


            

                Response.Redirect("/customer/payment_order.aspx?pro-id="+i +"&qnty=" +qty);

            
           }
            else
            {
                Label10.Text = "Plz select one address..";
            }
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            ViewState["add"] = GridView1.Rows[e.NewSelectedIndex].Cells[1].Text; 
        }
    }

}