using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_shopping_system.admin
{
    public partial class admin_info : System.Web.UI.Page
    {
            public int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            
                if (Session["admin"] != null)
                {
                    id = int.Parse(Session["admin"].ToString());
                    shoppingDataContext sdc = new shoppingDataContext();
                    var query = from u in sdc.users
                                where u.id == id
                                select u;

                    foreach (var n in query)
                    {
                        Label1.Text = n.first_name;
                    }
                    string name = this.Request.QueryString["data"];
                    Label2.Text = name;


                    var query2 = from p in sdc.products
                                join d in sdc.prod_cat_2s
                                on p.cat_id_2 equals d.Id
                                join c in sdc.prod_cats
                                on p.cat_id equals c.id
                                orderby p.prod_quantity ascending
                                select new { Name = p.prod_name, Price = p.price, Discount_Price = p.discount_price, Quantity = p.prod_quantity, Category = c.cat_name, SubCategory = d.cat_name_2 };

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