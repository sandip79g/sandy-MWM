<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeFile="admin_login.aspx.cs" Inherits="admin_admin_login" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors"/>
    <meta name="generator" content="Jekyll v4.0.1"/>
    
    <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/blog/"/>

    <!-- Bootstrap core CSS -->
	<link href="../dist/css/bootstrap.css" rel="stylesheet"/>
    
    <link href="Styles/dashboard.css" rel="stylesheet" />
	
    <link rel="stylesheet" type="text/css" href="styles/style.css" />
    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }
      

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
 </head>
<body class="text-center" style="background-color:lightgray;">
    <br />
    <br />
    <br />
    <br />
    
<form id="content1" runat="server" class="form-signin" style="text-align:center; 
    max-width: 330px;
    padding: 15px;
    margin: auto;
    background-color:lightgray;">
   <!--Content Starts-->
    

 
    <asp:Image Id="logo1" runat="server" ImageUrl="../Sandys_Pics/Logopng.png" class="mb-4" alt="Logo" width="72" height="72"/>
                <h1 class="h3 mb-3 font-weight-normal" style="color:white; font-size: 30px;">Admin Login</h1>
                    <asp:TextBox ID="unametxt" class="form-control" placeholder="Enter Username" runat="server" style="border-radius:0.5rem;" ></asp:TextBox>
               
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="unametxt" ErrorMessage="Enter username" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                
                
                <br />
                    <asp:TextBox ID="pwdtxt" class="form-control" runat="server" Placeholder="Enter Password" TextMode="Password" style="border-radius:0.5rem;"></asp:TextBox>
                
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="pwdtxt" ErrorMessage="Enter password" ForeColor="#FF3300"></asp:RequiredFieldValidator>

    <br />
                    <asp:Button ID="submitbtn" runat="server"  OnClick="Button1_Click" CssClass="btn btn-sm btn-success btn-block" type="submit" BackColor="Lime" ForeColor="White" Text="Submit" />
                    <input id="Reset1" type="reset" value="Reset" class="btn btn-sm btn-danger btn-block" style="background-color:red;"   Text="reset" /></td>
    <br />
    <div style="color: #FF0000; text-align: center;">
                    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                </div>
     
    </form>

       
    </body>
    </html>

