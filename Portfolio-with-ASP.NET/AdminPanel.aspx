<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="Portfolio_with_ASP.NET.AdminPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Sign In as Admin</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jost:ital@0;1&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <style>
        * {
            -moz-box-sizing: border-box;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
            font-family: "Poppins", sans-serif;
        }

        body {
            color: whitesmoke;
            background-color: #081c29;
            margin: 0;
            padding: 0;
            height: 100vh;
        }

        .container {
            display: flex;
            -ms-flex-direction: column;
            -webkit-flex-direction: column;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            width:100%;
            height: 100%;
        }

        h2 {
            text-align: center;
            margin-top: 50px;
            font-size: 2rem;
            font-weight: 600;
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: center;
            text-align: center;
        }

        .form-group {
            margin: 10px 0;
        }

        #nameBox, #passwordBox {
            width: 300px;
            height: 40px;
            border: none;
            border-radius: 5px;
            padding: 10px;
            font-size: 16px;
            color: #081c29;
            background-color: whitesmoke;
        }

        #login, #clearCookie {
            margin-top: 2rem;
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

    #login:hover, #clearCookie:hover {
        background: aqua;
        color: #182b64;
    }
        

    </style>
</head>
<body>
    
    <div class="container">
        <h2>Sign in as admin</h2>
        <form id="form1" runat="server">

            <div class="form-group">
                <asp:TextBox ID="nameBox" runat="server" placeholder="Username"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:TextBox ID="passwordBox" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
            </div>

            <asp:Button CssClass="btn-box" ID="login" runat="server" Text="Submit" OnClick="Login_Click" />
            <asp:Button CssClass="btn-box" ID="clearCookie" runat="server" Text="Clear Cookie" OnClick="Cookie_Click" />
        </form>
   </div>
</body>
</html>
