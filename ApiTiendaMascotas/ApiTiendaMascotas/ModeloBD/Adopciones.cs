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
    using System.Collections.Generic;
    
    public partial class Adopciones
    {
        public int idAdopcion { get; set; }
        public string cedula { get; set; }
        public int idAnimal { get; set; }
        public System.DateTime fechaAdopcion { get; set; }
    
        public virtual Animales Animales { get; set; }
    }
}
