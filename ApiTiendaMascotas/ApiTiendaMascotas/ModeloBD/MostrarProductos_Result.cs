//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ApiTiendaMascotas.ModeloBD
{
    using System;
    
    public partial class MostrarProductos_Result
    {
        public int idProducto { get; set; }
        public string nombre { get; set; }
        public string tipoProducto { get; set; }
        public string descripcion { get; set; }
        public int cantidad { get; set; }
        public decimal precio { get; set; }
        public int descuento { get; set; }
        public byte[] imagen { get; set; }
    }
}
