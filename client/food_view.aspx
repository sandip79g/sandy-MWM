<%@ Page Title="" Language="C#" MasterPageFile="~/client/clientmaster.master" AutoEventWireup="true" CodeFile="food_view.aspx.cs" Inherits="client_singlemedicine" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   
   <div class="container" style="border:double 0.5px; border-color: lawngreen; padding-bottom:2px">
       <div class="card-header" style="text-align:center; background-color:white; color:black; font-size: 18px;">
                    <br /><asp:Label ID="Label1" runat="server" Text="Label" ></asp:Label>
        </div>

       <div class="card-body" style="text-align:center">
        <asp:Image ID="Image1" runat="server" Height="50%" Width="50%" style="text-align: center; padding:2px" />
        </div>    
       <br />

       <div class="card-footer">
           <table style="width:100%">
            <tr style="color: #FFFFFF; font-size: large">
                <td style=" text-align: center; width: 182px; font-size: medium; background-color: dimgrey ; color:white;">Name</td>
                <td style="font-size: medium; background-color: dimgrey ; color:white;">
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
               
            </tr>
            <tr style="color: #FFFFFF; font-size: large">
                <td style=" text-align: center;  width: 182px; font-size: medium; background-color: dimgrey ; color:white;">Type</td>
                <td style="font-size: medium; background-color: dimgrey ; color:white;">
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </td>
                
            </tr>
            <tr style="color: #FFFFFF; font-size: large">
                <td style=" text-align: center;  width: 182px; font-size: medium; background-color: dimgrey ; color:white;">Rate</td>
                <td style="font-size: medium; background-color: dimgrey ; color:white;">
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </td>
                
            </tr>
            <tr style="color: #FFFFFF; font-size: large">
                <td style="text-align: center; width: 182px; font-size: medium; background-color: dimgrey ; color:white;">Description</td>
                <td style="  font-size: medium; background-color: dimgrey ; color:white;">
                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                </td>
                
            </tr>
            <tr style="color: #FFFFFF; font-size: large">
                <td style=" text-align: center; width: 182px; font-size: medium; background-color: dimgrey ; color:white;">Quantity</td>
                <td style="font-size: medium; background-color: dimgrey ; color:white; height: 33px;">
                    <asp:TextBox ID="quantity" runat="server" style="text-align: center; width:200px; margin:auto"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="quantity" ErrorMessage="Enter valid number" style="color: #FF0000" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="quantity" ErrorMessage="Please enter a quantity" style="color: #CC0000"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                </td>
                
            </tr>


            <tr>
                <td colspan="2">
                    <asp:Button CssClass="btn btn-lg btn-block btn-success" ID="Button1" runat="server"   Text="Add To Cart" OnClick="Button1_Click" Style="width:200px; margin:auto; background-color: forestgreen;" />
                    <br />
                    <div style="color: red">

                    <asp:Literal ID="Literal1" runat="server" />
                        
                    </div>
                 </td> 

            </tr>


        </table>
           </div> 
   </div>

</asp:Content>


