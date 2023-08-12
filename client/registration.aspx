<%@ Page Title="" Language="C#" MasterPageFile="~/client/clientmaster.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="client_registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <div class="bg-dark rounded" style="text-align:center">
    <div class="col-md-8 order-md-1" style="width: 600px; margin-left: auto; margin-right:auto;">
        <table class="col-md-12 order-md-1">
            <tr>
                <td colspan="2"><h1 class="h3 mb-3 font-weight-normal" style="color: White;">Registration</h1></td>
            <td>

            </td>
            </tr >


            <tr class="mb-3">
                <td >Full Name</td>
            <td>
                <asp:TextBox style="border-radius:0.25rem;" ID="fullname" runat="server" CssClass="form-control"></asp:TextBox>
            </td>

            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ErrorMessage="Enter full name" ControlToValidate="fullname" style="color: #CC0000"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="fullname" ErrorMessage="Enter valid name" style="color: #CC0000" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
            </td>

            </tr>


        <tr class="mb-3">
            <td >Username</td>
            <td >
                <asp:TextBox style="border-radius:0.25rem;" ID="uname" runat="server"  CssClass="form-control"></asp:TextBox>
            </td>
            <td >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"  ErrorMessage="Enter Username" ControlToValidate="uname" style="color: #CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
    
        <tr class="mb-3">
            <td >Password</td>
            <td >
                <asp:TextBox style="border-radius:0.25rem;" ID="pwd" runat="server"  TextMode="Password" CssClass="form-control"></asp:TextBox>
            </td>
            <td >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"  ErrorMessage="Enter password" ControlToValidate="pwd" style="color: #CC0000"></asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr class="mb-3">
            <td >Confirm Password</td>
            <td >
                <asp:TextBox style="border-radius:0.25rem;" ID="cpwd" runat="server"  TextMode="Password" CssClass="form-control"></asp:TextBox>
            </td>
            <td style="width:30%" >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"  ErrorMessage="Enter confirm password" ControlToValidate="cpwd" style="color: #CC0000"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pwd" ControlToValidate="cpwd" ErrorMessage="Password don't match" style="color: #CC0000"></asp:CompareValidator>
            </td>
        </tr>

        <tr class="mb-3">
            <td  >Email</td>
            <td >
                <asp:TextBox style="border-radius:0.25rem;" ID="email" runat="server"  CssClass="form-control"></asp:TextBox>
            </td>
            <td >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"  ErrorMessage="Enter email" ControlToValidate="email" style="color: #CC0000"></asp:RequiredFieldValidator>
                
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="Enter valid email address" style="color: #CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="mb-3">
            <td >Contact</td>
            <td >
                <asp:TextBox style="border-radius:0.25rem;" ID="contact" runat="server"  CssClass="form-control"></asp:TextBox>
            </td>
            <td >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"  ErrorMessage="Enter contact" ControlToValidate="contact" style="color: #CC0000"></asp:RequiredFieldValidator>
                
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="contact" ErrorMessage="Enter valid phone number" style="color: #CC0000" ValidationExpression="^([0-9\(\)\/\+ \-]*)$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="mb-3">
            <td>Age</td>
            <td >
                <asp:TextBox style="border-radius:0.25rem;" ID="age" runat="server"  CssClass="form-control"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"  ErrorMessage="Enter age" ControlToValidate="age" style="color: #CC0000"></asp:RequiredFieldValidator>
                
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="age" ErrorMessage="Must be above 15 to register" MaximumValue="99" MinimumValue="15" style="color: #CC0000" Type="Integer"></asp:RangeValidator>
            </td>
        </tr>
        <tr class="mb-3">
            <td >Gender</td>
            <td >
                <asp:DropDownList ID="genderlist" runat="server" AutoPostBack="true"  CssClass="custom-select d-block w-100 text-muted" style="border:dotted lightgray; font-size:small; padding:0px 0px 0px 100px;">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
             </td>
            <td >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server"  ErrorMessage="Select your gender" ControlToValidate="genderlist" style="color: #CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="mb-3">
            <td >Address</td>
            <td >
                <asp:TextBox style="border-radius:0.25rem;" ID="address" runat="server"  CssClass="form-control"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server"  ErrorMessage="Enter address" ControlToValidate="address" style="color: #CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td >&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server"  Text="OK" OnClick="Button1_Click"  style=" height: 40px; width:260px; background-color:forestgreen;" class="btn btn-md btn-success btn-block" type="submit" />
              <input id="Reset1" type="reset" value="Reset" style=" height: 40px; width:260px; background-color:firebrick;" class="btn btn-md btn-danger btn-block" /></td>
            <td>&nbsp;</td>
        </tr>
        <tr class="mb-3">
            <td style="color:#FF0000">
                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </div>
     </div>
</asp:Content>

