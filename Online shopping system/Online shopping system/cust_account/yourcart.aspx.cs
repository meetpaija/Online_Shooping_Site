using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_shopping_system.cust_account
{
    public partial class yourcart : System.Web.UI.Page
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
        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                int item =int.Parse( e.Row.Cells[0].Text);
                foreach (Button button in e.Row.Cells[4].Controls.OfType<Button>())
                {
                    if (button.CommandName == "Delete")
                    {
                        
                        button.Attributes["onclick"] = "if(!confirm('Do you want to delete " + item + "?')){ return false;};";
                      
                    }

                }
            }
        }
        protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
           
            int index = Convert.ToInt32(e.RowIndex);
            shoppingDataContext sdc = new shoppingDataContext();
            var query = from c in sdc.carts
                        where c.id == int.Parse(GridView1.Rows[index].Cells[0].Text)
                        select c;
            foreach (var q in query)
            {
                sdc.carts.DeleteOnSubmit(q);
            }
            sdc.SubmitChanges();
            BindGrid();
        }
        protected void BindGrid()
        {
            int id = int.Parse(Session["cust"].ToString());
            shoppingDataContext sdc = new shoppingDataContext();
            var query2 = from p in sdc.products
                         join c in sdc.carts
                         on p.id equals c.prod_id
                         where c.cust_id==id
                         select new { Cart_ID = c.id, Product_Name = p.prod_name, Quantity = c.quantity, Total_Cost = c.total_cost };
            GridView1.DataSource = query2;
            GridView1.DataBind();

        }
    }
}