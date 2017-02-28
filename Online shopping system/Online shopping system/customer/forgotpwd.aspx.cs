using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_shopping_system.customer
{
    public partial class forgotpwd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox2.Text != "")
            {
                shoppingDataContext sdc = new shoppingDataContext();
                var query = from u in sdc.users
                            where u.email_id == TextBox2.Text
                            select u;
                if (query.Count() == 1)
                {
                    foreach (var u in query)
                    {
                        MultiView1.ActiveViewIndex = 1;
                        ViewState["id"] = u.id;
                    }
                }

                var query2 = from s in sdc.users
                             where s.id == int.Parse(ViewState["id"].ToString())
                             select s;
                foreach (var w in query)
                {
                    Label2.Text = w.question;
                }
            }
            else
            {
                Label5.Text = "Plz fill first..";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
            TextBox2.Text = "";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (TextBox3.Text != "")
            {
                shoppingDataContext sdc = new shoppingDataContext();
                var query2 = from s in sdc.users
                             where s.answer == TextBox3.Text && s.id== int.Parse(ViewState["id"].ToString())
                             select s;
                if (query2.Count() == 1)
                {
                    foreach (var q in query2)
                    {
                        MultiView1.ActiveViewIndex = 2;
                    }
                }
            }
            else
            {
                Label1.Text = "Plz fill first..";
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "" && TextBox4.Text != "")
            {
                shoppingDataContext sdc = new shoppingDataContext();
                var query = from u in sdc.users
                            where u.id == int.Parse(ViewState["id"].ToString())
                            select u;
                foreach (var q in query)
                {
                    q.password = GetMD5HashData(TextBox1.Text);
                }
                sdc.SubmitChanges();
                Response.Redirect("login.aspx?Data=Successfully Updated");
            }
            else
            {
                Label3.Text = "Plz fill first...";
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