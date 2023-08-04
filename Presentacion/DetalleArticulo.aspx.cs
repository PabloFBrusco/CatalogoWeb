using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocio;

namespace Presentacion
{
    public partial class DetalleArticulo : System.Web.UI.Page
    {
        List<Articulo> ListaArticulos = new List<Articulo>();
        protected void Page_Load(object sender, EventArgs e)
        {
            int elegido = int.Parse(Request.QueryString["Id"].ToString());
            ArticuloNegocio negocio = new ArticuloNegocio();
            ListaArticulos = negocio.listar_sp();
            Articulo seleccionado = ListaArticulos.Find(x => x.id == elegido);
            imgFoto.ImageUrl = seleccionado.imagen.ToString();
            lblCategoria.Text = "Categoría: " + seleccionado.categoria.ToString();
            lblMarca.Text = "Marca: " + seleccionado.marca.ToString();
            lblCodigo.Text = "Código: " + seleccionado.codigo;
            LblTitulo.Text = seleccionado.nombre;
            LblDescripcion.Text = "Descripción: " + seleccionado.descripcion;
            lblPrecio.Text = "Precio: "+ seleccionado.precio.ToString("C");


        }
    }
}