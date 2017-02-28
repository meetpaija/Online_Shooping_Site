using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_shopping_system.admin
{
    public partial class yourprofile : System.Web.UI.Page
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
                Label2.Text = "For Change Your Profile Click the Radio Button";
                profileinfo();
            }
            else
            {
                Response.Redirect("/customer/login.aspx?Data=Please Login First...");

            }
        }
        protected void profileinfo()
        {
            shoppingDataContext sdc = new shoppingDataContext();
            int id = int.Parse(Session["admin"].ToString());
            var queue = from s in sdc.users
                        where s.id == id
                        select s;
            foreach(var q in queue)
            {
                Label3.Text = q.first_name;
                Label4.Text = q.email_id;
                Label5.Text = q.mob_no.ToString();
                Label6.Text = "****";
            }
        }
        public void Button6_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "")
            {
                int id = int.Parse(Session["admin"].ToString());
                shoppingDataContext sdc = new shoppingDataContext();
                var query = from s in sdc.users
                            where s.id == id
                            select s;
                foreach (var q in query)
                {
                    q.first_name = TextBox1.Text;
                }
                sdc.SubmitChanges();
                Label2.Text = "Successfully changed";
            }
            else
            {
                Label2.Text = "Please fill up first..";
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox2.Text != "" && TextBox7.Text!="")
            {
                int id = int.Parse(Session["admin"].ToString());
                MD5 md5 = MD5.Create();
                shoppingDataContext sdc = new shoppingDataContext();
                var query = from s in sdc.users
                            where s.id == id
                            select s;
                foreach (var q in query)
                {
                    q.password = GetMD5HashData(TextBox2.Text);
                }
                sdc.SubmitChanges();
                Label2.Text = "Successfully changed";
            }
            else
            {
                Label2.Text = "Please fill up first..";
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox3.Text != "")
            {
                int id = int.Parse(Session["admin"].ToString());
                shoppingDataContext sdc = new shoppingDataContext();
                var query = from s in sdc.users
                            where s.id == id
                            select s;
                foreach (var q in query)
                {
                    q.email_id = TextBox3.Text;
                }
                sdc.SubmitChanges();
                Label2.Text = "Successfully changed";
            }
            else
            {
                Label2.Text = "Please fill up first..";
            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (TextBox4.Text != "")
            {
                int id = int.Parse(Session["admin"].ToString());
                shoppingDataContext sdc = new shoppingDataContext();
                var query = from s in sdc.users
                            where s.id == id
                            select s;
                foreach (var q in query)
                {

                    q.mob_no = long.Parse(TextBox4.Text);
                }
                sdc.SubmitChanges();
                Label2.Text = "Successfully changed";
            }
            else
            {
                Label2.Text = "Please fill up first..";
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

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_info.aspx");
        }
    }
    }
