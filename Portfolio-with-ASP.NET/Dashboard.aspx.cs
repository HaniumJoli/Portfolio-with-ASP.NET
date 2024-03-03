using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;
using System.Runtime.CompilerServices;


namespace Portfolio_with_ASP.NET
{

    public class Message
    {
        public string Name { get; set; }
        public string Email { get; set; }
        public string MessageText { get; set; }

        public Message(string Name, string Email, string MessageText)
        {
            this.Name = Name;
            this.Email = Email;
            this.MessageText = MessageText;
        }
        public Message() { }

        public List<Message> GetMessages()
        {
            List<Message> messages = new List<Message>();
            SqlConnection con = new SqlConnection("Server=DESKTOP-HANIUM\\SQLEXPRESS; Database=hanium_admin; Integrated Security=True");
            string query = "SELECT * FROM messages";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                Message message = new Message();
                message.Name = reader["name"].ToString();
                message.Email = reader["email"].ToString();
                message.MessageText = reader["message"].ToString();
                messages.Add(message);
                System.Diagnostics.Debug.WriteLine(message.Name);
                System.Diagnostics.Debug.WriteLine(message.Email);
                System.Diagnostics.Debug.WriteLine(message.MessageText);
            }
            System.Diagnostics.Debug.WriteLine(messages.Count);
            return messages;
        }

    }

    public class Projects
    {
        public string ProjectName { get; set; }
        public string ProjectDetails { get; set; }
        public string ProjectType { get; set; }
        public byte[] ProjectImage { get; set; }
        public string ProjectLink { get; set; }

        public Projects(string ProjectName, string ProjectDetails, string ProjectType, byte[] ProjectImage, string ProjectLink)
        {
            this.ProjectName = ProjectName;
            this.ProjectDetails = ProjectDetails;
            this.ProjectType = ProjectType;
            this.ProjectImage = ProjectImage;
            this.ProjectLink = ProjectLink;
        }

        public Projects() { }

        public Projects getProject(string ProjectLink)
        {
            Projects project = new Projects();
            SqlConnection con = new SqlConnection("Server=DESKTOP-HANIUM\\SQLEXPRESS; Database=hanium_admin; Integrated Security=True");
            string query = "SELECT * FROM Projects WHERE name = @ProjectLink";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@ProjectLink", ProjectLink);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                project.ProjectName = reader["name"].ToString();
                project.ProjectDetails = reader["description"].ToString();
                project.ProjectType = reader["type"].ToString();
                project.ProjectImage = (byte[])reader["image"];
                project.ProjectLink = reader["link"].ToString();
            }
            return project;
        }   

        public List<Projects> GetProjects()
        {
            List<Projects> projects = new List<Projects>();
            SqlConnection con = new SqlConnection("Server=DESKTOP-HANIUM\\SQLEXPRESS; Database=hanium_admin; Integrated Security=True");
            string query = "SELECT * FROM Projects";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                Projects project = new Projects();
                project.ProjectName = reader["name"].ToString();
                project.ProjectDetails = reader["description"].ToString();
                project.ProjectType = reader["type"].ToString();
                project.ProjectImage = (byte[])reader["image"];
                project.ProjectLink = reader["link"].ToString();
                projects.Add(project);
            }
            return projects;
        }

        public int AddProject(string ProjectName, string ProjectDetails, string ProjectType, byte[] ProjectImage, string ProjectLink)
        {

            SqlConnection con = new SqlConnection("Server=DESKTOP-HANIUM\\SQLEXPRESS; Database=hanium_admin; Integrated Security=True");
            string query = "INSERT INTO Projects (name, description, type, image, link) VALUES (@ProjectName, @ProjectDetails, @ProjectType, @ProjectImage, @ProjectLink)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@ProjectName", ProjectName);
            cmd.Parameters.AddWithValue("@ProjectDetails", ProjectDetails);
            cmd.Parameters.AddWithValue("@ProjectType", ProjectType);
            cmd.Parameters.AddWithValue("@ProjectImage", ProjectImage);
            cmd.Parameters.AddWithValue("@ProjectLink", ProjectLink);
            con.Open();
            int result = cmd.ExecuteNonQuery();
            con.Close();
            return result;
        }

        public void DeleteProject(string ProjectLink)
        {
            SqlConnection con = new SqlConnection("Server=DESKTOP-HANIUM\\SQLEXPRESS; Database=hanium_admin; Integrated Security=True");
            string query = "DELETE FROM Projects WHERE name = @ProjectLink";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@ProjectLink", ProjectLink);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
    public partial class Dashboard : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("MainPage.aspx");
            }

            Message message = new Message();

            if (!IsPostBack)
            {
                List<Message> messages = message.GetMessages();

                

                GridView1.DataSource = messages;
                GridView1.DataBind();
            }

            Projects project = new Projects();
            List<Projects> projects = project.GetProjects();

            foreach (var item in projects)
            {
                TableRow tr = new TableRow();
                TableCell td1 = new TableCell();
                td1.Text = item.ProjectName;
                TableCell td2 = new TableCell();
                td2.Text = item.ProjectDetails;
                TableCell td3 = new TableCell();
                td3.Text = item.ProjectType;
                TableCell td4 = new TableCell();
                td4.Text = item.ProjectLink;
                TableCell td5 = new TableCell();
                Button deleteButton = new Button();
                deleteButton.ID = "d*" + item.ProjectName;
                deleteButton.Text = "Delete";
                deleteButton.CssClass = "btn btn-danger";
                deleteButton.Click += new EventHandler(DeleteProject);
                td5.Controls.Add(deleteButton);
                Button editButton = new Button();
                editButton.ID = "e*" + item.ProjectName;
                editButton.Text = "Edit";
                editButton.Click += new EventHandler(EditProject);
                editButton.CssClass = "btn btn-primary";
                td5.Controls.Add(editButton);
                tr.Controls.Add(td1);
                tr.Controls.Add(td2);
                tr.Controls.Add(td3);
                tr.Controls.Add(td4);
                tr.Controls.Add(td5);
                ProjectTable.Controls.Add(tr);
            }
        }

        protected void DeleteProject(object sender, EventArgs e)
        {
            Button button = (Button)sender;

            string id=button.ID;
            string[] idArray = id.Split('*');
            string ProjectName = idArray[1];
            SqlConnection con = new SqlConnection("Server=DESKTOP-HANIUM\\SQLEXPRESS; Database=hanium_admin; Integrated Security=True");
            string query = "DELETE FROM Projects WHERE name = @ProjectName";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@ProjectName", ProjectName);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Project deleted successfully')</script>");
            Response.Redirect("Dashboard.aspx");
        }

        protected void EditProject(object sender, EventArgs e)
        {
            Button button = (Button)sender;
            string id=button.ID;
            System.Diagnostics.Debug.WriteLine(id);
            string[] idArray = id.Split('*');
            string ProjectName = idArray[1];
            System.Diagnostics.Debug.WriteLine(ProjectName);
            Response.Redirect("EditProject.aspx?ProjectName=" + ProjectName);
        }

        protected void LogoutHandle(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("MainPage.aspx");
        }

        protected void CourseAddButton_Click(object sender, EventArgs e)
        {
            Projects project = new Projects();
            string ProjectName = ProjectNameBox.Text;
            string ProjectDetails = ProjectDetesBox.Text;
            string ProjectType = ProjectTypeList.SelectedValue;
            string ProjectLink = ProjectLinkBox.Text;

            if(ProjectName == "" || ProjectDetails == "" || ProjectLink == "")
            {
                Response.Write("<script>alert('Please fill in all the fields')</script>");
                return;
            }

            if(ProjectType == "Select Project Type")
            {
                Response.Write("<script>alert('Please select a project type')</script>");
                return;
            }

            if (ProjectImageBox.HasFile)
            {
                byte[] ProjectImage = ProjectImageBox.FileBytes;
                int result=project.AddProject(ProjectName, ProjectDetails, ProjectType, ProjectImage, ProjectLink);
                if(result == 1)
                {
                    Response.Write("<script>alert('Project added successfully')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Project could not be added. Check your details.')</script>");
                }
                
            }
            else
            {
                Response.Write("<script>alert('Please upload an image')</script>");
            }

            Response.Redirect("Dashboard.aspx");
        }

    }
}