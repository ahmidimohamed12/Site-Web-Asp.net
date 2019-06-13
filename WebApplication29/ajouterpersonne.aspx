<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ajouterpersonne.aspx.cs" Inherits="WebApplication29.ajouterpersonne" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<center>
    <label  style="margin-top:90px;">Nom</label><asp:TextBox runat="server"  placeholder="nom"  style="width:230px;" ID="txtnom" class="form-control" />
    <br />
    Adress
    <asp:TextBox runat="server"  ID="txtprenom" class="form-control" placeholder="prenom" style="width:230px;" />
    <br />
    Telephone
    <asp:TextBox runat="server"  ID="txtad" placeholder="Adress" class="form-control"  style="width:230px;" />
    <br />
    
    <asp:Button runat="server" Text="Ajouter" class="btn  btn-primary" ID="btnadd" onclick="btnadd_Click" 
       />
</center>

</asp:Content>
