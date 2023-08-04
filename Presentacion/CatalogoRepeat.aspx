<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPablo.Master" AutoEventWireup="true" CodeBehind="CatalogoRepeat.aspx.cs" Inherits="Presentacion.CatalogoRepeat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row row-cols-1 row-cols-md-3 g-4">
       
        <asp:Repeater ID="RepRepetidor" runat="server">
            <ItemTemplate>
                    <div class="col">
                        <div class="card h-100">
                            <img src="<%#Eval("imagen") %>" class="logos" alt="Sin Foto">
                            <div class="card-body">
                                 <h5 class="titulo" ><%#Eval("nombre") %></h5>
                                 <p class="card-text"><%#Eval("descripcion") %></p>
                                 <a href="DetalleArticulo.aspx?id=<%#Eval("id") %>" class="btn btn-primary btn-sm botones">Ver Detalle</a>
                                 <asp:Button ID="btnEjemplo" CssClass="btn btn-primary" runat="server" Text="Prueba" OnClick="btnEjemplo_Click" CommandArgument='<%#Eval("Id") %>' CommandName="ArticuloID" />
                            </div>
                        </div>
                    </div>
            </ItemTemplate>
        </asp:Repeater>
</div>
</asp:Content>
