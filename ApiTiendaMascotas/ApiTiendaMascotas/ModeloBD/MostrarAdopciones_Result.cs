//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ApiTiendaMascotas.ModeloBD
{
    using System;
    
    public partial class MostrarAdopciones_Result
    {
        public int idAdopcion { get; set; }
        public string cedula { get; set; }
        public int idAnimal { get; set; }
        public System.DateTime fechaAdopcion { get; set; }
        public string nombre { get; set; }
        public string correoElectronico { get; set; }
        public string rol { get; set; }
        public string nombre_animal { get; set; }
        public string descripcion { get; set; }
        public byte[] imagen { get; set; }
        public string tipoAnimal { get; set; }
        public string estadoAdopcion { get; set; }
    }
}
