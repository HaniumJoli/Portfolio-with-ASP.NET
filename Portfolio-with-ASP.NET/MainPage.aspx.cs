using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Portfolio_with_ASP.NET
{
    public partial class MainPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Projects> projects = new List<Projects>();
            SqlConnection con = new SqlConnection("Server=DESKTOP-HANIUM\\SQLEXPRESS; Database=hanium_admin; Integrated Security=True");

        }

        protected void Message_Click(object sender, EventArgs e)
        {
            string name = nameText.Text;
            string email = emailText.Text;
            string message = messageText.Text;

            if (name != "" && email != "" && message != "")
            {
                SqlConnection con = new SqlConnection("Server=DESKTOP-HANIUM\\SQLEXPRESS; Database=hanium_admin; Integrated Security=True");
                SqlCommand cmd = new SqlCommand("INSERT INTO messages (name, email, message) VALUES (@name, @email, @message)",con);
                cmd.Parameters.AddWithValue("@name", name);
                cmd.Parameters.AddWithValue("@email", email);
                cmd.Parameters.AddWithValue("@message", message);
                con.Open(); 
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Thank you for your message, " + name + ". We will get back to you soon!')</script>");
                //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Thank you for your message, " + name + ". We will get back to you soon!')", true);
            }
            else
            {
                Response.Write("<script>alert('Please fill in all the fields.')</script>");
                //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please fill in all the fields.')", true);
            }
        }

        protected void Admin_Click(object sender, EventArgs e)
        {
            adminBtn.Enabled = true;
            Response.Redirect("AdminPanel.aspx");
            
        }
    }
}