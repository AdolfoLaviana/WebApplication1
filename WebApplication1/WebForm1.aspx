<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Prueba Regalo Original</h1>
    Cantidad:    <asp:TextBox ID="cantidadTb" runat="server"/>
    Nombre:    <asp:TextBox ID="nombreTb" runat="server"/>
    
    precioUnitario:    <asp:TextBox ID="precioUTb" runat="server"/>

    <asp:DropDownList id="ShowAssumptions" runat="server">
    </asp:DropDownList>

    <style type="text/css">
    .submit {
        border: 1px solid #563d7c;
        border-radius: 5px;
        color: white;
        padding: 5px 10px 5px 25px;
        background: url(https://i.stack.imgur.com/jDCI4.png) 
            left 3px top 5px no-repeat #563d7c;
    }
</style>
    <asp:Button runat="server" ID="buttonSubmit" Text="Submit" OnClick="buttonSubmit_Click" CssClass="submit" />
    <h2>Lista de Favoritos</h2>
<asp:ListView ID="ProductFavorito" runat="server">
     <LayoutTemplate>
          <table cellpadding="2" width="640px" border="1" ID="tbl1" runat="server">
               <tr runat="server" style="background-color: #98FB98">
                    <th runat="server">Nombre</th>
                    <th runat="server">Cantidad</th>
                    <th runat="server">Precio unitario</th>
               </tr>
               <tr runat="server" id="itemPlaceholder" />
          </table>
          <asp:DataPager ID="DataPager1" runat="server">
               <Fields>
                    <asp:NumericPagerField />
               </Fields>
          </asp:DataPager>
     </LayoutTemplate>
     <ItemTemplate>
          <tr runat="server">
               <td>
                    <asp:Label ID="NombreFavorito" runat="server" Text='<%# Eval("nombreProducto") %>' />
               </td>
               <td>
                    <asp:Label ID="cantidadFavorito" runat="server" Text='<%# Eval("cantidad") %>' />
               </td>
               <td>
                    <asp:Label ID="precioFavorito" runat="server" Text='<%# Eval("precioUnitario") %>' />
               </td>
          </tr>
     </ItemTemplate>
</asp:ListView>
    <h2>Lista de Carrito</h2>
    <asp:ListView ID="ProductCarrito" runat="server">
     <LayoutTemplate>
          <table cellpadding="2" width="640px" border="1" ID="tbl2" runat="server">
               <tr runat="server" style="background-color: #98FB98">
                    <th runat="server">Nombre</th>
                    <th runat="server">Cantidad</th>
                    <th runat="server">Precio unitario</th>
               </tr>
               <tr runat="server" id="itemPlaceholder" />
          </table>
          <asp:DataPager ID="DataPager2" runat="server">
               <Fields>
                    <asp:NumericPagerField />
               </Fields>
          </asp:DataPager>
     </LayoutTemplate>
     <ItemTemplate>
          <tr runat="server">
               <td>
                    <asp:Label ID="NombreCarrito" runat="server" Text='<%# Eval("nombreProducto") %>' />
               </td>
               <td>
                    <asp:Label ID="CantidadCarrito" runat="server" Text='<%# Eval("cantidad") %>' />
               </td>
               <td>
                    <asp:Label ID="PrecioCarrito" runat="server" Text='<%# Eval("precioUnitario") %>' />
               </td>
          </tr>
     </ItemTemplate>
</asp:ListView>
  
</asp:Content>
