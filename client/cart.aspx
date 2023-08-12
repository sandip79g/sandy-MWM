<%@ Page Title="" Language="C#" MasterPageFile="~/client/clientmaster.master" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="client_cart" %>

      
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="bg-light rounded">

     
    
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
        
    <asp:Label ID="lblMsg"  runat="server" />

    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" Style="text-align:center;"
        DataKeyNames="id" EmptyDataText="There are no data records to display." DataSourceID="SqlDataSource1" Width="100%" CssClass="table table-striped table-lg" BorderWidth="1px" CellPadding="3" CellSpacing="2" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
        <Columns>
            <asp:TemplateField ShowHeader="False" ControlStyle-ForeColor="Red">
                <EditItemTemplate>
                     </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClientClick="if (!confirm('Are you sure you want delete?')) return false;" CommandName="Delete" Text="Delete"></asp:LinkButton>
                </ItemTemplate>

<ControlStyle ForeColor="Red"></ControlStyle>
            </asp:TemplateField>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                SortExpression="id" />
               
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:TemplateField HeaderText="image">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("image") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="63px" ImageUrl='<%# Eval("image") %>' Width="75px" />
                </ItemTemplate>
            </asp:TemplateField>
             <asp:BoundField DataField="type" HeaderText="type"  ReadOnly="true" SortExpression="type" />
            <asp:BoundField DataField="rate" HeaderText="Rate" ReadOnly="True" 
                SortExpression="rate" />
         <asp:BoundField DataField="Quantity" HeaderText="Quantity" ReadOnly="True" SortExpression="true" />
         <asp:BoundField DataField="total" HeaderText="Total" ReadOnly="True" SortExpression="true" />
        </Columns>
        <PagerStyle HorizontalAlign="Center" />
    </asp:GridView>

    
   <div style="padding-left: 30px;">

   
   <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="Index_Changed" GroupName="status" AutoPostBack="true">
    <asp:ListItem Text="Pay on Delivery" Value="1"></asp:ListItem>
    <asp:ListItem Text="Use via Card" Value="2"></asp:ListItem>
   </asp:RadioButtonList>
       </div>
    <br />

    <div id="div1" runat="server">
        <asp:ScriptManager ID="Scriptmanager1" runat="server"></asp:ScriptManager>
        
        

          <asp:Label runat="server" Visible="false">Your Package will be delivered on your location.</asp:Label> 
       </div>




    <div  id="div2" class=" bg-success rounded text-center" style="text-align:center; width:600px; margin:auto;" runat="server" visible="false">
        <asp:Panel ID="div2panel" runat="server" class="form-signin" style="text-align:left; 
    max-width: 330px;
    padding: 15px;
    margin: auto;">
            
                <h1 class="h3 mb-3 font-weight-normal">Please enter your Card details</h1>
                    
                        <asp:TextBox runat="server" ID="txtCardNo" Placeholder="Enter 10 digit Card number" AutoPostback="true" class="form-control" style="border-radius:0.5rem;" ></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="rvdcardno" ControlToValidate="txtCardNo" ErrorMessage="Please enter full card number" CssClass="text-danger" ForeColor="Red"></asp:RequiredFieldValidator>
                    
                <br />
                        <asp:TextBox runat="server" ID="txtExpiryDate" Placeholder="Please enter your expiry date" AutoPostBack="true" class="form-control" style="border-radius:0.5rem;"></asp:TextBox>
                    
                    <asp:RequiredFieldValidator runat="server" ID="rvdExpiryDate" ControlToValidate="txtExpiryDate" ErrorMessage="Please enter required date" CssClass="text-danger" ForeColor="Red"></asp:RequiredFieldValidator>
                    
                    
                <br />
                        <asp:Textbox runat="server" ID="txtPIN" AutoPostBack="true" Placeholder="Please enter your PIN" class="form-control" style="border-radius:0.5rem;"></asp:Textbox>
                    
                        <asp:RequiredFieldValidator runat="server" ID="rvdPIN" ControlToValidate="txtPIN"  ErrorMessage="Please enter the 4 digits PIN" CssClass="text-danger" ForeColor="Red" ValidationGroup="txtPINgroup"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator runat="server" ID="rngvdtxtPIN" ValidationExpression = "^[\s\S]{4,}$" ControlToValidate="txtPIN" CssClass="text-danger" ForeColor="Red" ValidationGroup="txtPINgroup" ></asp:RegularExpressionValidator>
                    
        </asp:Panel>
       
    </div>

    <br />


    <asp:Button ID="save" runat="server" Text="GET" class="btn btn-sm  btn-success btn-block" BackColor="Lime" OnClick="save_Click"  style="font-size:large ;text-align: center; max-width: 330px;
    padding: 15px;
    margin: auto; border-color:white"/>
    <br />
        <div style="text-align:center; color: forestgreen">

        
    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    </div>

    <a><asp:Button ID="Billdownloader" runat="server" OnClick="billdownloaderClick" visible="false" CssClass="btn btn-block btn-link"/></a>

    <!--Data Source 1 for Cart view-->
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MDBConnectionString %>"
         DeleteCommand="DELETE FROM [cart] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [cart] ([username], [image], [name], [type], [rate], [Quantity], [total]) VALUES (@username, @image, @name, @type, @rate, @Quantity, [total])" 
        SelectCommand="SELECT [id], [username], [image], [name], [type], [rate], [Quantity], [total] FROM [cart] WHERE ([username] = @username and [IsPurchased] = 'false')"
         UpdateCommand="UPDATE [cart] SET [username] = @username, [image] = @image, [name] = @name, [type] = @type, [rate] = @rate, [Quantity] = @Quantity WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>

        <InsertParameters>
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="image" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="type" Type="String" />
            <asp:Parameter Name="rate" Type="String" />
            <asp:Parameter Name="Quantity" Type="String" />
        </InsertParameters>

        <SelectParameters>
            <asp:SessionParameter Name="username" SessionField="username" Type="String" />
        </SelectParameters>

        <UpdateParameters>
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="image" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="type" Type="String" />
            <asp:Parameter Name="rate" Type="String" />
            <asp:Parameter Name="Quantity" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>

    </asp:SqlDataSource>


    <!---Data Source 2 for pdf -->
    <asp:GridView ID="GridView3" runat="server" Width="100%" AllowPaging="True" PagerSettings-Mode="NumericFirstLast"
    AutoGenerateColumns="False" CellPadding="0" PageSize="15" SqlDataSource="SqlDataSource2" CssClass="table-striped table-condensed table table-bordered table-hover"
    OnPageIndexChanging="GridView3_SelectedIndexChanged" EmptyDataText="No Products in your Pos">
        <EmptyDataRowStyle Font-Bold="True" Font-Size="16pt" ForeColor="Red" />
           <RowStyle Wrap="true" />
               <Columns>
             <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />            
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:TemplateField HeaderText="image">
                <EditItemTemplate>
             <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("image") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                     <%# GridView3.PageSize*GridView3.PageIndex+ Container.DisplayIndex+1  %>
                    <asp:Image ID="Image1" runat="server" Height="63px" ImageUrl='<%# Eval("image") %>' Width="75px" />
                </ItemTemplate>
            </asp:TemplateField>
             <asp:BoundField DataField="type" HeaderText="type"  ReadOnly="true" SortExpression="type" />
            <asp:BoundField DataField="rate" HeaderText="Rate" ReadOnly="True" SortExpression="rate" />
         <asp:BoundField DataField="Quantity" HeaderText="Quantity" ReadOnly="True" SortExpression="true" />
         <asp:BoundField DataField="total" HeaderText="Total" ReadOnly="True" SortExpression="true" />
         <asp:BoundField DataField="status" HeaderText="Status" ReadOnly="true" SortExpression="true" />
        </Columns>
        <PagerStyle HorizontalAlign="Center" />
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MDBConnectionString %>"
        SelectCommand="SELECT [id], [username], [image], [name], [type], [rate], [Quantity], [total], [status] FROM [.dbo][sales] WHERE ([username] = @username and [IsPurchased] = 'true')">
        <SelectParameters>
            <asp:Parameter Name="id" Type="Int32" />
            <asp:SessionParameter Name="username" SessionField="username" Type="String" />
            <asp:Parameter Name="image" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="type" Type="String" />
            <asp:Parameter Name="rate" Type="String" />
            <asp:Parameter Name="Quantity" Type="String" />
            <asp:Parameter Name="status" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
       
</div>
</asp:Content>

