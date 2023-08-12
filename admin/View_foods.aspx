<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMaster.master" AutoEventWireup="true" CodeFile="view_foods.aspx.cs" Inherits="admin_view_foods" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="table-responsive">
 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="sqlrestro1" Height="506px" CssClass="table table-striped table-sm" AlternatingRowStyle-BackColor="White" BackColor="Wheat" EditRowStyle-BackColor="White" CellPadding="3" CellSpacing="2">
        <AlternatingRowStyle />
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" InsertVisible="False" ReadOnly="True" />
            <asp:TemplateField HeaderText="Name" SortExpression="Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Type" SortExpression="Type">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("type") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("type") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Rate" SortExpression="Rate">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("rate") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("rate") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Image" SortExpression="Image">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Width="100px" Text='<%# Bind("image") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Sandys_Pics/gfc"+ Eval("image") %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Descrirtion" SortExpression="Descrirtion">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("description") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("description") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Action" ShowHeader="False">
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="
                        " Text="Update"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete"  OnClientClick="return confirm('Are yor sure you yant to delete this Food?')" Text="Delete"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        
        <EditRowStyle/>
        
        <EmptyDataRowStyle  />
        
        
        
    </asp:GridView>
        </div>
    
     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MDBConnectionString%>" DeleteCommand="DELETE FROM [foods] WHERE [id] = @id" InsertCommand="INSERT INTO [foods] ([name], [type], [rate], [image], [description]) VALUES (@name, @type, @rate, @image, @description)" SelectCommand="SELECT * FROM [foods]" UpdateCommand="UPDATE [foods] SET [name] = @name, [type] = @type, [rate] = @rate, [image] = @image, [description] = @description WHERE [id] = @id">
         <DeleteParameters>
             <asp:Parameter Name="id" Type="Int32" />
         </DeleteParameters>
         <InsertParameters>
             <asp:Parameter Name="name" Type="String" />
             <asp:Parameter Name="type" Type="String" />
             <asp:Parameter Name="rate" Type="String" />
             <asp:Parameter Name="image" Type="String" />
             <asp:Parameter Name="description" Type="String" />
         </InsertParameters>
         <UpdateParameters>
             <asp:Parameter Name="name" Type="String" />
             <asp:Parameter Name="type" Type="String" />
             <asp:Parameter Name="rate" Type="String" />
             <asp:Parameter Name="image" Type="String" />
             <asp:Parameter Name="description" Type="String" />
             <asp:Parameter Name="id" Type="Int32" />
         </UpdateParameters>
     </asp:SqlDataSource>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MDBConnectionString %>" SelectCommand="SELECT * FROM [foods]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="sqlrestro1" runat="server" ConnectionString="<%$ ConnectionStrings:MDBConnectionString %>" DeleteCommand="DELETE FROM [foods] WHERE [id] = @id" InsertCommand="INSERT INTO [foods] ([name], [type], [rate], [image], [description]) VALUES (@name, @type, @rate, @image, @description)" SelectCommand="SELECT * FROM [foods]" UpdateCommand="UPDATE [foods] SET [name] = @name, [type] = @type, [rate] = @rate, [image] = @image, [description] = @description WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="type" Type="String" />
            <asp:Parameter Name="rate" Type="String" />
            <asp:Parameter Name="image" Type="String" />
            <asp:Parameter Name="description" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="type" Type="String" />
            <asp:Parameter Name="rate" Type="String" />
            <asp:Parameter Name="image" Type="String" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
  
</asp:Content>

