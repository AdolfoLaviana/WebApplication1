using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            ProductFavorito.DataSource = LogicaNegocio.Instance.lFavorito.ToList();
            ProductFavorito.DataBind();

            ProductCarrito.DataSource = LogicaNegocio.Instance.lCarrito.ToList();
            ProductCarrito.DataBind();
            if (!Page.IsPostBack)
            {
                List<string> list = new List<string>()
         {
            "favorito",
            "carrito"
         };
                ShowAssumptions.DataSource = list;
                ShowAssumptions.DataBind();
            }
        }

      protected void buttonSubmit_Click(Object sender, EventArgs e)
        {
            bool favorito = ShowAssumptions.SelectedValue == "favorito" ?  true : false;
           LogicaNegocio.Instance.addProduct(int.Parse(cantidadTb.Text), nombreTb.Text,double.Parse(precioUTb.Text), favorito);

            ProductFavorito.DataSource = LogicaNegocio.Instance.lFavorito.ToList();
            ProductFavorito.DataBind();
            ProductCarrito.DataSource = LogicaNegocio.Instance.lCarrito.ToList();
            ProductCarrito.DataBind();
        }


    }
}