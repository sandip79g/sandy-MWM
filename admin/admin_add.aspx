<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMaster.master" AutoEventWireup="true" CodeFile="admin_add.aspx.cs" Inherits="admin_admin_add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="background-color:black; width:100%; height: 100%;">
        <div style="text-align:center; background-color:black;">
     <div class="col-md-8 order-md-1" style="width: 600px; margin-left: auto; margin-right:auto;">
         <br />
         <br />
        <table>
            <tr>
                <td colspan="2"><h1 class="h3 mb-3 font-weight-normal"style="color:white">Add Admin</h1>
            </td>
            <td>

            </td>
            </tr >
            <tr class="mb-3">
                <td style="text-align:center" >Username</td>
                <td>
           <asp:TextBox style="border-radius:0.25rem;" ID="unametxt" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
            
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="unametxt" ErrorMessage="Enter username" style="color: #FF0000;"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="mb-3">
            <td>Password</td>
            <td >
                <asp:TextBox ID="pwdtxt" style="border-radius:0.25rem;" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="pwdtxt" ErrorMessage="Enter password" style="color: #FF0000;"></asp:RequiredFieldValidator>
                
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="pwdtxt" ErrorMessage="Password must be 5 characters long" style="color: #FF0000" ValidationExpression="^\w{5,}$"></asp:RegularExpressionValidator>
            </td>
        </tr>

        <tr class="mb-3">
            <td>Confirm Password</td>
            <td>
                <asp:TextBox style="border-radius:0.25rem;" ID="cpwdtxt" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="cpwdtxt" ErrorMessage="Enter confirm password " style=" color: #FF0000;"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pwdtxt" ControlToValidate="cpwdtxt" ErrorMessage="Password do not match " style="color: #FF0000"></asp:CompareValidator>
            </td>
        </tr>

        <tr class="mb-3">
            <td>Email</td>
            <td>
                <asp:TextBox style="border-radius:0.25rem;" CssClass="form-control" ID="emailtxt" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="emailtxt" ErrorMessage="Enter Email address" style="color: #FF0000;"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="emailtxt" ErrorMessage="Enter valid email address" style="color: #FF0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="mb-3">
            <td>Contact</td>
            <td >
                <asp:TextBox style="border-radius:0.25rem;" CssClass="form-control" ID="contacttxt" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="contacttxt" ErrorMessage="Enter contact number" style="color: #FF0000;"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="contacttxt" ErrorMessage="Enter valid contact" style="color: #FF0000" ValidationExpression="^([0-9\(\)\/\+ \-]*)$"></asp:RegularExpressionValidator>
            </td>
        </tr>

        <tr class="mb-3">
            <td></td>
            <td>
                <asp:Button ID="submitbtn" runat="server" style=" height: 40px; width:260px" class="btn btn-md btn-success btn-block" Text="Submit"  BackColor="Lime" OnClick="Button1_Click1" type="submit" />
                <input id="Reset1" style=" height: 40px; width:260px; background: firebrick;" class="btn btn-md btn-danger btn-block"  type="reset" value="Reset" Text="Reset"/></td>
            <td style="height: 38px; position: absolute; width: 302px;"></td>
        </tr>
        <tr class="mb-3">
            <td></td>
            <td style="color:#FF0000">
                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
         </div>
       </div>
    </div>
   
   
    </asp:Content>
