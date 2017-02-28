using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;


namespace Online_shopping_system.customer
{
    public partial class registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                shoppingDataContext sdc = new shoppingDataContext();
                var query2 = from c in sdc.states
                             select c.state_name;
                foreach (var q in query2)
                {
                    DropDownList1.Items.Add(q);
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            shoppingDataContext sdc = new shoppingDataContext();
            var query3 = from u in sdc.users
                         where u.username == TextBox1.Text
                         select u;

            if (query3.Count() == 0)
            {
                if (TextBox6.Text == TextBox7.Text)
                {
                    MD5 md5 = MD5.Create();
                    shoppingDataContext sdc2= new shoppingDataContext();
                    user user = new user()
                    {
                        username = TextBox1.Text,
                        first_name = TextBox2.Text,
                        last_name = TextBox3.Text,
                        gender = RadioButtonList1.Text,
                        email_id = TextBox4.Text,
                        state = DropDownList1.SelectedItem.Text,
                        city = DropDownList2.SelectedItem.Text,
                        role = "customer",
                        mob_no = long.Parse(TextBox5.Text),
                        question = DropDownList3.SelectedItem.Text,
                        answer = TextBox9.Text,
                        password = GetMD5HashData(TextBox6.Text),

                    };
                    sdc2.users.InsertOnSubmit(user);
                    sdc2.SubmitChanges();

                    address add = new address()
                    {
                        address1= TextBox8.Text,
                        user_id = user.id
                    };

                    sdc2.addresses.InsertOnSubmit(add);
                    sdc2.SubmitChanges();

                    Response.Redirect("login.aspx?Data=Successfully Registered");
                }
                else
                {
                    Label1.Text = "Password does not match..Please try again..";
                }
            }
            else
            {
                Label1.Text = "Username already exists... Please enter another Username...";
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

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            shoppingDataContext sdc = new shoppingDataContext();
            var query2 = from c in sdc.cities
                         join s in sdc.states on c.state_id equals s.Id
                         where s.state_name == DropDownList1.SelectedItem.Text
                         select c.city_name;
            DropDownList2.Items.Clear();
            foreach (var v in query2)
            {
                DropDownList2.Items.Add(v);
            }
        }


    }
}