<%@ Page Title="" Language="C#" MasterPageFile="~/client/clientmaster.master" AutoEventWireup="true" CodeFile="userprofile.aspx.cs" Inherits="client_userprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <style type="text/css">
            .auto-style2 {
            color: #FFFFFF;
            text-align: center;
        }
        .auto-style3 {
            width: 221px;
        }
        .auto-style4 {
            color: #FF0000;
        }
        .auto-style4 {
            height: 22px;
        }
        .auto-style10 {
            width: 100%;
            height: 248px;
            color: #FFFFFF;
        }
        .auto-style6 {
            width: 406px;
            font-size: large;
        }
        .auto-style7 {
            height: 23px;
            text-align: center;
            font-size: large;
        }
        .auto-style8 {
            height: 23px;
        }
        .auto-style9 {
            font-size: large;
        }
    </style>
    <div style="background-color:black">
    
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" style="text-align: center" >
        <AlternatingItemTemplate>
            
            <div class="info">
            <span style=""><table class="auto-style10">
        <tr>
            <td class="auto-style7" style="color:black;" colspan="3"><strong>User Information</strong></td>
        </tr>

        <tr>
            <td></td>
            <td class="auto-style6" style="color:black;">Name:</td>
            <td>&nbsp;<asp:Label style="color:black;" ID="First_nameLabel" runat="server" CssClass="auto-style9" Text='<%# Eval("name") %>' />
                <br class="auto-style9" />
            </td>
            <td class="auto-style9">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">UserName:</td>
            <td>&nbsp;<asp:Label ID="Last_nameLabel" runat="server" CssClass="auto-style9" Text='<%# Eval("username") %>' />
                <br class="auto-style9" />
            </td>
            <td class="auto-style9">&nbsp;</td>
        </tr>
                <tr>
            <td class="auto-style6">UserName:</td>
            <td>&nbsp;<asp:Label ID="Label" runat="server" CssClass="auto-style9" Text='<%# Eval("username") %>' />
                <br class="auto-style9" />
            </td>
            <td class="auto-style9">&nbsp;</td>
        </tr>
      
        <tr>
            <td class="auto-style6">Email:</td>
            <td>
                <asp:Label ID="GenderLabel" runat="server" CssClass="auto-style9" Text='<%# Eval("email") %>' />
                <br class="auto-style9" />
            </td>
            <td class="auto-style9">&nbsp;</td>
        </tr>


        <tr>
            <td class="auto-style6">Contact: </td>
            <td>
                <asp:Label ID="EmailLabel" runat="server" CssClass="auto-style9" Text='<%# Eval("contact") %>' />
                <br class="auto-style9" />
                <span class="auto-style9">&nbsp;</span></td>
            <td class="auto-style9">&nbsp;</td>
        </tr>
        <tr>

       <tr>
            <td class="auto-style6" style="text-align:left;">Age: </td>
            <td>
                <asp:Label ID="AddressLabel" runat="server" CssClass="auto-style9" Text='<%# Eval("age") %>' />
                <br class="auto-style9" />
                <span class="auto-style9">&nbsp;</span></td>
            <td class="auto-style9">&nbsp;</td>
        </tr>
        
        <tr>
            <td class="auto-style6">Gender:</td>
            <td>
                <asp:Label ID="PhoneLabel" runat="server" CssClass="auto-style9" Text='<%# Eval("gender") %>' />
                <br class="auto-style9" />
                <span class="auto-style9">&nbsp;</span></td>
            <td class="auto-style9">&nbsp;</td>
        </tr>

        <tr>
            <td class="auto-style6">Address</td>
            <td>
                <asp:Label ID="DOBLabel" runat="server" CssClass="auto-style9" Text='<%# Eval("address") %>' />
            </td>
            <td class="auto-style9">&nbsp;</td>
        </tr>
                 <tr>
                     <td colspan="3">
                         <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />

                     </td>
                 </tr>
    </table><br />
            <br />
            </span>
                </div>
        </AlternatingItemTemplate>
        <EditItemTemplate>
     <span style=""> <div class="info"> <table class="auto-style10">
        <tr>
            <td class="auto-style2" colspan="3">Edit Table</td>
        </tr>
        <tr>
            <td class="auto-style2">Name</td>
            <td>
                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
            </td>
           
        </tr>
        <tr>
            <td class="auto-style2">Username: </td>
            <td>
                <asp:TextBox ID="usernameTextBox" runat="server" Text='<%# Bind("username") %>' />
            </td>
           
        </tr>
        <tr>
            <td class="auto-style2">Email: </td>
            <td>
                <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
            </td>
           
        </tr>
        <tr>
            <td class="auto-style2">Contact: </td>
            <td>
                <asp:TextBox ID="contactTextBox" runat="server" Text='<%# Bind("contact") %>' />
            </td>
           
        </tr>
        <tr>
            <td class="auto-style2">Age: </td>
            <td>
                <asp:TextBox ID="ageTextBox" runat="server" Text='<%# Bind("age") %>' />
            </td>
           
        </tr>
        <tr>
            <td class="auto-style2">Gender:</td>
            <td>
                <asp:DropDownList ID="genderTextBox"  runat="server" Text='<%# Bind("gender") %>' Height="25px" Width="140px">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
                
            </td>
           
        </tr>
        <tr>
            <td class="auto-style2">Address: </td>
            <td>
                <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
            </td>
            
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Height="26px" Text="Update" Width="62px" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
    </table></div>
            </span>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <span style="">name:
            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
            <br />
            username:
            <asp:TextBox ID="usernameTextBox" runat="server" Text='<%# Bind("username") %>' />
            <br />
            password:
            <asp:TextBox ID="passwordTextBox" runat="server" Text='<%# Bind("password") %>' />
            <br />
            email:
            <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
            <br />
            contact:
            <asp:TextBox ID="contactTextBox" runat="server" Text='<%# Bind("contact") %>' />
            <br />
            age:
            <asp:TextBox ID="ageTextBox" runat="server" Text='<%# Bind("age") %>' />
            <br />
            gender:
            <asp:TextBox ID="genderTextBox" runat="server" Text='<%# Bind("gender") %>' />
            <br />
            address:
            <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            <br />
            <br />
            </span>
        </InsertItemTemplate>
        <ItemTemplate>
            <div class="info">
            <span style=""><table class="auto-style10">
        <tr>
            <td class="auto-style7" colspan="3"><strong>User Information</strong></td>
        </tr>
        <tr>
            <td class="auto-style6">Name:</td>
            <td>&nbsp;<asp:Label ID="First_nameLabel" runat="server" CssClass="auto-style9" Text='<%# Eval("name") %>' />
                <br class="auto-style9" />
            </td>
            <td class="auto-style9">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">UserName:</td>
            <td>&nbsp;<asp:Label ID="Last_nameLabel" runat="server" CssClass="auto-style9" Text='<%# Eval("username") %>' />
                <br class="auto-style9" />
            </td>
            <td class="auto-style9">&nbsp;</td>
        </tr>
      
        <tr>
            <td class="auto-style6">Email:</td>
            <td>
                <asp:Label ID="GenderLabel" runat="server" CssClass="auto-style9" Text='<%# Eval("email") %>' />
                <br class="auto-style9" />
            </td>
            <td class="auto-style9">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">Contact: </td>
            <td>
                <asp:Label ID="EmailLabel" runat="server" CssClass="auto-style9" Text='<%# Eval("contact") %>' />
                <br class="auto-style9" />
                <span class="auto-style9">&nbsp;</span></td>
            <td class="auto-style9">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">Age:</td>
            <td class="auto-style8">
                <asp:Label ID="AddressLabel" runat="server" CssClass="auto-style9" Text='<%# Eval("age") %>' />
                <br class="auto-style9" />
                <span class="auto-style9">&nbsp;</span></td>
            <td class="auto-style8"></td>
        </tr>
        <tr>
            <td class="auto-style6">Gender:</td>
            <td>
                <asp:Label ID="PhoneLabel" runat="server" CssClass="auto-style9" Text='<%# Eval("gender") %>' />
                <br class="auto-style9" />
                <span class="auto-style9">&nbsp;</span></td>
            <td class="auto-style9">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">Address</td>
            <td>
                <asp:Label ID="DOBLabel" runat="server" CssClass="auto-style9" Text='<%# Eval("address") %>' />
            </td>
            <td class="auto-style9">&nbsp;</td>
        </tr>
                 <tr>
                     <td colspan="3">            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" /></td>
                 </tr>
    </table><br />
            <br />
            </span>
                </div>
        </ItemTemplate>
        <LayoutTemplate>
            <div id="itemPlaceholderContainer" runat="server" style="">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="">
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <span style="">Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            name:
            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
            <br />
            username:
            <asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username") %>' />
            <br />
            password:
            <asp:Label ID="passwordLabel" runat="server" Text='<%# Eval("password") %>' />
            <br />
            email:
            <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
            <br />
            contact:
            <asp:Label ID="contactLabel" runat="server" Text='<%# Eval("contact") %>' />
            <br />
            age:
            <asp:Label ID="ageLabel" runat="server" Text='<%# Eval("age") %>' />
            <br />
            gender:
            <asp:Label ID="genderLabel" runat="server" Text='<%# Eval("gender") %>' />
            <br />
            address:
            <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
            <br />
            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            <br />
            <br />
            </span>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MDBConnectionString %>" DeleteCommand="DELETE FROM [customer] WHERE [id] = @id" InsertCommand="INSERT INTO [customer] ([name], [username], [password], [email], [contact], [age], [gender], [address]) VALUES (@name, @username, @password, @email, @contact, @age, @gender, @address)" SelectCommand="SELECT [id], [name], [username],  [email], [contact], [age], [gender], [address] FROM [customer] WHERE ([username] = @username)" UpdateCommand="UPDATE [customer] SET [name] = @name, [username] = @username, [email] = @email, [contact] = @contact, [age] = @age, [gender] = @gender, [address] = @address WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="contact" Type="String" />
            <asp:Parameter Name="age" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="address" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="username" SessionField="username" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="contact" Type="String" />
            <asp:Parameter Name="age" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
        </div>
</asp:Content>

