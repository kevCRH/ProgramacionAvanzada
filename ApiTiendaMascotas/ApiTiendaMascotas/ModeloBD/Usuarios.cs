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
    
    public partial class Usuarios
    {
        public int idUsuario { get; set; }
        public string correoElectronico { get; set; }
        public string cedula { get; set; }
        public string contrasenna { get; set; }
        public bool estado { get; set; }
        public string idRol { get; set; }
    
        public virtual Roles Roles { get; set; }
    }
}
