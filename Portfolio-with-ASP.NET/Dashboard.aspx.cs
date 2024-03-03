using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace Portfolio_with_ASP.NET
{

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

        public List<Projects> GetProjects()
        {
            List<Projects> projects = new List<Projects>();
            string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
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

        public void AddProject(string ProjectName, string ProjectDetails, string ProjectType, byte[] ProjectImage, string ProjectLink)
        {
            string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            string query = "INSERT INTO Projects (name, description, type, image, link) VALUES (@ProjectName, @ProjectDetails, @ProjectType, @ProjectImage, @ProjectLink)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@ProjectName", ProjectName);
            cmd.Parameters.AddWithValue("@ProjectDetails", ProjectDetails);
            cmd.Parameters.AddWithValue("@ProjectType", ProjectType);
            cmd.Parameters.AddWithValue("@ProjectImage", ProjectImage);
            cmd.Parameters.AddWithValue("@ProjectLink", ProjectLink);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
    public partial class Dashboard : System.Web.UI.Page
    {


        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;

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
                project.AddProject(ProjectName, ProjectDetails, ProjectType, ProjectImage, ProjectLink);
                Response.Write("<script>alert('Project added successfully')</script>");
            }
            else
            {
                Response.Write("<script>alert('Please upload an image')</script>");
            }
        }

    }
}