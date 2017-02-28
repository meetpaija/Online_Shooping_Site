using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_shopping_system.customer
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string name = this.Request.QueryString["data"];
            Label1.Text = name;
            
        }


        protected void Button1_Click(object sender, EventArgs e)
        {

            if (DropDownList1.SelectedIndex == 0)
            {
                shoppingDataContext sdc = new shoppingDataContext();
                var query2 = from u in sdc.users
                             where u.role == "customer" && u.username == TextBox1.Text && u.password == GetMD5HashData(TextBox2.Text)
                             select u;
                if (query2.Count() == 0)
                {
                    Label1.Text = "Wrong Creditionals, Please enter again";
                }
                foreach (var n in query2)
                {
                    Session["cust"] = n.id;
                    //Label1.Text = Session["cust"].ToString();
                    Response.Redirect("validate.aspx");
                }
             
            }
            else
            {
                shoppingDataContext sdc = new shoppingDataContext();

                var query2 = from u in sdc.users
                             where u.role == "admin" && u.username == TextBox1.Text && u.password == GetMD5HashData(TextBox2.Text)
                             select u;
                if (query2.Count() == 0)
                {
                    Label1.Text = "Wrong Creditionals, Please enter again";
                }
                foreach (var n in query2)
                {
                    Session["admin"] = n.id;
                    //Label1.Text = Session["cust"].ToString();
                    Response.Redirect("/admin/admin_info.aspx");
                }
            }
        }
        private string GetMD5HashData(string data)
        {
            //create new instance of md5
            MD5 md5 = MD5.Create();

            //convert the input text to array of bytes
            byte[] hashData = md5.ComputeHash(Encoding.Default.GetBytes(data));

            //create new instance of StringBuilder to save hashed data
            StringBuilder returnValue = new StringBuilder();

            //loop for each byte and add it to StringBuilder
            for (int i = 0; i < hashData.Length; i++)
            {
                returnValue.Append(hashData[i].ToString());
            }

            // return hexadecimal string
            return returnValue.ToString();



        }


    }
}


