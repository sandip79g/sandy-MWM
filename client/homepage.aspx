<%@ Page Title="" Language="C#" MasterPageFile="~/client/clientmaster.master" AutoEventWireup="true" CodeFile="homepage.aspx.cs" Inherits="client_homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <!--First List-->
        <marquee  height="40px" style="background-color:#B5651D; color:white; text-align:center; vertical-align: middle; font-size: 30px; border-color:brown">
            <div style="padding-top: 15px;">
                The Generic announces Vacancy for delivery guys!! Please head to contact section and call on the number or sent us a mail.
            </div>
            </marquee>
    
	<div class="jumbotron p-4 p-md-5 text-white rounded"; style="border:none; background-color: white;">
    <div class="col-md-12 px-0">
        <asp:Image runat="server" style="width: auto ;border:none; height:auto" src="../Sandys_Pics/BigBakery.jpg" alt="something logo"/>
				</div>
			</div>

	<asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2" GroupItemCount="4" OnSelectedIndexChanged="ListView1_SelectedIndexChanged" style="box-sizing:content-box" DataKeyNames="id">
                <AlternatingItemTemplate>
                    <td id="Td1" runat="server" width="2500px">
                
          <div class="card-deck mb-3 text-center">
				<div class="card mb-4 shadow-sm">
				<ul>
				    <li>
                         <div class ="card-body" style="background-color:transparent;">
				    	<a href="food_view.aspx?id=<%# Eval("id") %>">  <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Sandys_Pics/gfc"+Eval("Image") %>'  Width="240px" Height="300px" />
                            </div>
                    
				    	<div class="card-header" style="background-color:black; color:white;">
				    		<asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>' />
                            </div>
				    		<div class="card-title pricing-card-title" style="background-color:black; color:white;">
							Rs<asp:Label ID="Label2" runat="server" Text='<%# Eval("rate") %>' />

				    		</div>
			    	</li></div>
                       </td>
                </AlternatingItemTemplate>

                <EditItemTemplate>
                    <td runat="server" style="">id:
                        <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                        <br />
                        image:
                        <asp:TextBox ID="imageTextBox" runat="server" Text='<%# Bind("image") %>' />
                        <br />name:
                        <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                        <br />rate:
                        <asp:TextBox ID="rateTextBox" runat="server" Text='<%# Bind("rate") %>' />
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <br />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        <br />
                        </td>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="">
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
                        <asp:TextBox ID="imageTextBox" runat="server" Text='<%# Bind("image") %>' />
                        <br />name:
                        <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                        <br />rate:
                        <asp:TextBox ID="rateTextBox" runat="server" Text='<%# Bind("rate") %>' />
                        <br />
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <br />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        <br />
                        </td>
                </InsertItemTemplate>
                <ItemTemplate>
                         <td id="Td1" runat="server" width="2500px" >
                         <div class="card-deck mb-3 text-center">
				<div class="card mb-4 shadow-sm" >
				<ul>
				    <li>
                        <div class ="card-body" >
				    	<a href="food_view.aspx?id=<%# Eval("id") %>">  <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Sandys_Pics/gfc"+Eval("Image") %>'  Width="240px" Height="300px" /></div>
                    </a>
				    	<div class="card-header" style="background-color:black; color:white;">
				    		<asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>' />
                            </div>
				    		<div class="card-title pricing-card-title" style="background-color:black; color:white;">
							Rs<asp:Label ID="Label2" runat="server" Text='<%# Eval("rate") %>' />

				    		</div>			    	
			    	</li></div>
                              </td></div>

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
                    <td runat="server" style="">id:
                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        <br />image:
                        <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />
                        <br />name:
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                        <br />rate:
                        <asp:Label ID="rateLabel" runat="server" Text='<%# Eval("rate") %>' />
                        <br />
                    </td>
                </SelectedItemTemplate>



            </asp:ListView>
        
            <!-- Content Slider -->

    <!-- End Content Slider -->
    <!-- Products -->
    <!--Second List-->

			<asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" GroupItemCount="3" OnSelectedIndexChanged="ListView1_SelectedIndexChanged" style="box-sizing:content-box" DataKeyNames="id">
                <AlternatingItemTemplate>
                    <td id="Td1" runat="server" width="2500px">
                
                          <div class="card-deck mb-3 text-center">
				<div class="card mb-4 shadow-sm">
				<ul>
				    <li>
                         <div class ="card-body">
				    	<a href="food_view.aspx?id=<%# Eval("id") %>">  <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Sandys_Pics/gfc"+Eval("Image") %>'  Width="240px" Height="300px" />
                            </div>
                    
				    	<div class="card-header" style="background-color:black; color:white;">
				    		<asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>' />
                            </div>
				    		<div class="card-title pricing-card-title" style="background-color:black; color:white;">
							Rs<asp:Label ID="Label2" runat="server" Text='<%# Eval("rate") %>' />

				    		</div>
			    	</li></div>
                       </td>
                </AlternatingItemTemplate>


                <EditItemTemplate>
                    <td runat="server" style="">id:
                        <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                        <br />
                        image:
                        <asp:TextBox ID="imageTextBox" runat="server" Text='<%# Bind("image") %>' />
                        <br />name:
                        <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                        <br />rate:
                        <asp:TextBox ID="rateTextBox" runat="server" Text='<%# Bind("rate") %>' />
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <br />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        <br />
                        </td>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="">
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
                        <asp:TextBox ID="imageTextBox" runat="server" Text='<%# Bind("image") %>' />
                        <br />name:
                        <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                        <br />rate:
                        <asp:TextBox ID="rateTextBox" runat="server" Text='<%# Bind("rate") %>' />
                        <br />
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <br />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        <br />
                        </td>
                </InsertItemTemplate>
                <ItemTemplate>
                         <td id="Td1" runat="server" width="2500px" >
                         <div class="card-deck mb-3 text-center">
				<div class="card mb-4 shadow-sm">
				<ul>
				    <li>
                        <div class ="card-body">
				    	<a href="food_view.aspx?id=<%# Eval("id") %>">  <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Sandys_Pics/gfc"+Eval("Image") %>'  Width="240px" Height="300px" /></div>
                    </a>
				    	<div class="card-header" style="background-color:black; color:white;">
				    		<asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>' />
                            </div>
				    		<div class="card-title pricing-card-title" style="background-color:black; color:white;">
							Rs<asp:Label ID="Label2" runat="server" Text='<%# Eval("rate") %>' />

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
                    <td runat="server" style="">id:
                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        <br />image:
                        <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />
                        <br />name:
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                        <br />rate:
                        <asp:Label ID="rateLabel" runat="server" Text='<%# Eval("rate") %>' />
                        <br />
                    </td>
                </SelectedItemTemplate>



            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MDBConnectionString %>" SelectCommand="SELECT [id], [image], [name], [rate] FROM [foods] where [id]<1008"></asp:SqlDataSource>
            
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MDBConnectionString %>" SelectCommand="SELECT [id], [image], [name], [rate] FROM [foods] where [id]>1015 AND [id]<1020"></asp:SqlDataSource>
            <br />
            <br />
			<!-- End Products -->
</div>		
</asp:Content>
