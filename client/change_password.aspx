<%@ Page Title="" Language="C#" MasterPageFile="~/client/clientmaster.master" AutoEventWireup="true" CodeFile="change_password.aspx.cs" Inherits="client_change_password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="tableform">
        <table style="width: 110%; height: 212px;">
            <tr>
                <td colspan="2" style="color: #FFFFFF; background: #8b0000; height: 30px; text-align: center; font-size: x-large;"><strong>LOGIN</strong></td>
                <td style="height: 30px"></td>
            </tr>
            <tr>
                <td style="height: 40px; width: 159px; text-align: center; font-weight: 700; color: #000000;">USERNAME</td>
                <td style="height: 40px; width: 233px; text-align: center;">
                    <asp:Label ID="Label5" runat="server" style="font-size: large; font-weight: 700" Text="Label"></asp:Label>
                </td>
                <td style="height: 40px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="height: 40px; width: 159px; text-align: center; font-weight: 700; color: #000000;">PASSWORD</td>
                <td style="height: 40px; width: 233px">
                    <asp:TextBox ID="pwd" runat="server" Height="30px" Width="225px"></asp:TextBox>
                </td>
                <td style="height: 40px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="pwd" ErrorMessage="Enter password" style="color: #FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td style="height: 40px; width: 159px; text-align: center; font-weight: 700; color: #000000;">CONFIRM PASSWORD</td>
                <td style="height: 40px; width: 233px">
                    <asp:TextBox ID="cpwd" runat="server" Height="30px" Width="225px"></asp:TextBox>
                </td>
                <td style="height: 40px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="cpwd" ErrorMessage="Enter password" style="color: #FF3300"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pwd" ControlToValidate="cpwd" ErrorMessage="Password donot match." style="color: #CC0000"></asp:CompareValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td style="height: 40px; width: 159px; text-align: center; font-weight: 700;">
                    <br />
                </td>
                <td style="height: 40px; width: 233px">
                    <asp:Button ID="Submit" runat="server" Height="30px" OnClick="Submit_Click" Text="Submit" Width="95px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input id="Reset1" style="width: 80px; height: 30px" type="reset" value="Reset" /></td>
                <td style="height: 40px">&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 40px; width: 159px; text-align: center; font-weight: 700;">&nbsp;</td>
                <td style="height: 40px; width: 233px; color: #FF3300; font-weight: 700;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                </td>
                <td style="height: 40px">&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>

