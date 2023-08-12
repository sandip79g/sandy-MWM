<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMaster.master" AutoEventWireup="true" CodeFile="View_sales.aspx.cs" Inherits="admin_View_sales" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="table-responsive">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-sm" CellPadding="3" CellSpacing="2" DataKeyNames="id" DataSourceID="sqlsales" border="1px" height="100%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="white" AlternatingRowStyle-BackColor="Wheat">
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClientClick="if (!confirm('Are you sure you want delete?')) return false;" CommandName="Delete" Text="Delete"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" InsertVisible="False" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
            <asp:BoundField DataField="rate" HeaderText="rate" SortExpression="rate" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
            <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status"/>
        </Columns>
        
    </asp:GridView>
        </div>

    <asp:SqlDataSource ID="sqlsales" runat="server" ConnectionString="<%$ ConnectionStrings:MDBConnectionString %>" SelectCommand="SELECT * FROM [sales]" DeleteCommand="DELETE FROM [sales] WHERE [id] = @id" InsertCommand="INSERT INTO [sales] ([name], [username], [rate], [Quantity]) VALUES (@name, @username, @rate, @Quantity)" UpdateCommand="UPDATE [sales] SET [name] = @name, [username] = @username, [rate] = @rate, [Quantity] = @Quantity WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="rate" Type="String" />
            <asp:Parameter Name="Quantity" Type="String" />

        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="rate" Type="String" />
            <asp:Parameter Name="Quantity" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

