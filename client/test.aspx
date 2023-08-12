<%@ Page Title="" Language="C#" MasterPageFile="~/client/clientmaster.master" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="client_test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" Height="364px" Width="737px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="rate" HeaderText="rate" SortExpression="rate" />
            <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
            <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
<asp:BoundField DataField="id" HeaderText="id" SortExpression="id" InsertVisible="False" ReadOnly="True"></asp:BoundField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MDBConnectionString%>" DeleteCommand="DELETE FROM [cart] WHERE [id] = @id" InsertCommand="INSERT INTO [cart] ([image], [name], [rate], [quantity], [type]) VALUES (@image, @name, @rate, @quantity, @type)" SelectCommand="SELECT [image], [name], [rate], [quantity], [type], [id] FROM [cart]" UpdateCommand="UPDATE [cart] SET [image] = @image, [name] = @name, [rate] = @rate, [quantity] = @quantity, [type] = @type WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="image" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="rate" Type="String" />
            <asp:Parameter Name="quantity" Type="String" />
            <asp:Parameter Name="type" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="image" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="rate" Type="String" />
            <asp:Parameter Name="quantity" Type="String" />
            <asp:Parameter Name="type" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>


