using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Portfolio_with_ASP.NET
{
    public partial class AdminPanel : System.Web.UI.Page
    {

        

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                Response.Redirect("Dashboard.aspx");
            }
            else
            {
                HttpCookie cookie = Request.Cookies["userInfo"];
                if (cookie!=null)
                {
                    nameBox.Text = cookie["username"].ToString();
                    passwordBox.Text = Request.Cookies["password"].ToString();
                }
            }
        }

        protected void Cookie_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["userInfo"];
            cookie.Expires = DateTime.Now.AddHours(-1);
            nameBox.Text = "";
            passwordBox.Text = "";
            Response.Redirect("AdminPanel.aspx");

            //if (rememberMe.Checked)
            //{
            //    Response.Cookies["username"].Value = nameBox.Text;
            //    Response.Cookies["password"].Value = passwordBox.Text;
            //    Response.Cookies["username"].Expires = DateTime.Now.AddHours(1);
            //    Response.Cookies["password"].Expires = DateTime.Now.AddHours(1);
            //}
            //else
            //{

            //}
        }
        protected void Login_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if(nameBox.Text == "" || passwordBox.Text == "")
                {
                    Response.Write("Please fill in all the fields.");
                    return;
                }
                SqlConnection con = new SqlConnection("Server=DESKTOP-HANIUM\\SQLEXPRESS; Database=hanium_admin; Integrated Security=True");
                SqlCommand cmd = new SqlCommand("SELECT * FROM auth WHERE username = @username AND password = @password", con);
                cmd.Parameters.AddWithValue("@username", nameBox.Text);
                cmd.Parameters.AddWithValue("@password", passwordBox.Text);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds, "auth");
                if (ds.Tables[0].Rows.Count != 0)
                {
                    HttpCookie cookie = new HttpCookie("username");
                    HttpCookie cookie2 = new HttpCookie("password");
                    cookie.Value = nameBox.Text;
                    cookie2.Value = passwordBox.Text;
                    cookie.Expires = DateTime.Now.AddHours(1);
                    cookie2.Expires = DateTime.Now.AddHours(1);

                    Session["username"] = nameBox.Text; // This is the session that is created when the login is successful
                    Response.Write("<Script>alert('Login Successful')</script>"); // This is the message that is displayed when the login is successful
                    Response.Redirect("Dashboard.aspx");
                }
                else
                {
                    Response.Write("<Script>alert('Login Failed. Invalid username or password.')</script>"); // This is the error message that is displayed when the login fails
                }
            }

        }
    }
}