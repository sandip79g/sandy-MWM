<%@ Page Title="" Language="C#" MasterPageFile="~/client/clientmaster.master" AutoEventWireup="true" CodeFile="Drinks.aspx.cs" Inherits="client_drinks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" GroupItemCount="3">
            <AlternatingItemTemplate>
                <td id="Td1" runat="server" width="2500px">
                        <div class="card-deck mb-3 text-center">
                    <div class="card mb-4 shadow-sm">
                        <ul>
                        <li>
                            <div class="card-body">
				    	<a href="food_view.aspx?id=<%# Eval("Id") %>">  <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Sandys_Pics/gfc"+Eval("Image") %>'  Width="240px" Height="300px" />
                            </div>
                    <div class ="card-header"><asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>' /></div>
				    		<div class="card-title pricing-card-title">
                                Rs<asp:Label ID="Label2" runat="server" Text='<%# Eval("Rate") %>' /></strong>
				    		  </div>
                                </div>
                            </div>
                        </li>
                </div>
            </td>
            </AlternatingItemTemplate>


            <EditItemTemplate>
                <td id="Td2" runat="server" style="">Image:
                    <asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
                    <br />Name:
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    <br />Rate:
                    <asp:TextBox ID="RateTextBox" runat="server" Text='<%# Bind("Rate") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    <br /></td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table id="Table1" runat="server" style="">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
<td id="Td3" runat="server" />
            </EmptyItemTemplate>
            <GroupTemplate>
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </GroupTemplate>
            <InsertItemTemplate>
                <td id="Td4" runat="server" style="">Image:
                    <asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
                    <br />Name:
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    <br />Rate:
                    <asp:TextBox ID="RateTextBox" runat="server" Text='<%# Bind("Rate") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    <br /></td>
            </InsertItemTemplate>


            <ItemTemplate>
                <td id="Td2" runat="server" width="2500px">
                        <div class="card-deck mb-3 text-center">
                    <div class="card mb-4 shadow-sm">
                        <ul>
                        <li>
                            <div class ="card-body"><a href="food_view.aspx?id=<%# Eval("id") %>">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Sandys_Pics/gfc"+Eval("Image") %>'  Width="240px" Height="300px" />
                                </div>
                               <div class="card-header">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>' />
                              </div>
                                <div class="card-title pricing-card-title">
                                   Rs<asp:Label ID="Label2" runat="server" Text='<%# Eval("Rate") %>' />
                                    </div>
                                </div>
                            </div>
                        </li>
                </div>
            </td>
            </ItemTemplate>


            <LayoutTemplate>
                <table id="Table2" runat="server">
                    <tr id="Tr1" runat="server">
                        <td id="Td5" runat="server">
                            <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                                <tr id="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr id="Tr2" runat="server">
                        <td id="Td6" runat="server" style=""></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td id="Td7" runat="server" style="">Image:
                    <asp:Label ID="ImageLabel" runat="server" Text='<%# Eval("Image") %>' />
                    <br />Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />Rate:
                    <asp:Label ID="RateLabel" runat="server" Text='<%# Eval("Rate") %>' />
                    <br /></td>
            </SelectedItemTemplate>
        </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MDBConnectionString%>" SelectCommand="SELECT [id], [image], [name], [rate], [type] FROM [foods] where [Type]='Drinks'"></asp:SqlDataSource>

      

</asp:Content>

