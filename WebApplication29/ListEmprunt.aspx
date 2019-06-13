<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ListEmprunt.aspx.cs" Inherits="WebApplication29.ListEmprunt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource runat="server"  UpdateCommand="update emprunt set dateretourprevu=@d1,dateretourefficitive=@d2 where dateemp=@dtemp "  DeleteCommand="delete from emprunt where dateemp=@dt"  ID="ds"  ConnectionString="data source=.;initial catalog=tri;integrated security=true"  SelectCommand="select * from emprunt" >
    <UpdateParameters>
        <asp:Parameter Name="d1"  DbType="DateTime" />
        <asp:Parameter Name="d2"  DbType="DateTime" />
        <asp:Parameter Name="dtemp"  DbType="Date" />

    
    </UpdateParameters>
    <DeleteParameters>
        <asp:Parameter Name="dt" DbType="Date" />
    </DeleteParameters>
    </asp:SqlDataSource>
    <center style="margin-top:90px;" >
    <asp:GridView AutoGenerateColumns="False" CssClass="table table-striped" 
            runat="server"  ID="dgv"  
            DataSourceID="ds" BackColor="White" 
            BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" 
            CellSpacing="1" GridLines="None" onrowdeleting="dgv_RowDeleting" 
            onrowupdating="dgv_RowUpdating" >
        <Columns>

            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="personne" HeaderText="Personne" ReadOnly="true"  />
             <asp:BoundField DataField="livre" HeaderText="Livre" ReadOnly="true"  />
              <asp:BoundField DataField="dateemp" HeaderText="Date Emprunt"  />
               <asp:BoundField DataField="dateretourprevu" HeaderText="Date prevu"  />
                  <asp:BoundField DataField="dateretourefficitive" HeaderText="Date Effuctive"  />

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
