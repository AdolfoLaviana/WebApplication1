using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Web;

namespace WebApplication1
{
    public class LogicaNegocio
    {
       public List<Product> lFavorito;
       public List<Product> lCarrito;

        private readonly static LogicaNegocio _instance = new LogicaNegocio();

        private LogicaNegocio()
        {
            this.lFavorito = new List<Product>();
            this.lFavorito.Add(new Product(4, "Platano", 3, true));
            
            this.lCarrito = new List<Product>();
            this.lCarrito.Add(new Product(4, "Manzana", 4, false));
        }

        public static LogicaNegocio Instance
        {
            get
            {
                return _instance;
            }
        }

        public void addProduct(int cantidad,string nombre,double precio,bool favorito)
        {
            Product p = new Product(cantidad, nombre, precio, favorito);
            if (favorito)
            {
                lFavorito.Add(p);
            }
            else
            {
                lCarrito.Add(p);
            }
            
        }

    }
}