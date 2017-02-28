using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_shopping_system.cust_account
{
    public partial class delivery_info : System.Web.UI.Page
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
                    BindGrid();

                }
                else
                {
                    Response.Redirect("/customer/login.aspx?Data=Please Login First...");

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
                    BindGrid();

                }
                else
                {
                    Response.Redirect("/customer/login.aspx?Data=Session is terminated...Please Login First...");

                }
            }
        }
        protected void BindGrid()
        {

            int id = int.Parse(Session["cust"].ToString());
            shoppingDataContext sdc = new shoppingDataContext();
            var query = from c in sdc.products
                        join d in sdc.orders
                        on c.id equals d.prod_id
                        join o in sdc.deliveries
                        on d.id equals o.order_id
                        where o.delivery_date >= DateTime.Now.Date && o.cust_id==id && d.cust_id==id
                        orderby o.id descending
                        select new { Delivery_ID = o.id, Product_Name = c.prod_name, Quantity = d.quantity, Total_Amount = d.amount, Delivery_Date = o.delivery_date };
            GridView1.DataSource = query;
            GridView1.DataBind();
           
        }
        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            int id = int.Parse(Session["cust"].ToString());
            int d_id =int.Parse( GridView1.Rows[e.NewSelectedIndex].Cells[1].Text);
            lab.Visible = true;
            Label2.Visible = true;
            Label3.Visible = true;
            Label4.Visible = true;
            shoppingDataContext sdc = new shoppingDataContext();
            var query = from c in sdc.deliveries
                        where c.id == d_id && c.cust_id==id
                        select c;
           
            foreach (var q in query)
            {
                Label2.Text = ((DateTime)q.delivery_date).ToString("dd-MM-yyyy");
                string date = ((DateTime)q.delivery_date).ToString("dd-MM-yyyy");
         
                if (date==((DateTime)DateTime.Now.AddDays(1)).ToString("dd-MM-yyyy"))
                {
                    Label4.Text = "Your Product will come tomorrow";
                    
                }
                if (date == ((DateTime)DateTime.Now.AddDays(2)).ToString("dd-MM-yyyy"))
                {
                    Label4.Text = "Your Product has been gone to deliver you from our store";
                   
                }
                if (date == ((DateTime)DateTime.Now.AddDays(3)).ToString("dd-MM-yyyy"))
                {
                    Label4.Text = "Your Product has been packed and it will be delivered soon";
                 
                }
                    if (date==DateTime.Now.Date.ToString("dd-MM-yyyy"))
                {
                    Label4.Text = "Your Product is out for delivery";
                    
                }
            }
        }
    }
}