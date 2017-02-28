using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_shopping_system.admin
{
    public partial class delete_product : System.Web.UI.Page
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
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            shoppingDataContext sdc = new shoppingDataContext();
            var query2 = from c in sdc.prod_cat_2s
                         join s in sdc.prod_cats on c.cat_id equals s.id
                         where s.cat_name == DropDownList1.SelectedItem.Text
                         select c;
            DropDownList2.Items.Clear();
            GridView1.DataSource = null;
            GridView1.DataBind();
            DropDownList2.Items.Add("--Please Select Sub_Category--");
            foreach (var v in query2)
            {
                
                DropDownList2.Items.Add(v.cat_name_2);
            }
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            shoppingDataContext sdc = new shoppingDataContext();
            var query3 = from p in sdc.products
                         join c in sdc.prod_cats
                         on p.cat_id equals c.id
                         join d in sdc.prod_cat_2s
                         on p.cat_id_2 equals d.Id
                         where c.cat_name == DropDownList1.SelectedItem.Text && d.cat_name_2 == DropDownList2.SelectedItem.Text
                         select new { Product_Id = p.id, Product_Name = p.prod_name };
            GridView1.DataSource=query3;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    CheckBox chkRow = (row.Cells[0].FindControl("CheckBox1") as CheckBox);
                    if (chkRow.Checked)
                    {
                        int id =int.Parse( row.Cells[1].Text);
                        shoppingDataContext sdc = new shoppingDataContext();
                        var query = from d in sdc.products
                                    where d.id == id
                                    select d;
                         foreach(var q in query)
                        {
                            sdc.products.DeleteOnSubmit(q);
                        }
                        sdc.SubmitChanges();
                    }
                 }
            }
            GridView1.DataSource = null;
            GridView1.DataBind();
            Label2.Text = "Delete Product Successfully";
        }
    }
}