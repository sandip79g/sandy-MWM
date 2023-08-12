<%@ Page Title="" Language="C#" MasterPageFile="~/client/clientmaster.master" AutoEventWireup="true" CodeFile="booking.aspx.cs" Inherits="client_order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <table style="width: 100%; height: 295px;">
        <tr>
            <td style="height: 11px; text-align: center; color: #9C1A1A; font-size: large;" colspan="2"><strong>Book Medicine</strong></td>
            <td style="height: 11px; text-align: center; color: #9C1A1A; font-size: large;">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 232px; font-size: medium; color: #990000;">Medicine name</td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Label" style="color: #999999"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 232px; font-size: medium; color: #990000;">Sales date</td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Label" style="color: #999999"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 232px; font-size: medium; color: #990000;">Sales Location</td>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Label" style="color: #999999"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 232px; font-size: medium; color: #990000;">Member Username</td>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Label" style="color: #999999"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 16px; width: 232px; font-size: medium; color: #990000;">Member contact</td>
            <td style="height: 16px">
                <asp:Label ID="Label6" runat="server" Text="Label" style="color: #999999"></asp:Label>
            </td>
            <td style="height: 16px">
            </td>
        </tr>
        <tr>
            <td style="width: 232px; font-size: medium; color: #990000;">Rate</td>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Label" style="color: #999999"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 232px; font-size: medium; color: #990000; height: 51px;">Quantity</td>
            <td style="height: 51px">
                <asp:TextBox ID="TextBox2" runat="server" Height="24px"></asp:TextBox>
                <br />
            </td>
            <td style="height: 51px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter quantity" style="color: #FF0000"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter a number" style="color: #FF0000" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="font-size: medium; color: #FF0000; text-align: center;" colspan="2">
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Buy" style="text-align: center; color: #FFFFFF; font-weight: 700; font-size: medium; background-color: #990000;" Height="36px" Width="118px" />
                <br />
                <asp:Literal ID="Literal2" runat="server"></asp:Literal>
                <br />
                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            </td>
            <td style="font-size: medium; color: #990000; text-align: center;">&nbsp;</td>
        </tr>
    </table>
    <p style="color: #FF0000">
        &nbsp;</p>
    <p style="color: #FF0000">
        &nbsp;</p>
    <p style="color: #FF0000">
        &nbsp;</p>
</asp:Content>

