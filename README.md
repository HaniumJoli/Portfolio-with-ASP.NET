# Portfolio-with-ASP.NET

Personal portfolio website built with ASP.NET Web Forms, HTML, CSS, and JavaScript, with a SQL Server backend for admin authentication, visitor messages, and project management.

## Overview

This project contains two main areas:

- Public portfolio page (`MainPage.aspx`) with profile sections, skills, projects, and a contact form.
- Admin area (`AdminPanel.aspx`, `Dashboard.aspx`, `EditProject.aspx`) for login, viewing contact messages, and managing project records.

## Core Features

- Responsive single-page portfolio interface with custom styling and animations.
- Contact form that stores visitor messages in SQL Server.
- Admin login using credentials from the database (`auth` table).
- Session-protected dashboard for admin-only access.
- Add new projects with name, description, type, image, and link.
- List existing projects in the dashboard.
- Delete projects.
- Edit project details and image.

## Tech Stack

- ASP.NET Web Forms (.NET Framework 4.7.2)
- C# code-behind
- SQL Server (Express/local instance)
- HTML, CSS, JavaScript
- NuGet package: `Microsoft.CodeDom.Providers.DotNetCompilerPlatform` (2.0.1)

## Project Structure

- `Portfolio-with-ASP.NET.sln`: Visual Studio solution
- `Portfolio-with-ASP.NET/Portfolio-with-ASP.NET.csproj`: Web application project file
- `Portfolio-with-ASP.NET/MainPage.aspx`: Public portfolio page
- `Portfolio-with-ASP.NET/AdminPanel.aspx`: Admin login page
- `Portfolio-with-ASP.NET/Dashboard.aspx`: Admin dashboard (messages + project management)
- `Portfolio-with-ASP.NET/EditProject.aspx`: Project edit page
- `Portfolio-with-ASP.NET/script/index-script.js`: Frontend behavior and animations
- `Portfolio-with-ASP.NET/style/index-style.css`: Main frontend styles
- `Portfolio-with-ASP.NET/Web.config`: Framework and connection settings

## Database Requirements

The backend code expects a SQL Server database named `hanium_admin` with these tables:

```sql
CREATE TABLE auth (
	username NVARCHAR(100) NOT NULL,
	password NVARCHAR(100) NOT NULL
);

CREATE TABLE messages (
	id INT IDENTITY(1,1) PRIMARY KEY,
	name NVARCHAR(150) NOT NULL,
	email NVARCHAR(150) NOT NULL,
	message NVARCHAR(MAX) NOT NULL
);

CREATE TABLE projects (
	id INT IDENTITY(1,1) PRIMARY KEY,
	name NVARCHAR(200) NOT NULL,
	description NVARCHAR(MAX) NOT NULL,
	type NVARCHAR(50) NOT NULL,
	image VARBINARY(MAX) NULL,
	link NVARCHAR(500) NOT NULL
);
```

Optional seed for admin login:

```sql
INSERT INTO auth (username, password)
VALUES ('admin', 'admin123');
```

## Local Setup

1. Open `Portfolio-with-ASP.NET.sln` in Visual Studio 2022.
2. Restore NuGet packages.
3. Create the `hanium_admin` database and tables shown above.
4. Update SQL Server instance names in code if your local instance differs.
5. Run the project with IIS Express.

## Configuration Note

`Web.config` contains a `dbconnection` connection string, but the current code-behind files use direct hard-coded connection strings. If you change database/server settings, update these files:

- `Portfolio-with-ASP.NET/MainPage.aspx.cs`
- `Portfolio-with-ASP.NET/AdminPanel.aspx.cs`
- `Portfolio-with-ASP.NET/Dashboard.aspx.cs`
- `Portfolio-with-ASP.NET/EditProject.aspx.cs`

## Page Flow

- `MainPage.aspx`: Public portfolio and contact form.
- `AdminPanel.aspx`: Admin login.
- `Dashboard.aspx`: Protected admin page for messages and project management.
- `EditProject.aspx`: Updates an existing project selected from dashboard.
