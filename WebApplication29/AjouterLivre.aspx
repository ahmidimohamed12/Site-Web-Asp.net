<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AjouterLivre.aspx.cs" Inherits="WebApplication29.AjouterLivre" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<center>
    <label  style="margin-top:90px;">Libelle</label><asp:TextBox runat="server"  placeholder="Libelle"  style="width:230px;" ID="txtlb" class="form-control" />
    <br />
    <label>Auteur</label>
    <asp:TextBox runat="server"  ID="txtaut" class="form-control" placeholder="Auteur" style="width:230px;" />
    <br />
    <label>Editeur</label>
    <asp:TextBox runat="server"  ID="txted" placeholder="Editeur" class="form-control"  style="width:230px;" />
    <br />
    <label>Anner</label>
    <asp:TextBox runat="server"  ID="txtanner" placeholder="Anner" class="form-control"  style="width:230px;" />
    <br />
    <asp:Button runat="server" Text="Ajouter" class="btn  btn-primary" ID="btnadd" 
        onclick="btnadd_Click" />
</center>


</asp:Content>
