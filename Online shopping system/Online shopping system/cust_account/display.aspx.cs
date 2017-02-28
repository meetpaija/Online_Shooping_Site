using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Online_shopping_system.cust_account
{
    public partial class display : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cust"] != null)
            {
                int id2 = int.Parse(Session["cust"].ToString());
                shoppingDataContext sdc = new shoppingDataContext();
                var query = from u in sdc.users
                            where u.id == id2
                            select u;

                foreach (var n in query)
                {
                    Label5.Text = n.first_name;
                }

                int i = int.Parse(Request.QueryString["id"]);

                switch (i)
                {
                    case 10:
                        Label1.Text = "Cricket";
                        Label2.Text = "Bat";
                        
                        Image1.ImageUrl = @"\images\sports\cricket\bat\bat1\21vPOkYGR1L.jpg";
                        ImageButton1.ImageUrl = @"\images\sports\cricket\bat\bat1\21vPOkYGR1L.jpg";
                        ImageButton2.ImageUrl = @"\images\sports\cricket\bat\bat1\31WWRjkuS2L.jpg";
                        ImageButton3.ImageUrl = @"\images\sports\cricket\bat\bat1\31cQFRnAlxL.jpg";
                        break;

                    case 12:
                        Label1.Text = "Tennis";
                        Label2.Text = "Ball";

                        Image1.ImageUrl = @"\images\sports\tennis\ball\b1\51TbzpKT0JL._SL1200_.jpg";
                        ImageButton1.ImageUrl = @"\images\sports\tennis\ball\b1\51TbzpKT0JL._SL1200_.jpg";
                        ImageButton2.ImageUrl = @"\images\sports\tennis\ball\b1\71Z2qrM3yLL._SL1500_.jpg";
                        ImageButton3.Visible = false;
                        break;

                    case 14:
                        Label1.Text = "Boxing";
                        Label2.Text = "Ball";

                        Image1.ImageUrl = @"\images\sports\boxing\boxing\b3\51xbpG2YQnL.jpg";
                        ImageButton1.ImageUrl = @"\images\sports\boxing\boxing\b3\51xbpG2YQnL.jpg";
                        ImageButton2.ImageUrl = @"\images\sports\boxing\boxing\b3\610KD-n8o5L._SL1500_.jpg";
                        ImageButton3.ImageUrl = @"\images\sports\boxing\boxing\b3\61aNljodYjL._SL1500_.jpg";
                        break;

                    case 15:
                        Label1.Text = "Football";
                        Label2.Text = "Ball";
                        Image1.ImageUrl = @"\images\sports\football or volleyball\football\f1\51dogMXMekL._SY355_.jpg";
                        ImageButton1.ImageUrl = @"\images\sports\football or volleyball\football\f1\51dogMXMekL._SY355_.jpg";
                        ImageButton2.ImageUrl = @"\images\sports\football or volleyball\football\f1\51pdlGKOdfL._SY355_.jpg";
                        ImageButton3.ImageUrl = @"\images\sports\football or volleyball\football\f1\81N-Nw5IrFL._SL1500_.jpg";
                        break;

                   

                    case 16:
                        Label1.Text = "Golf";
                        Label2.Text = "Ball";
                        Image1.ImageUrl = @"\images\sports\golf\ball\b1\31tOuQqYMCL._SY355_.jpg";
                        ImageButton1.ImageUrl = @"\images\sports\golf\ball\b1\31tOuQqYMCL._SY355_.jpg";
                        ImageButton2.Visible = false;
                        ImageButton3.Visible = false;
                        break;

                    case 18:
                        Label1.Text = "Laptop";
                        Label2.Text = "Apple";
                        Image1.ImageUrl = @"\images\electronics\laptop\41GPeBcssaL.jpg";
                        ImageButton1.ImageUrl = @"\images\electronics\laptop\41GPeBcssaL.jpg";
                        ImageButton2.ImageUrl = @"\images\electronics\laptop\hi.jpg";
                        ImageButton3.ImageUrl = @"\images\electronics\laptop\610a6eLcm-L._SL1312_.jpg";
                        break;

                    case 31:
                        Label1.Text = "Handbag & Clutches";
                        Label2.Text = "Handbag";
                        Image1.ImageUrl = @"\images\bags\handbag\81+kTHfXpPL._UL1500_.jpg";
                        ImageButton1.ImageUrl = @"\images\bags\handbag\81+kTHfXpPL._UL1500_.jpg";
                        ImageButton2.ImageUrl = @"\images\bags\handbag\81pPC6A-ZuL._UL1500_.jpg";
                        ImageButton3.Visible = false;
                        break;

                    case 29:
                        Label1.Text = "Luggege";
                        Label2.Text = "Luggege..";
                        Image1.ImageUrl = @"\images\bags\luggege\91fbSPLPYOL._SL1500_.jpg";
                        ImageButton1.ImageUrl = @"\images\bags\luggege\91fbSPLPYOL._SL1500_.jpg";
                        ImageButton2.Visible = false;
                        ImageButton3.Visible = false;
                        break;

                        case 30:
                        Label1.Text = "Messenger Bags";
                        Label2.Text = "Bag";
                        Image1.ImageUrl = @"\images\bags\messenger bag\51776HHPwOL.jpg";
                        ImageButton1.ImageUrl = @"\images\bags\messenger bag\51776HHPwOL.jpg";
                        ImageButton2.ImageUrl = @"\images\bags\messenger bag\61Bw2r5BoRL._SL1004_.jpg";
                        ImageButton3.Visible = false;
                        break;

                    case 19:
                        Label1.Text = "Mobiles";
                        Label2.Text = "Apple";
                        Image1.ImageUrl = @"\images\electronics\mobile\81Ow7+JBhqL._SL1500_.jpg";
                        ImageButton1.ImageUrl = @"\images\electronics\mobile\81Ow7+JBhqL._SL1500_.jpg";
                        ImageButton2.ImageUrl = @"\images\electronics\mobile\81OYshSfAaL._SL1500_.jpg";
                        ImageButton3.ImageUrl= @"\images\electronics\mobile\91CQmmsX46L._SL1500_.jpg";
                        break;

                    case 32:
                        Label1.Text = "Wallet";
                        Label2.Text = "Women;s Wallet";
                        Image1.ImageUrl = @"\images\bags\wallet\61mmh+djcEL._UL1500_.jpg";
                        ImageButton1.ImageUrl = @"\images\bags\wallet\61mmh+djcEL._UL1500_.jpg";
                        ImageButton2.ImageUrl = @"\images\bags\wallet\61OyN55spTL._UL1500_.jpg";
                        ImageButton3.Visible = false;
                        break;

                    case 20:
                        Label1.Text = "Pendrive&Accessory";
                        Label2.Text = "Pndrive";
                        Image1.ImageUrl = @"\images\electronics\pendrive\41avAZDsJHL.jpg";
                        ImageButton1.ImageUrl = @"\images\electronics\pendrive\41avAZDsJHL.jpg";
                        ImageButton2.ImageUrl = @"\images\electronics\pendrive\41C-wSrv+gL._SL1000_.jpg";
                        ImageButton3.ImageUrl = @"\images\electronics\pendrive\617TjMIouyL._SL1274_.jpg";
                        break;

                    default:  break;
                }



                var query2 = from c in sdc.products
                             where c.id == i
                             select c;


                foreach (var n in query2)
                {
                    Label3.Text = n.prod_name;
                    Label4.Text = n.price.ToString();
                    Label6.Text = n.discount_price.ToString();
                    Label7.Text = (n.price - n.discount_price).ToString() + " => " + Convert.ToInt32((((n.price - n.discount_price) * 100) / (n.price))).ToString() + "% Off";
                    Label8.Text = n.description;
                    if (n.size != null)
                    {
                        Label9.Visible = true;
                        Label9.Text = "Size: " + n.size;
                    }
                    else
                    {
                        Label9.Visible = false;
                    }
                    if (n.prod_quantity == 0)
                    {
                        Label10.Visible = true;
                        Label10.Text = "SOLD OUT";
                        Label11.Visible = false;
                        TextBox1.Visible = false;
                        Button1.Visible = false;
                        Button2.Visible = false;
                        ValQty.Visible = false;

                    }
                    else
                    {
                        Label11.Visible = true;

                        Label11.Text = "Quantity: ";
                        TextBox1.Visible = true;
                        ValQty.MaximumValue = n.prod_quantity.ToString();
                        ValQty.Visible = true;
                        Button1.Visible = true;
                        Button2.Visible = true;
                    }

                }
            }
            else
            {
                Response.Redirect("login.aspx?Data=Please Login First...");
            }


        }

        protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
        {
            int i = int.Parse(Request.QueryString["id"]);

            switch (i)
            {
                case 10:
                    Image1.ImageUrl = @"\images\sports\cricket\bat\bat1\21vPOkYGR1L.jpg";
                    break;
                case 12:
                    Image1.ImageUrl = @"\images\sports\boxing\boxing\b3\51xbpG2YQnL.jpg";
                    break;
                case 14:
                    Image1.ImageUrl = @"\images\sports\tennis\ball\b1\71Z2qrM3yLL._SL1500_.jpg";
                    break;
                case 15:
                    Image1.ImageUrl = @"\images\sports\football or volleyball\football\f1\51dogMXMekL._SY355_.jpg";
                    break;
                case 16:
                     Image1.ImageUrl = @"\images\sports\golf\ball\b1\31tOuQqYMCL._SY355_.jpg";
                    break;
                case 18:
                    Image1.ImageUrl = @"\images\electronics\laptop\41GPeBcssaL.jpg";
                    break;
                case 31:
                    Image1.ImageUrl = @"\images\bags\handbag\81+kTHfXpPL._UL1500_.jpg";
                    break;
                case 29:
                    Image1.ImageUrl = @"\images\bags\luggege\91fbSPLPYOL._SL1500_.jpg";
                    break;
                case 30:
                    Image1.ImageUrl = @"\images\bags\messenger bag\51776HHPwOL.jpg";
                    break;
                case 32:
                    Image1.ImageUrl = @"\images\bags\wallet\61mmh+djcEL._UL1500_.jpg";
                    break;
                case 19:
                    Image1.ImageUrl = @"\images\electronics\mobile\81Ow7+JBhqL._SL1500_.jpg";
                    break;
                case 20:
                    Image1.ImageUrl = @"\images\electronics\pendrive\41avAZDsJHL.jpg";
                    break;
            }
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            int i = int.Parse(Request.QueryString["id"]);

            switch (i)
            {
                case 10:
                    Image1.ImageUrl = @"\images\sports\cricket\bat\bat1\31WWRjkuS2L.jpg";
                    break;
                case 12:
                    Image1.ImageUrl = @"\images\sports\tennis\ball\b1\71Z2qrM3yLL._SL1500_.jpg";
                    break;
                case 14:
                    Image1.ImageUrl = @"\images\sports\boxing\boxing\b3\610KD-n8o5L._SL1500_.jpg";
                    break;
                case 15:
                    Image1.ImageUrl = @"\images\sports\football or volleyball\football\f1\51pdlGKOdfL._SY355_.jpg";
                    break;
                case 18:
                    Image1.ImageUrl = @"\images\electronics\laptop\hi.jpg";
                    break;
                case 31:
                    Image1.ImageUrl = @"\images\bags\handbag\81pPC6A-ZuL._UL1500_.jpg";
                    break;
                case 30:
                    Image1.ImageUrl = @"\images\bags\messenger bag\61Bw2r5BoRL._SL1004_.jpg";
                    break;
                case 32:
                    Image1.ImageUrl = @"\images\bags\wallet\61OyN55spTL._UL1500_.jpg";
                    break;
                case 19:
                    Image1.ImageUrl = @"\images\electronics\mobile\81OYshSfAaL._SL1500_.jpg";
                    break;
                case 20:
                    Image1.ImageUrl = @"\images\electronics\pendrive\41C-wSrv+gL._SL1000_.jpg";
                    break;
            }
        }
        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            int i = int.Parse(Request.QueryString["id"]);

            switch (i)
            {
                case 10:
                    Image1.ImageUrl = @"\images\sports\cricket\bat\bat1\31cQFRnAlxL.jpg";
                    break;
                case 14:
                    Image1.ImageUrl = @"\images\sports\boxing\boxing\b3\61aNljodYjL._SL1500_.jpg";
                    break;
                case 15:
                    Image1.ImageUrl = @"\images\sports\football or volleyball\football\f1\81N-Nw5IrFL._SL1500_.jpg";
                    break;
                case 18:
                    Image1.ImageUrl = @"\images\electronics\laptop\610a6eLcm-L._SL1312_.jpg";
                    break;
               
                case 19:
                    Image1.ImageUrl = @"\images\electronics\mobile\91CQmmsX46L._SL1500_.jpg";
                    break;
                case 20:
                    Image1.ImageUrl = @"\images\electronics\pendrive\617TjMIouyL._SL1274_.jpg";
                    break;
            }
        }
       
           
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (int.Parse(TextBox1.Text) != 0)
            {
                int i = int.Parse(Request.QueryString["id"]);
                int qnty = int.Parse(TextBox1.Text);
                Response.Redirect("/customer/cust_order.aspx?data="+i+"&qnty="+qnty);
            }
            else
            {
                Label12.Text = "Plz select quntity";
            }
        }
        protected void connect2(object sender, EventArgs e)
        {
            int i = int.Parse(Request.QueryString["id"]);

            switch (i)
            {
                case 10:
                    Response.Redirect(@"/cust_account/sports/Cricket.aspx");
                    break;

                case 12:
                    Response.Redirect(@"/cust_account/sports/tennis.aspx");
                    break;

                case 18:
                    Response.Redirect(@"/cust_account/electronics/Laptop and Accessories.aspx");
                    break;

                case 14:
                    Response.Redirect(@"/cust_account/sports/boxing.aspx");
                    break;

                case 15:
                    Response.Redirect(@"/cust_account/sports/football_vollyball.aspx");
                    break;

                case 16:
                    Response.Redirect(@"/cust_account/sports/golf.aspx");
                    break;

                case 32:
                    Response.Redirect(@"/cust_account/bags/Wallets.aspx");
                    break;

                case 31:
                    Response.Redirect(@"/cust_account/bags/Handbags , Clutches.aspx");
                    break;

                case 29:
                    Response.Redirect(@"/cust_account/bags/Luggage.aspx");
                    break;

                case 30:
                    Response.Redirect(@"/cust_account/bags/Messenger Bags.aspx");
                    break;
                case 19:
                    Response.Redirect(@"/cust_account/electronics/Mobiles and Accessories.aspx");
                    break;
                case 20:
                    Response.Redirect(@"/cust_account/electronics/Pendrive and Accessories.aspx");
                    break;

            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            int i = int.Parse(Request.QueryString["id"]);
            int qnty = int.Parse(TextBox1.Text);
            if (int.Parse(TextBox1.Text) != 0)
            {
                int cost = int.Parse(TextBox1.Text) * (int.Parse(Label6.Text));
                shoppingDataContext sdc2 = new shoppingDataContext();
                cart cart = new cart()
                {
                    quantity = int.Parse(TextBox1.Text),
                    total_cost = cost,
                    cust_id = int.Parse(Session["cust"].ToString()),
                    prod_id = int.Parse(Request.QueryString["id"])
                };
                sdc2.carts.InsertOnSubmit(cart);
                sdc2.SubmitChanges();
                Label12.Text = "Successfully Added..";
            }
            else
            {
                Label12.Text = "Plz select quntity";
            }
        }
    }
}