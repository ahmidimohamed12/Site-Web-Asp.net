<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Auth.aspx.cs" Inherits="WebApplication29.Auth" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  <script src="Animation/anime.min.js" ></script>
  <link href="Animation/animate.css" rel="Stylesheet" />
    <title></title>
    <style>
    .t
    {
     font-weight:bold;
     font-size:25px;
     color:Black;   
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center><div style="background-color:#878787;height:700px;width:500px;">
    <center><div style="margin-top:100px;" >
    <center><label style="font-weight:bold;font-size:30px;" class="animated  infinite  shake"  >Library</label></center>
    <asp:TextBox style="width:240px;margin-top:20px;" placeholder="Email" runat="server" class="form-control"  ID="txtlog" />
    <br />
    <asp:TextBox  runat="server"  style="margin-top:40px;width:240px;" placeholder="Password" class="form-control"  ID="txtpas"  />
    <br />
    <asp:Button  runat="server" Text="Connect" class="btn btn-primary" ID="btnadd" 
            onclick="Unnamed1_Click" />
    </div></center>
</div></center>

    </div>
    </form>
</body>
</html>
