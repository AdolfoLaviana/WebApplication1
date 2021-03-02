using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1
{
    public class Product
    {
        public int cantidad { get; set; }
        public string nombreProducto { get; set; }
        public double precioUnitario { get; set; }
        public bool favourite { get; set; }

        public Product(int cantidad, string nombreProducto,double precioUnitario, bool favourite)
        {
            this.cantidad = cantidad;
            this.nombreProducto = nombreProducto;
            this.precioUnitario = precioUnitario;
            this.favourite = favourite;
        }

        
    }
}