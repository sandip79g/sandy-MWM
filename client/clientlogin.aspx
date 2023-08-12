<%@ Page Title="" Language="C#" MasterPageFile="~/client/clientmaster.master" AutoEventWireup="true" CodeFile="clientlogin.aspx.cs" Inherits="client_clientlogin" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<!--Content Starts-->
   <div style="text-align:center; width:100%; height: 100%; vertical-align:middle; color:white;">
 
 <div class="col-md-12" style="width:700px; margin-left: auto; margin-right:auto;">
      <br />
        <br />
        <br />
        <br />
        <br />
    <table style="vertical-align: middle;">
            <tr class="col-md-6 mb-3">
                <td colspan="2"> <h1 class="h3 mb-3 font-weight-normal" style="color:white"><strong> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LOGIN</strong></h1></td>
                <td ></td>
            </tr>

            <tr class="col-md-6 mb-3">
                <td style="padding-right:1.5rem; text-align:right">USERNAME</td>
                <td>
                    <asp:TextBox class="form-control" style="border-radius:0.25rem;" ID="uname" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="uname" ErrorMessage="Enter username" style="color: #FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="col-md-6 mb-3">
                <td style="padding-right:1.5rem; text-align:right">PASSWORD</td>
                <td >
                    <asp:TextBox ID="pwd" runat="server" TextMode="Password" class="form-control" style="border-radius:0.25rem;"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="pwd" ErrorMessage="Enter password" style="color: #FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr class="col-md-6 mb-3">
                <td></td>
                <td>
                    <asp:Button ID="Submit" runat="server" Text="OK"  OnClick="Submit_Click" style=" height: 40px; width:270px; background-color:forestgreen;" class="btn btn-md btn-primary btn-block" type="submit" />
                    <input id="Reset1" value="Reset" style=" height: 40px; width:270px; background-color:firebrick;" class="btn btn-md btn-danger btn-block"/>
                 </td>
                <td></td>
            </tr>
            <tr class="col-md-6 mb-3">
                
                <td></td>
                <td style="color:#DC3545">
                    
                    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                </td>
                <td></td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        
   </div>
    </div> 
    <!--Content Ends-->
</asp:Content>


