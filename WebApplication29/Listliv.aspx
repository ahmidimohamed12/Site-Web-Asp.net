<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Listliv.aspx.cs" Inherits="WebApplication29.Listliv" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<asp:SqlDataSource runat="server" UpdateCommand="update livre set libelle=@l,auteur=@a,editeur=@ed,anner=@an where numeroli=@li" ID="ds" DeleteCommand="delete from livre where numeroli = @n" ConnectionString="data source=.;initial catalog=tri;integrated security=true" SelectCommand="select * from livre" >
    <DeleteParameters>
        <asp:Parameter Name="n" DbType="Int32" />
    </DeleteParameters>
    <UpdateParameters>
        <asp:Parameter  Name="l" DbType="String" />
        <asp:Parameter Name="a" DbType="String" />
        <asp:Parameter  Name="ed" DbType="String" />
        <asp:Parameter Name="an" DbType="DateTime" />
        <asp:Parameter Name="li" DbType="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<center style="margin-top:90px;">
<asp:GridView  CssClass="table table-striped" runat="server" ID="dgv"  DataSourceID="ds" BackColor="White" 
        BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" 
        GridLines="None" onrowdeleting="Unnamed1_RowDeleting" CellSpacing="1" 
        onrowupdating="dgv_RowUpdating"  >
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
    </Columns>
    <FooterStyle BackColor="#C6C3C6"  Font-Bold="true" ForeColor="Black" />
    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
    <RowStyle BackColor="#DEDFDE"  Font-Bold="true" ForeColor="Black" />
    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#594B9C" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#33276A" />
    </asp:GridView>
    </center>
</asp:Content>
