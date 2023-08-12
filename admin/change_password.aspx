<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMaster.master" AutoEventWireup="true" CodeFile="change_password.aspx.cs" Inherits="admin_change_password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align:center">
        <br />
        <br />
        <br />
        <br />
    <div class="col-md-8 order-md-1" style="width: 600px; margin-left: auto; margin-right:auto; background: black; ">
        <br/>
        <br />
        <table>
            <tr class="mb-3">
                <td colspan="3"><h1 class="h3 mb-3 font-weight-normal" style="text-align: center; color:white"> &nbsp;&nbsp;&nbsp; CHANGE PASSWORD</h1>
            </td>
            
        </tr>
        <tr class="mb-3" style="color:white;">
            <td>USERNAME</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
            <td ></td>
        </tr>
        <tr class="mb-3" style="color:white;">
            <td >PASSWORD</td>
            <td>
                <asp:TextBox ID="TextBox1"  CssClass="form-control" style="border-radius:0.25rem;" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td style="width:30%">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter password" style="color: #FF0000"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="More than 5 characters" style="color: #FF0000" ValidationExpression="^\w{5,}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="mb-3" style="color:white;">
            <td>CONFIRM</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" style="border-radius:0.25rem"  TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Re-enter password" style="color: #FF0000"></asp:RequiredFieldValidator>
               
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox1" ControlToValidate="TextBox2" ErrorMessage="Not Matching" style="color: #FF0000"></asp:CompareValidator>
            </td>
        </tr>
        <tr class="mb-3">
            <td>&nbsp;</td>
            <td >
                <asp:Button ID="Button1" runat="server" CssClass="btn btn-sm btn-success btn-block" Text="Submit" OnClick="Button1_Click" BackColor="Lime" />
                <input id="Reset1" type="reset" value="Reset" class="btn btn-sm btn-danger btn-block" style="background-color:firebrick;"/></td>
            <td>&nbsp;</td>
        </tr>
        <tr class="mb-3">
            <td style="width: 192px">&nbsp;</td>
            <td style="width: 276px; text-align: center; color: #CC0000;">
                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            </td>
            <td>&nbsp;</td>
        </tr>

    </table>
        </div>
        </div>
    
</asp:Content>

