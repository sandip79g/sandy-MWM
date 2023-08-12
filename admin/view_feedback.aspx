<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMaster.master" AutoEventWireup="true" CodeFile="view_feedback.aspx.cs" Inherits="admin_view_feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:DataList ID="DataList1" runat="server" BorderColor="#000000" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyField="id" DataSourceID="SqlDataSource1" AlternatingItemStyle-BackColor="Wheat" BackColor="White" GridLines="Both" Width="1008px">
   
    <ItemTemplate>
      <h1 class="h3 mb-3 font-weight-normal">  id:
        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
          </h1>
        <br />
        <h1 class="h3 mb-3 font-weight-normal">
        username:
        <asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username") %>' />
            </h1>
        <br />
        <h1 class="h3 mb-3 font-weight-normal">
        comment:
        <asp:Label ID="commentLabel" runat="server" Text='<%# Eval("comment") %>' />
            </h1>
        <br />
<br />
    </ItemTemplate>
    <SelectedItemStyle BackColor="gray" Font-Bold="True" ForeColor="White" />
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MDBConnectionString %>" DeleteCommand="DELETE FROM [feedback] WHERE [id] = @id" InsertCommand="INSERT INTO [feedback] ([username], [comment]) VALUES (@username, @comment)" SelectCommand="SELECT * FROM [feedback]" UpdateCommand="UPDATE [feedback] SET [username] = @username, [comment] = @comment WHERE [id] = @id">
    <DeleteParameters>
        
        <asp:Parameter Name="id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="username" Type="String" />
        <asp:Parameter Name="comment" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="username" Type="String" />
        <asp:Parameter Name="comment" Type="String" />
        <asp:Parameter Name="id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>

</asp:Content>

