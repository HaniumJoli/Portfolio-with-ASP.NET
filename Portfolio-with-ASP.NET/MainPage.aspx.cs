using System;
using System.Collections.Generic;
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

        }

        protected void Message_Click(object sender, EventArgs e)
        {
            string name = nameText.Text;
            string email = emailText.Text;
            string message = messageText.Text;

            if (name != "" && email != "" && message != "")
            {
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