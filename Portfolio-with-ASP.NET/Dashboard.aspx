<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Portfolio_with_ASP.NET.Dashboard" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Dashboard</title>
    <style>
        :root {
              
        }
        body {
            font-family: Arial, sans-serif;
            color: whitesmoke;
            margin: 0;
            padding: 0;
            background-color: #081c29;
        }

        * {
            box-sizing: border-box;
        }

        header {
            background: #06263b;
            position:fixed;
            top:0;
            left:0;
            width:100%;
            height: 5rem;
            z-index:1000;
            color: #fff;
            padding: 1rem 1.5rem;
            text-align: center;
            display:flex;
            align-items:center;
            justify-content: flex-end;
        }



        .container {
            width:100%;
            display: flex;
            justify-content: center;
            align-items: center;
            -ms-flex-direction: column;
            -webkit-flex-direction: column;
            flex-direction: column;
            margin-top: 2rem;
            padding: 3rem 1.5rem;
            border-radius: 8px;
            
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: center;
            text-align: center;
        }

        h1 {
            font-weight:600;
            font-size:2rem;
            text-align:center;
        }

        .project-info {
            margin-bottom: 20px;
        }

        input[type="text"],
        textarea {
            width: 300px;
            height: 40px;
            max-width: 90%;
            border: none;
            border-radius: 5px;
            padding: 10px;
            font-size: 16px;
            color: #081c29;
            background-color: whitesmoke;
        }

        .radio-list {
            display: flex;
            flex-direction: row;
            align-items: center;
            justify-content: center;
            margin-top: 10px;
        }

        .radio-list tr { display: block; float: left; }
        .radio-list th, .radio-list td { display: block; }

        .listitem {
            display: flex;
            flex-direction: row;
            align-items: center;
            justify-content: center;
            margin-top: 10px;
        }

        input[type="radio"] {
            display:none;
        }

        input[type="radio"] ~ label {

            display: inline-block;
            padding: 10px 20px;
            font-size: 16px;
            color: aqua;
            background: transparent;
            border: 2px solid aqua;
            border-radius: 5px;
            margin: 5px;
            cursor: pointer;
            transition: all .3s ease-in-out;
        }

        input[type="radio"]:checked ~ label {
        
            background: aqua;
            color: #182b64;
        }

        input[type="file"] {
            width: 300px;
            
            max-width: 90%;
            border: none;
            border-radius: 5px;
            padding: 10px;
            font-size: 16px;
            border: 2px solid aqua;
            color: aqua;
            background-color: transparent;
        }
        

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        input[type="submit"] {
            
            text-align: center;
            display: inline-block;
            padding: 12px 28px;
            background: transparent;
            border: 3px solid aqua;
            font-size: 16px;
            color: aqua;
            letter-spacing: 1px;
            text-decoration: none;
            font-weight: 600;
            box-sizing: border-box;
            -webkit-border-radius: 40px;
            -moz-border-radius: 40px;
            border-radius: 40px;
            -webkit-transition: 0.3s ease-in-out;
            -o-transition: 0.3s ease-in-out;
            transition: 0.3s ease-in-out;
}

        input[type="submit"]:hover:hover {
        background: aqua;
        color: #182b64;
        }

        .form-btn {
            margin-top:2rem;

        }

         

        
    </style>
</head>
<body>
    <form id="form1" runat="server" >
    <header>
        
        <asp:Button Text="Log out" ID="logout" runat="server" class="btn-box" OnClick="LogoutHandle"/>
    </header>

    
    <div class="container">

    <h1>Welcome Hanium!</h1>
    <h2>Add Project</h2>
    
        
        <div class="project-form">

        <div class="project-info">
            
            <asp:TextBox ID="ProjectNameBox" runat="server" CssClass="form-box" placeholder="Project Name"></asp:TextBox>
        </div>

        <div class="project-info">
            
            <asp:TextBox ID="ProjectDetesBox" runat="server" CssClass="form-box" placeholder="Short description"></asp:TextBox>
        </div>

        <div class="project-info chooser">
            <h3>Project type:</h3>
            <asp:RadioButtonList CssClass="radio-list" ID="ProjectTypeList" runat="server">
                <asp:ListItem class="listItem">Web</asp:ListItem>
                <asp:ListItem class="listItem">Mobile</asp:ListItem>
                <asp:ListItem class="listItem">Console</asp:ListItem>
                <asp:ListItem class="listItem">Art</asp:ListItem>
            </asp:RadioButtonList>
        </div>

        <div class="project-info">
            <asp:Label ID="ProjectImageLabel" runat="server" Text="Project Image: "></asp:Label>
            <asp:FileUpload ID="ProjectImageBox" runat="server" CssClass="form-box"></asp:FileUpload>
        </div>

        <div>
            
            <asp:TextBox ID="ProjectLinkBox" runat="server" CssClass="form-box" placeholder="Project link"></asp:TextBox>
        </div>

        <asp:Button CssClass="btn-box form-btn" ID="AddProjectBtn" runat="server" Text="Add Project" OnClick="CourseAddButton_Click" />

    </div>
    </div>
    </form>
</body>
</html>
