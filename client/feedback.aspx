<%@ Page Title="" Language="C#" MasterPageFile="~/client/clientmaster.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="client_feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <p>
    <table style="width: 100%; height: 266px">
        <tr>
            <td style="width: 146px; height: 46px"></td>
            <td class="ac"><h1 class="h3 mb-3 font-weight-normal"><strong>Enter Your Feedback</strong></h1></td>
            <td style="height: 46px"></td>
        </tr>

        <tr>
            <td style="width: 146px">&nbsp;</td>
            <td style="width: 434px; text-align: center">
                <asp:TextBox ID="TextBox2" runat="server" Height="121px" TextMode="MultiLine" Width="410px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter feedback" style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>

        <tr>
            <td style="width: 146px; height: 32px">&nbsp;</td>
            <td style="width: 434px; height: 32px; text-align: center">
                <asp:Button ID="Button4" runat="server" Height="33px" OnClick="Button4_Click" style="text-align: center; font-size: medium;" class="btn btn-lg btn-primary btn-block" type="submit" Text="Submit" Width="132px" />
            </td>
            <td style="height: 32px"></td>
        </tr>

        <tr>
            <td style="width: 146px; height: 32px">&nbsp;</td>
            <td style="width: 434px; height: 32px; text-align: center; color: #CC0000">
                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            </td>
            <td style="height: 32px">&nbsp;</td>
        </tr>
    </table>
    <br />
</p>

</asp:Content>

