<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication29.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center style="margin-top:90px;">
    <asp:SqlDataSource UpdateCommand="update personne set nom=@n,addres=@ad,telephone=@tel where numero=@nu" runat="server" ID="ds" DeleteCommand="delete from personne where numero=@n"  ConnectionString="data source=.;initial catalog=tri;integrated security=true" SelectCommand="select * from personne"  >
    <DeleteParameters>
        <asp:Parameter name="n"  DbType="Int32" />
    </DeleteParameters>
    <UpdateParameters>
        <asp:Parameter Name="n" DbType="String" />
         <asp:Parameter Name="ad" DbType="String" />
          <asp:Parameter Name="tel" DbType="String" />
           <asp:Parameter Name="nu" DbType="Int32" />
    </UpdateParameters>
    </asp:SqlDataSource>   
    <asp:GridView CssClass="table table-striped" runat="server"  DataSourceID="ds" BackColor="White" 
            BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" 
            CellSpacing="1" GridLines="None" ID="dgv" 
            onrowdeleting="Unnamed1_RowDeleting" onrowupdating="dgv_RowUpdating" >
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
        <FooterStyle Font-Bold="true" BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle  BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle Font-Bold="true" BackColor="#DEDFDE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#594B9C" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
</center>

</asp:Content>
