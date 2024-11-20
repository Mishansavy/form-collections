<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Forms.aspx.cs" Inherits="form_collections.forms.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forms - Form Collections</title>
    <link rel="stylesheet" runat="server" media="screen" href="~/styles/style.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper form">

            <!-- Form 1: Basic Contact Form -->
            <div class="formdiv">
                <h2 class="heading">Form Section</h2>
                <h2 class="heading title">Form One</h2>
                <asp:TextBox ID="TextBox1" CssClass="inputfield" runat="server" placeholder="Full Name"></asp:TextBox>
                <asp:TextBox ID="TextBox2" CssClass="inputfield" runat="server" placeholder="Email"></asp:TextBox>
                <input id="Submit1" type="submit" value="Submit" />
            </div>

            <!-- Form 2: Newsletter Signup -->
            <div class="formdiv">
                <h2 class="heading title">Form Two: Newsletter Signup</h2>
                <asp:TextBox ID="NewsletterEmail" CssClass="inputfield" runat="server" placeholder="Email"></asp:TextBox>
                <input id="SubmitNewsletter" type="submit" value="Sign Up" />
            </div>

            <!-- Form 3: Feedback Form -->
            <div class="formdiv">
                <h2 class="heading title">Form Three: Feedback</h2>
                <asp:TextBox ID="FeedbackName" CssClass="inputfield" runat="server" placeholder="Your Name"></asp:TextBox>
                <asp:TextBox ID="FeedbackMessage" CssClass="textarea" runat="server" TextMode="MultiLine" placeholder="Your Feedback"></asp:TextBox>
                <input id="SubmitFeedback" type="submit" value="Submit Feedback" />
            </div>

            <!-- Form 4: Registration Form -->
            <div class="formdiv">
                <h2 class="heading title">Form Four: Registration</h2>
                <asp:TextBox ID="RegFullName" CssClass="inputfield" runat="server" placeholder="Full Name"></asp:TextBox>
                <asp:TextBox ID="RegEmail" CssClass="inputfield" runat="server" placeholder="Email"></asp:TextBox>
                <asp:TextBox ID="RegPassword" CssClass="inputfield" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                <asp:DropDownList ID="RegCountry" runat="server" CssClass="dropdown">
                    <asp:ListItem Text="Select Country" Value="" />
                    <asp:ListItem Text="United States" Value="US" />
                    <asp:ListItem Text="Canada" Value="CA" />
                    <asp:ListItem Text="United Kingdom" Value="UK" />
                    <asp:ListItem Text="Australia" Value="AU" />
                </asp:DropDownList>
                <input id="SubmitRegistration" type="submit" value="Register" />
            </div>

        </div>
    </form>
</body>
</html>
