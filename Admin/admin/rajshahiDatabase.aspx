<%@ Page Language="C#" AutoEventWireup="true" CodeFile="rajshahiDatabase.aspx.cs" Inherits="admin_rajshahiDatabase" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    
        <asp:Label ID="Label1" runat="server" Text="Rajshahi Division Database" 
             Font-Bold="True" Font-Size="XX-Large" 
            ForeColor="#CC0066"></asp:Label>
    
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
            CellPadding="4" CellSpacing="2" ForeColor="Black" 
            onrowcancelingedit="GridView1_RowCancelingEdit" 
            onrowdeleting="GridView1_RowDeleting" onrowediting="GridView1_RowEditing" 
            onrowupdating="GridView1_RowUpdating" ShowFooter="True" Width="592px" 
            HorizontalAlign="Center" >
            <Columns>
                <asp:TemplateField HeaderText="Id">
                    <EditItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Year">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Height="35px" 
                            Text='<%# Eval("year") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("year") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Productions">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Height="35px" 
                            Text='<%# Eval("production") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("production") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Operations">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Update">Update</asp:LinkButton>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton4" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit">Edit</asp:LinkButton>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Delete">Delete</asp:LinkButton>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    
    </div>
    <br />
    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" 
        ForeColor="#CC0066" style="text-align: center" ></asp:Label>
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Rajshahi]"></asp:SqlDataSource>
    </form>
</body>
</html>
