using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Portfolio_with_ASP.NET
{
    public partial class EditProject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String projectLink = Request.QueryString["projectName"];
            Projects project = new Projects();
            project = project.getProject(projectLink);
            ProjectNameBox.Text = project.ProjectName;
            ProjectDetesBox.Text = project.ProjectDetails;
            ProjectTypeList.SelectedValue = project.ProjectType;
            ProjectLinkBox.Text = project.ProjectLink;
        }

        protected void EditProjectBtn_Click(object sender, EventArgs e)
        {
            String projectLink = Request.QueryString["projectName"];
            Projects project = new Projects();
            project.ProjectName = ProjectNameBox.Text;
            project.ProjectDetails = ProjectDetesBox.Text;
            project.ProjectType = ProjectTypeList.SelectedValue;
            project.ProjectLink = ProjectLinkBox.Text;
            SqlConnection con = new SqlConnection("Server=DESKTOP-HANIUM\\SQLEXPRESS; Database=hanium_admin; Integrated Security=True");
            SqlCommand cmd = new SqlCommand("UPDATE projects SET name = @projectName, description = @projectDetails, type = @projectType, link = @projectLink WHERE name = @projectName2", con);
            cmd.Parameters.AddWithValue("@projectName", project.ProjectName);
            cmd.Parameters.AddWithValue("@projectDetails", project.ProjectDetails);
            cmd.Parameters.AddWithValue("@projectType", project.ProjectType);
            cmd.Parameters.AddWithValue("@projectLink", project.ProjectLink);
            cmd.Parameters.AddWithValue("@projectName2", projectLink);
            con.Open();
            int result = cmd.ExecuteNonQuery();
            //SqlCommand commit = new SqlCommand("COMMIT", con);
            //commit.ExecuteNonQuery();
            con.Close();
            System.Diagnostics.Debug.WriteLine(result);
            if(ProjectImageBox.HasFile)
            {
                byte[] imageBytes = ProjectImageBox.FileBytes;
                SqlCommand cmd2 = new SqlCommand("UPDATE projects SET image = @projectImage WHERE name = @projectName", con);
                cmd2.Parameters.AddWithValue("@projectImage", imageBytes);
                con.Open();
                cmd2.ExecuteNonQuery();
                //commit.ExecuteNonQuery();
                con.Close();
            }
            Response.Write("<script>alert('Project updated successfully!')</script>");
            Response.Redirect("Dashboard.aspx");
        }
    }
}