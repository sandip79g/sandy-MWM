<%@ Page Title="" Language="C#" MasterPageFile="~/client/clientmaster.master" AutoEventWireup="true" CodeFile="fullmenu.aspx.cs" Inherits="client_fullmenu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" GroupItemCount="3"  DataKeyNames="id">
        <AlternatingItemTemplate>
            <td id="Td1" runat="server" width="2500px">
                <div class="card-deck mb-3 text-center">
                    <div class="card mb-4 shadow-sm">
                        <ul>
                        <li>
                            <div class ="card-body"><a href="food_view.aspx?id=<%# Eval("id") %>">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Sandys_Pics/gfc"+Eval("Image") %>' Width="240px" Height="300px" />
                                </div>
                               <div class="card-header">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>' />
                              </div>
                                <div class="card-title pricing-card-title">
                                   Rs<asp:Label ID="Label2" runat="server" Text='<%# Eval("rate") %>' />
                                    </div>
                                </div>
                            </div>
                        </li>
                </div>
            </td>
        </AlternatingItemTemplate>

        <EditItemTemplate>
            <td runat="server" style="">id:
                        <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                <br />
                        image:
                        <asp:TextBox ID="imageTextBox" runat="server" Text='<%# Bind("image") %>' />
                <br />
                name:
                        <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                <br />
                rate:
                        <asp:TextBox ID="rateTextBox" runat="server" Text='<%# Bind("rate") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                <br />
            </td>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <EmptyItemTemplate>
            <td runat="server" />
        </EmptyItemTemplate>
        <GroupTemplate>
            <tr id="itemPlaceholderContainer" runat="server">
                <td id="itemPlaceholder" runat="server"></td>
            </tr>
        </GroupTemplate>
        <InsertItemTemplate>
            <td runat="server" style="">image:
                        <asp:TextBox ID="imageTextBox0" runat="server" Text='<%# Bind("image") %>' />
                <br />
                name:
                        <asp:TextBox ID="nameTextBox0" runat="server" Text='<%# Bind("name") %>' />
                <br />
                rate:
                        <asp:TextBox ID="rateTextBox0" runat="server" Text='<%# Bind("rate") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <br />
                <asp:Button ID="CancelButton0" runat="server" CommandName="Cancel" Text="Clear" />
                <br />
            </td>
        </InsertItemTemplate>

        <ItemTemplate>
            <td id="Td2" runat="server" width="2500px">
                <div class="card-deck mb-3 text-center">
				<div class="card mb-4 shadow-sm">
				<ul>
				    <li>
                        <div class ="card-body"><a href="food_view.aspx?id=<%# Eval("id") %>">
                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# "~/Sandys_Pics/gfc"+Eval("Image") %>'  Width="240px" Height="300px" />
                            </a>
                           <div class="card-header">
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("name") %>' />
                                </div>
				    		<div class="card-title pricing-card-title">
                                Rs<asp:Label ID="Label4" runat="server" Text='<%# Eval("rate") %>' />
                                    </div>
                                </div>			    	
			    	</li></div>
                             </div> </td>

                </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                            <tr id="groupPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style=""></td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <td runat="server">id:
                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                <br />
                image:
                        <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />
                <br />
                name:
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                <br />
                rate:
                        <asp:Label ID="rateLabel" runat="server" Text='<%# Eval("rate") %>' />
                <br />
            </td>
        </SelectedItemTemplate>
    </asp:ListView>
 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MDBConnectionString %>" SelectCommand="SELECT [id], [image], [name], [rate] FROM [foods] "></asp:SqlDataSource>


</asp:Content>

