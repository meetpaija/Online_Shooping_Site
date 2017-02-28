using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_shopping_system.admin
{
    public partial class modify_product : System.Web.UI.Page
    {
        public int id ;
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

                MultiView1.ActiveViewIndex = 0;

                var query2 = from c in sdc.prod_cats
                             select c;
                foreach (var q in query2)
                {
                    DropDownList2.Items.Add(q.cat_name);
                }

            }
            else
            {
                Response.Redirect("/customer/login.aspx?Data=Please Login First...");

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList2.SelectedItem.Text != "" && DropDownList3.SelectedItem.Text != "")
            {
                MultiView1.ActiveViewIndex = 1;

                shoppingDataContext sdc = new shoppingDataContext();
                var query3 = from p in sdc.products
                             join c in sdc.prod_cats
                             on p.cat_id equals c.id
                             join d in sdc.prod_cat_2s
                             on p.cat_id_2 equals d.Id
                             where c.cat_name == DropDownList2.SelectedItem.Text && d.cat_name_2 == DropDownList3.SelectedItem.Text
                             select new { Product_Id = p.id, Product_Name = p.prod_name };


                GridView1.DataSource = query3;
                GridView1.DataBind();
            }
            else
            {
                Label5.Text = "Please Select First..";
            }
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            shoppingDataContext sdc = new shoppingDataContext();
            var query2 = from c in sdc.prod_cat_2s
                         join s in sdc.prod_cats on c.cat_id equals s.id
                         where s.cat_name == DropDownList2.SelectedItem.Text
                         select c;
            DropDownList3.Items.Clear();
            DropDownList3.Items.Add("--Please Select Sub_Category--");
            foreach (var v in query2)
            {

                DropDownList3.Items.Add(v.cat_name_2);
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    RadioButton chkRow = (row.Cells[0].FindControl("RadioButton1") as RadioButton);
                     if (chkRow.Checked)
                     {
                         ViewState["id"] = int.Parse(row.Cells[1].Text);
                        MultiView1.ActiveViewIndex = 2;
                        Label4.Text = "";
                    }
                }
            }
            Label9.Text = "Please select first";
        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
            Label2.Text = "Successfully Modified..";
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            
                MultiView1.ActiveViewIndex = 2;

                if (TextBox1.Text == "")
                {

                    Label4.Text = "plz fill first...";
                }
                else
                {
                    
                    shoppingDataContext sdc = new shoppingDataContext();
                    var query = from d in sdc.products
                                where d.id ==int.Parse( ViewState["id"].ToString())
                                select d;

                    foreach (var q in query)
                    {
                        q.prod_name = TextBox1.Text;
                    }
                    sdc.SubmitChanges();
                    Label4.Text = "successfully updated";
                    
                }
            }
        
        protected void Button7_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;

            if (TextBox2.Text == "")
            {

                Label4.Text = "plz fill first...";
            }
            else
            {

                shoppingDataContext sdc = new shoppingDataContext();
                var query = from d in sdc.products
                            where d.id == int.Parse(ViewState["id"].ToString())
                            select d;

                foreach (var q in query)
                {
                    q.description = TextBox2.Text;
                }
                sdc.SubmitChanges();
                Label4.Text = "successfully updated";

            }
           
        }
        protected void Button8_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;

            if (TextBox3.Text == "")
            {

                Label4.Text = "plz fill first...";
            }
            else
            {

                shoppingDataContext sdc = new shoppingDataContext();
                var query = from d in sdc.products
                            where d.id == int.Parse(ViewState["id"].ToString())
                            select d;

                foreach (var q in query)
                {
                    q.price = int.Parse(TextBox3.Text);
                }
                sdc.SubmitChanges();
                Label4.Text = "successfully updated";

            }

            
        }
        protected void Button9_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;

            if (TextBox4.Text == "")
            {

                Label4.Text = "plz fill first...";
            }
            else
            {

                shoppingDataContext sdc = new shoppingDataContext();
                var query = from d in sdc.products
                            where d.id == int.Parse(ViewState["id"].ToString())
                            select d;

                foreach (var q in query)
                {
                    q.discount_price = int.Parse(TextBox4.Text);
                }
                sdc.SubmitChanges();
                Label4.Text = "successfully updated";

            }

           
        }
        protected void Button10_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;

            if (TextBox5.Text == "")
            {

                Label4.Text = "plz fill first...";
            }
            else
            {

                shoppingDataContext sdc = new shoppingDataContext();
                var query = from d in sdc.products
                            where d.id == int.Parse(ViewState["id"].ToString())
                            select d;

                foreach (var q in query)
                {
                    q.prod_quantity = int.Parse(TextBox5.Text);
                }
            
                sdc.SubmitChanges();
                Label4.Text = "successfully updated";

            }

           
        }
        protected void Button11_Click(object sender, EventArgs e)
        {

            MultiView1.ActiveViewIndex = 2;

            if (TextBox6.Text == "")
            {

                Label4.Text = "plz fill first...";
            }
            else
            {

                shoppingDataContext sdc = new shoppingDataContext();
                var query = from d in sdc.products
                            where d.id == int.Parse(ViewState["id"].ToString())
                            select d;

                foreach (var q in query)
                {
                    q.size = TextBox6.Text;
                }

                sdc.SubmitChanges();
                Label4.Text = "successfully updated";

            }


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
            DropDownList2.ClearSelection();
            DropDownList3.ClearSelection();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                RadioButton rb = (RadioButton)GridView1.Rows[i]
                                .Cells[0].FindControl("RadioButton1");
                if (rb != null)
                {
                    if (rb.Checked)
                    {
                        rb.Checked = false;
                        break;
                    }

                }

            }
            MultiView1.ActiveViewIndex = 1;
            Label9.Text = "";
            shoppingDataContext sdc = new shoppingDataContext();
            var query3 = from p in sdc.products
                         join c in sdc.prod_cats
                         on p.cat_id equals c.id
                         join d in sdc.prod_cat_2s
                         on p.cat_id_2 equals d.Id
                         where c.cat_name == DropDownList2.SelectedItem.Text && d.cat_name_2 == DropDownList3.SelectedItem.Text
                         select new { Product_Id = p.id, Product_Name = p.prod_name };
            GridView1.DataSource = query3;
            GridView1.DataBind();
        }
    }
}