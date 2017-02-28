using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_shopping_system.admin
{
    public partial class add_product : System.Web.UI.Page
    {
        public int cat_id_1, cat_id_2_1;
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

                var query2 = from c in sdc.prod_cats
                             select c;
                foreach (var q in query2)
                {
                    DropDownList1.Items.Add(q.cat_name);
                }

            }
            else
            {
                Response.Redirect("/customer/login.aspx?Data=Please Login First...");

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            setcatid();
            setcatid2();
            shoppingDataContext sdc = new shoppingDataContext();

            product product = new product()
            {
                prod_name = TextBox1.Text,
                description = TextBox2.Text,
                price = int.Parse(TextBox3.Text),
                discount_price = int.Parse(TextBox4.Text),
                prod_quantity = int.Parse(TextBox5.Text),
                size = TextBox6.Text,
                cat_id = cat_id_1 ,
                cat_id_2 = cat_id_2_1,
            };
            sdc.products.InsertOnSubmit(product);
            sdc.SubmitChanges();
            Label2.Text="Product is successfully added";
        }

        protected void setcatid()
        {
            
            shoppingDataContext sdc2 = new shoppingDataContext();
            var query = from c in sdc2.prod_cats
                        where c.cat_name == DropDownList1.SelectedItem.Text
                        select c;
            foreach(var q in query)
            {
                cat_id_1 = q.id;
            }
            
        }

        protected void setcatid2()
        {
            shoppingDataContext sdc2 = new shoppingDataContext();
            var query = from c in sdc2.prod_cat_2s
                        where c.cat_name_2 == DropDownList2.SelectedItem.Text
                        select c;
            foreach (var q in query)
            {
                cat_id_2_1 = q.Id;
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            shoppingDataContext sdc = new shoppingDataContext();
            var query2 = from c in sdc.prod_cat_2s
                         join s in sdc.prod_cats on c.cat_id equals s.id
                         where s.cat_name == DropDownList1.SelectedItem.Text
                         select c;
            DropDownList2.Items.Clear();
            foreach (var v in query2)
            {
                DropDownList2.Items.Add(v.cat_name_2);
            }
        }
    }
}