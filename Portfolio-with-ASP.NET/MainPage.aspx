<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="Portfolio_with_ASP.NET.MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Hanium Maria Joli</title>
    <link rel="icon" href="icons/icon.png" sizes="36x36" />
    <link
        href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css"
        rel="stylesheet" />
    <link href="style/index-style.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
        href="https://fonts.googleapis.com/css2?family=Poppins&display=swap"
        rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <header class="header">
            <nav class="navbar">
                <ul class="sidebar">
                    <li id="hideSide">
                        <a>
                            <svg
                                viewBox="0 0 24 24"
                                fill="none"
                                xmlns="http://www.w3.org/2000/svg">
                                <g id="SVGRepo_bgCarrier" stroke-width="0"></g>
                                <g
                                    id="SVGRepo_tracerCarrier"
                                    stroke-linecap="round"
                                    stroke-linejoin="round">
                                </g>
                                <g id="SVGRepo_iconCarrier">
                                    <g id="Menu / Close_MD">
                                        <path
                                            id="Vector"
                                            d="M18 18L12 12M12 12L6 6M12 12L18 6M12 12L6 18"
                                            stroke="#ffffff"
                                            stroke-width="2"
                                            stroke-linecap="round"
                                            stroke-linejoin="round">
                                        </path>
                                    </g>
                                </g>
                            </svg>
                        </a>
                    </li>
                    <li>
                        <a style="--i: 1" class="active" href="#">Home</a>
                    </li>
                    <li>
                        <a style="--i: 2" href="#about">About</a>
                    </li>
                    <li>
                        <a style="--i: 3" href="#timeline-head">Background</a>
                    </li>
                    <li>
                        <a style="--i: 4" href="#services-head">Expertise</a>
                    </li>
                    <li>
                        <a style="--i: 5" href="#skills-sub">Skills</a>
                    </li>
                    <li>
                        <a style="--i: 6" href="#projects-head">Projects</a>
                    </li>
                    <li>
                        <a style="--i: 7" href="#contact-head">Contact</a>
                    </li>
                </ul>
                <ul class="nav-menu">
                    <li id="logo">
                        <asp:Button CssClass="logo" ID="adminBtn" runat="server" Text="Hanium" OnClick="Admin_Click" />
                        
                    </li>
                    <li class="hideonmobile">
                        <a
                            class="navitem"
                            style="--i: 1"
                            class="active"
                            href="#">Home</a>
                    </li>
                    <li class="hideonmobile">
                        <a class="navitem" style="--i: 2" href="#about">About</a>
                    </li>
                    <li class="hideonmobile">
                        <a class="navitem" style="--i: 3" href="#timeline-head">Background</a>
                    </li>
                    <li class="hideonmobile">
                        <a class="navitem" style="--i: 4" href="#services-head">Expertise</a>
                    </li>
                    <li class="hideonmobile">
                        <a class="navitem" style="--i: 5" href="#skills-sub">Skills</a>
                    </li>
                    <li class="hideonmobile">
                        <a class="navitem" style="--i: 6" href="#projects-head">Projects</a>
                    </li>
                    <li class="hideonmobile">
                        <a class="navitem" style="--i: 7" href="#contact-head">Contact</a>
                    </li>
                    <li id="showside">
                        <a>
                            <svg
                                viewBox="0 0 24 24"
                                fill="none"
                                xmlns="http://www.w3.org/2000/svg"
                                stroke="#000000">
                                <g id="SVGRepo_bgCarrier" stroke-width="0"></g>
                                <g
                                    id="SVGRepo_tracerCarrier"
                                    stroke-linecap="round"
                                    stroke-linejoin="round">
                                </g>
                                <g id="SVGRepo_iconCarrier">
                                    <path
                                        d="M4 6H20M4 12H20M4 18H20"
                                        stroke="#ffffff"
                                        stroke-width="2"
                                        stroke-linecap="round"
                                        stroke-linejoin="round">
                                    </path>
                                </g>
                            </svg>
                        </a>
                    </li>
                </ul>
            </nav>
        </header>
        <!-- <div class="placeholder"></div> -->
        <div class="wrapper">
            <section class="container-profile">
                <div class="profile-photo">
                    <img
                        id="profile-pic"
                        src="image/prof.jpeg"
                        alt="profile photo" />
                </div>
                <div class="home">
                    <div class="home-content">
                        <h3>Hello,It's me</h3>
                        <h1>Hanium Maria Joli</h1>
                        <h3>And I'm <span class="typed"></span><span class="cursor">|</span>
                        </h3>
                        <p>
                            I'm a 3rd year student persuing my B.Sc degree from
                            KUET.
                        </p>
                        <div class="home-sci">
                            <a
                                href="https://www.facebook.com/HaniumMariaJoli/"
                                style="--i: 1"><i class="bx bxl-facebook-circle bx-md"></i></a>
                            <a
                                href="https://github.com/HaniumJoli/"
                                style="--i: 2"><i class="bx bxl-github bx-md"></i></a>
                            <a
                                href="https://www.linkedin.com/in/hanium-maria-joli/"
                                style="--i: 3"
                                style="--i: 2"><i class="bx bxl-linkedin-square bx-md"></i></a>
                            <a
                                href="mailto:haniumjoli1015@gmail.com"
                                style="--i: 4"><i class="bx bx-envelope bx-md"></i></a>
                        </div>
                        <div>
                            <a
                                href="#contact-head"
                                style="--i: 5"
                                class="btn-box">Talk to me</a>
                        </div>
                    </div>
                    <span class="home-irover"></span>
                </div>
            </section>
            <section class="about" id="about">
                <div class="about-img">
                    <img src="image/mine.jpg" alt="about" />
                </div>
                <div class="about-text">
                    <h2>About <span>Me</span></h2>
                    <h4>Student</h4>
                    <p>
                        I am a Computer Science and Engineering (CSE) student
                        deeply immersed in technology and fueled by a love for
                        drawing. Proficient in coding and problem-solving, I
                        actively engage in hackathons and open-source projects,
                        staying at the forefront of technological advancements.
                        Beyond the digital realm, my passion for drawing adds a
                        creative edge to my problem-solving approach, fostering
                        innovation and adaptability. Committed to a holistic
                        education, I contribute actively to team projects and
                        coding competitions. With a blend of technical
                        expertise, collaborative spirit, and artistic flair, I
                        am ready to make impactful contributions to the dynamic
                        field of Computer Science and Engineering.
                    </p>
                    <a href="resource/firsttiime.pdf" class="btn-box">See my resume</a>
                </div>
            </section>
            <h1 class="sub-title" id="timeline-head">My <span>Background</span>
            </h1>
            <section id="timeline">
                <div class="timeline-main">
                    <div class="timeline-container">
                        <ul>
                            <li style="--i: 1">
                                <h3 class="timeline-title">
                                    <i class="bx bxs-backpack"></i>School
                                </h3>
                                <p class="timeline-text">
                                    Kanchan Varot Chandra High School,<br />
                                    Narayanganj
                                </p>
                                <p class="timeline-more">
                                    This is where my journey started. It is a
                                    reputed school in Narayanganj. I completed
                                    my SSC from this school with
                                    <span class="emphasize">GPA 5.00</span>.
                                </p>
                                <a class="timeline-read"></a>
                                <span
                                    class="timeline-circle"
                                    style="--i: 1"></span>
                                <span class="timeline-date">2008-2018</span>
                            </li>
                            <li style="--i: 2">
                                <h3 class="timeline-title">
                                    <i class="bx bx-book-open"></i>College
                                </h3>
                                <p class="timeline-text">
                                    Birshrestha Noor Mohammad Public College,
                                    <br />
                                    Dhaka
                                </p>
                                <p class="timeline-more">
                                    I completed my HSC from this prestigious
                                    college with
                                    <span class="emphasize">GPA 5.00</span>.
                                </p>
                                <a class="timeline-read"></a><span
                                    class="timeline-circle"
                                    style="--i: 2"></span><span class="timeline-date">2018-2020</span>
                            </li>
                            <li style="--i: 3">
                                <h3 class="timeline-title">
                                    <i class="bx bxs-graduation"></i>University
                                </h3>
                                <p class="timeline-text">
                                    Khulna University of Engineering &
                                    Technology,
                                    <br />
                                    Khulna
                                </p>
                                <p class="timeline-more">
                                    I am currently studying
                                    <span class="degree">Computer Science and Engineering</span>
                                    here and I am in my
                                    <span class="emphasize">3rd year</span>.
                                </p>
                                <a class="timeline-read"></a><span
                                    class="timeline-circle"
                                    style="--i: 3"></span><span class="timeline-date">2022-Present</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </section>
            <h1 class="sub-title" id="services-head">My <span>Expertise</span>
            </h1>
            <section class="services" id="services">
                <div class="container">
                    <div class="services-list">
                        <div style="--i: 1">
                            <div class="card-border"></div>
                            <div class="content">
                                <i class="bx bxl-android bx-md"></i>
                                <h2>Android Application Development</h2>
                                <p>
                                    In Android app development, I've honed
                                    skills in Java and Kotlin, creating
                                    user-friendly applications with responsive
                                    UI designs. Collaborating in teams, I've
                                    tackled challenges and adapted swiftly.
                                    Eager for continuous growth, my brief
                                    experience showcases both technical
                                    proficiency and a passion for crafting
                                    innovative solutions.
                                </p>
                                <a href="#android" class="read">Learn More</a>
                            </div>
                        </div>
                        <div style="--i: 2">
                            <div class="card-border"></div>
                            <div class="content">
                                <i class="bx bx-globe bx-md"></i>
                                <h2>Web Application Development</h2>
                                <p>
                                    In web application development, I've
                                    mastered languages like HTML, CSS, and
                                    JavaScript to create intuitive and
                                    responsive interfaces. Collaborating in
                                    teams, I've tackled challenges, adapting
                                    swiftly to emerging trends. My brief
                                    experience reflects both technical
                                    proficiency and a passion for crafting
                                    innovative solutions in the dynamic field of
                                    web development.
                                </p>
                                <a href="#webapp" class="read">Learn More</a>
                            </div>
                        </div>
                        <div style="--i: 3">
                            <div class="card-border"></div>
                            <div class="content">
                                <i class="bx bx-palette bx-md"></i>
                                <h2>Drawing</h2>
                                <p>
                                    In my exploration of drawing, particularly
                                    in the realm of Boho art, I've immersed
                                    myself in the expressive and free-spirited
                                    world of this unique style. Through
                                    intricate patterns, vibrant colors, and a
                                    blend of cultural influences, I've created
                                    visually captivating pieces. This journey
                                    has allowed me to embrace creativity,
                                    experiment with various techniques, and
                                    develop a distinctive artistic voice within
                                    the Boho aesthetic. Eager to further evolve
                                    my skills and contribute to the diverse
                                    landscape of artistic expression, my
                                    experience in Boho art reflects both passion
                                    and a commitment to continuous growth.
                                </p>
                                <a href="#boho" class="read">Learn More</a>
                            </div>
                        </div>
                        <div style="--i: 4">
                            <div class="card-border"></div>
                            <div class="content">
                                <i class="bx bx-border-none bx-md"></i>
                                <h2>Textile-Art</h2>
                                <p>
                                    In textile art, I've honed skills in precise
                                    sewing techniques, pattern making, and
                                    fabric selection. My experience spans
                                    garment construction and creative
                                    exploration, showcasing a passion for
                                    crafting expressive and versatile pieces.
                                    Eager to continue evolving within the
                                    dynamic world of textile art.
                                </p>
                                <a href="#boho" class="read">Learn More</a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <h1 class="sub-title" id="skills-sub">My <span>Skills</span></h1>
            <section id="skills">
                <div class="container1">
                    <h1 class="heading1">Technical Skills</h1>
                    <div class="technical-bars">
                        <div class="bar">
                            <i
                                class="bx bxl-c-plus-plus"
                                style="color: brown"></i>
                            <div class="info">
                                <span>C/C++</span>
                            </div>
                            <div class="progress-line c">
                                <span></span>
                            </div>
                        </div>
                        <div class="bar">
                            <i
                                class="bx bxl-javascript"
                                style="color: yellow"></i>
                            <div class="info">
                                <span>JavaScript</span>
                            </div>
                            <div class="progress-line cpp">
                                <span></span>
                            </div>
                        </div>
                        <div class="bar">
                            <i class="bx bxl-java" style="color: burlywood"></i>
                            <div class="info">
                                <span>Java/Kotlin</span>
                            </div>
                            <div class="progress-line java">
                                <span></span>
                            </div>
                        </div>
                        <div class="bar">
                            <i
                                class="bx bxl-python"
                                style="color: cornflowerblue"></i>
                            <div class="info">
                                <span>Python</span>
                            </div>
                            <div class="progress-line klt">
                                <span></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container1">
                    <h1 class="heading1">Professional Skills</h1>
                    <div class="radial-bars">
                        <div class="radial-bar">
                            <svg
                                class="radial-svg"
                                x="0px"
                                y="0px"
                                viewBox="0 0 200 200">
                                <lineargradient
                                    id="gradient"
                                    gradientUnits="userSpaceOnUse"
                                    x1="100"
                                    y1="0"
                                    x2="100"
                                    y2="200">
                                    <stop
                                        offset="0"
                                        style="stop-color: #231fb6">
                                    </stop>
                                    <stop
                                        offset="1"
                                        style="stop-color: #1faeb6">
                                    </stop>
                                </lineargradient>
                                <circle
                                    class="progress-bar"
                                    cx="100"
                                    cy="100"
                                    r="80">
                                </circle>
                                <circle
                                    class="path path-1"
                                    cx="100"
                                    cy="100"
                                    r="80">
                                </circle>
                            </svg>
                            <div class="percentage">90%</div>
                            <div class="text">Creativity</div>
                        </div>
                        <div class="radial-bar">
                            <svg
                                class="radial-svg"
                                x="0px"
                                y="0px"
                                viewBox="0 0 200 200">
                                <circle
                                    class="progress-bar"
                                    cx="100"
                                    cy="100"
                                    r="80">
                                </circle>
                                <circle
                                    class="path path-2"
                                    cx="100"
                                    cy="100"
                                    r="80">
                                </circle>
                            </svg>
                            <div class="percentage">65%</div>
                            <div class="text">Communication</div>
                        </div>
                        <div class="radial-bar">
                            <svg
                                class="radial-svg"
                                x="0px"
                                y="0px"
                                viewBox="0 0 200 200">
                                <circle
                                    class="progress-bar"
                                    cx="100"
                                    cy="100"
                                    r="80">
                                </circle>
                                <circle
                                    class="path path-3"
                                    cx="100"
                                    cy="100"
                                    r="80">
                                </circle>
                            </svg>
                            <div class="percentage">75%</div>
                            <div class="text">Problem Solving</div>
                        </div>
                        <div class="radial-bar">
                            <svg
                                class="radial-svg"
                                x="0px"
                                y="0px"
                                viewBox="0 0 200 200">
                                <circle
                                    class="progress-bar"
                                    cx="100"
                                    cy="100"
                                    r="80">
                                </circle>
                                <circle
                                    class="path path-4"
                                    cx="100"
                                    cy="100"
                                    r="80">
                                </circle>
                            </svg>
                            <div class="percentage">85%</div>
                            <div class="text">Teamwork</div>
                        </div>
                    </div>
                </div>
            </section>
            <h1 class="sub-title" id="projects-head">My <span>Projects</span>
            </h1>
            <section class="portfolio" id="portfolio">
                <div class="portfolio-container" id="portfolio-container">
                    <div class="portfolio-item" style="--i: 1">
                        <div class="item-type">
                            <i
                                class="bx bxl-c-plus-plus"
                                style="color: tomato"></i>
                            <img src="image/cli.jpg" alt="console app" />
                        </div>
                        <div class="item-info">
                            <h3>
                                <i class="bx bxl-c-plus-plus"></i>Information
                                Manager
                            </h3>
                            <p>
                                A C++ console application for managing and
                                storing various information according to the
                                user's needs.
                            </p>
                            <a
                                href="https://github.com/HaniumJoli/Information_management_system"><i class="bx bxl-github"></i>GitHub Link</a>
                        </div>
                    </div>
                    <div class="portfolio-item" id="android" style="--i: 2">
                        <div class="item-type">
                            <i
                                class="bx bxl-android"
                                style="color: greenyellow"></i>
                            <img src="image/app-store.jpg" alt="android app" />
                        </div>
                        <div class="item-info">
                            <h3><i class="bx bxl-android"></i>JollyRead</h3>
                            <p>
                                A book reading android app with many features
                                such as library manager, information parsing and
                                an intuiitive reading UI.
                            </p>
                            <a href="https://github.com/HaniumJoli/JollyRead"><i class="bx bxl-github"></i>GitHub Link</a>
                        </div>
                    </div>
                    <div class="portfolio-item" id="boho" style="--i: 3">
                        <div class="item-type">
                            <i
                                class="bx bx-palette"
                                style="color: chocolate"></i>
                            <img src="image/boho.jpg" alt="boho art" />
                        </div>
                        <div class="item-info">
                            <h3><i class="bx bx-palette"></i>Boho art</h3>
                            <p>
                                A collection of artworks illustrating my
                                philosophy, worldview and personal aesthetic
                                preferences.
                            </p>
                            <a href="#"><i class="bx bx-paint"></i>Sample Link</a>
                        </div>
                    </div>
                </div>
            </section>
            <h1 class="sub-title" id="contact-head">Contact <span>Me</span></h1>
            <section class="contact" id="contact">
                <div class="contact-container">
                    <div class="contact-info">
                        <div class="contact-box" id="location" style="--i: 1">
                            <div class="contact-icon">
                                <i class="bx bx-map bx-md"></i>
                            </div>
                            <div class="contact-text">
                                <p>KUET, Khulna 9203, Bangladesh</p>
                            </div>
                        </div>
                        <div class="contact-box" id="phone" style="--i: 2">
                            <div class="contact-icon">
                                <i class="bx bx-phone-call bx-md"></i>
                            </div>
                            <div class="contact-text">
                                <ul>
                                    <li>+880-1952-347-593</li>
                                </ul>
                            </div>
                        </div>
                        <div class="contact-box" id="email" style="--i: 3">
                            <div class="contact-icon">
                                <i class="bx bx-envelope bx-md"></i>
                            </div>
                            <div class="contact-text">
                                <ul class="mail-list">
                                    <li>haniumjoli1015@gmail.com</li>
                                    <li>joli2007113@stud.kuet.ac.bd</li>
                                </ul>
                            </div>
                        </div>
                        <div class="contact-box" id="whatsapp" style="--i: 4">
                            <div class="contact-icon">
                                <i class="bx bxl-whatsapp bx-md"></i>
                            </div>
                            <div class="contact-text">
                                <ul class="whatsapp-list">
                                    <li>+880-1952-347-593</li>
                                </ul>
                            </div>
                        </div>
                        <div class="contact-box" id="telegram" style="--i: 5">
                            <div class="contact-icon">
                                <i class="bx bxl-telegram bx-md"></i>
                            </div>
                            <div class="contact-text">
                                <ul class="whatsapp-list">
                                    <li>+880-1952-347-593</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="contact-form">
                        <h2>Send a Message</h2>
                        <div class="contact-form-container">

                            <div class="input-box" style="--i: 1">

                                <asp:TextBox AutoCompleteType="DisplayName" placeholder="Name" CssClass="input-data" ID="nameText" runat="server"></asp:TextBox>

                            </div>

                            <div class="input-box" style="--i: 2">
                                <asp:TextBox AutoCompleteType="Email" placeholder="Email" CssClass="input-data" ID="emailText" runat="server"></asp:TextBox>
                            </div>

                            <div class="input-box" style="--i: 3">

                                <asp:TextBox ID="messageText" placeholder="Message" CssClass="input-data" runat="server"></asp:TextBox>

                            </div>
                            <asp:Button ID="submitBtn" CssClass="btn-box form-btn" runat="server" Text="Send" OnClick="Message_Click" />
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <script src="Script/index-script.js"></script>
    </form>
</body>
</html>
