<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMaster.master" AutoEventWireup="true" CodeFile="add_foods.aspx.cs" Inherits="admin_add_food" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div style="text-align:center">
    <div class="col-md-8 order-md-1" style="width: 600px; margin-left: auto; margin-right:auto;">
        <table>
            <tr class="mb-3">
                <td colspan="2"><h1 class="h3 mb-3 font-weight-normal" style="color:white">Add Foods</h1></td>
            <td></td>
        </tr>

        <tr class="mb-3">
            <td >Name</td>
            <td >
                <asp:TextBox ID="food_name" runat="server" style="border-radius:0.25rem;" CssClass="form-control"></asp:TextBox>
            </td>
            <td style="height: 35px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="food_name" ErrorMessage="Enter a Name" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="food_name" ErrorMessage="Enter valid name" style="color: #FF0000" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="mb-3">
            <td >Type</span></b></td>
            <td>
                <asp:DropDownList ID="food_type" runat="server" AutoPostBack="true"  CssClass="custom-select d-block w-100 text-muted" style="border:dotted lightgray; font-size:small; padding:0px 0px 0px 100px;">
                 <asp:ListItem>Select Menu</asp:ListItem>
				 <asp:ListItem>Burgers</asp:ListItem>
                 <asp:ListItem>Pizzas</asp:ListItem>
                 <asp:ListItem>MoMo</asp:ListItem>
                 <asp:ListItem>Pastas</asp:ListItem>
                 <asp:ListItem>Drinks</asp:ListItem>
                </asp:DropDownList>
                </span></b></td>
            <td style="height: 35px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="food_type" ErrorMessage="Select a type of food" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="mb-3">
            <td>Rate</td>
            <td>
                <asp:TextBox style="border-radius:0.25rem;" CssClass="form-control" ID="food_rate" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="food_rate" ErrorMessage="Enter rate" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="food_rate" ErrorMessage="Enter valid rate" style="color: #FF0000" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="mb-3">
            <td >Image</td>
            <td>
                <asp:FileUpload Text="Select Image" CssClass="btn btn-primary btn-block btn-upload" BorderStyle="Dotted" Border-radius="0.25rem;"  ID="food_image" runat="server" />
            </td>
            <td>
                </td>
            <br />
        </tr>
        <tr class="mb-3">
            <td>Description</td>
            <td >
                <asp:TextBox ID="food_desc" runat="server" Height="120px" TextMode="MultiLine" style="border-radius:0.25rem;" CssClass="form-control"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="food_desc" ErrorMessage="Enter a description" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="mb-3">
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr class="mb-3" >
            <td>&nbsp;</td>
            <td style=" color: #FF0000; text-align:center; align-content:flex-start ">
                <asp:Button ID="submitbtn" runat="server" Text="Submit" width="332px" OnClick="submitbtn_Click" CssClass="btn btn-sm btn-success btn-block" backcolor="forestgreen" type="submit"/>
                <input id="Reset1" style="background-color:firebrick; align-content:flex-end"" type="reset" value="Reset" class="btn btn-sm btn-danger btn-block" /><br />
                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
         </div>
        </div>
</asp:Content>

