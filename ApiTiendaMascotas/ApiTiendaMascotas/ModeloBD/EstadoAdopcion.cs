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
    
    public partial class EstadoAdopcion
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public EstadoAdopcion()
        {
            this.Adopciones = new HashSet<Adopciones>();
        }
    
        public int idEstadoAdopcion { get; set; }
        public string estadoAdopcion1 { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Adopciones> Adopciones { get; set; }
    }
}
