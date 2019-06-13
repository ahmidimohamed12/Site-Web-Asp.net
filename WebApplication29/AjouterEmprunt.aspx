<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AjouterEmprunt.aspx.cs" Inherits="WebApplication29.AjouterEmprunt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<center style="margin-top:90px;">
<asp:SqlDataSource runat="server"  ID="dsp" ConnectionString="data source=.;initial catalog=tri;integrated security=true" SelectCommand="select * from personne"  />
    <label>
    Personne
    </label>
    <asp:DropDownList style="width:240px;"  ID="d1" class="custom-select mr-sm-2"  runat="server" DataSourceID="dsp" DataTextField="nom" DataValueField="numero"  />
    <br />
    <br />
    <asp:SqlDataSource runat="server"  ID="dsl"  ConnectionString="data source=.;initial catalog=tri;integrated security=true" SelectCommand="select * from livre"  />
         <label>
        Livre
    </label>
    <asp:DropDownList style="width:240px;" ID="d2" class="custom-select mr-sm-2" runat="server" DataSourceID="dsl" DataTextField="numeroli"  DataValueField="numeroli"  />
  <br />
  <br />
    <label  > date Emprunt</label><asp:TextBox runat="server"  placeholder=" date Emprunt"  style="width:230px;" ID="txtdtem" class="form-control" />
    <br />
    Date Retour Prevu
    <asp:TextBox runat="server"  ID="txtdtrp" class="form-control" placeholder="Date Retour Prevu" style="width:230px;" />
    <br />
     Date Retour Effuctive
    <asp:TextBox runat="server"  ID="txtdtref" placeholder="Date Retour Effictive" class="form-control"  style="width:230px;" />
    <br />
    
    <asp:Button runat="server" Text="Ajouter" class="btn  btn-primary" ID="btnadd" onclick="btnadd_Click"  
       />
</center>

</asp:Content>
