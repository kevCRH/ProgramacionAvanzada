﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class ProyectoPAEntities : DbContext
    {
        public ProyectoPAEntities()
            : base("name=ProyectoPAEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Adopciones> Adopciones { get; set; }
        public virtual DbSet<Animales> Animales { get; set; }
        public virtual DbSet<Bitacoras> Bitacoras { get; set; }
        public virtual DbSet<DetalleFactura> DetalleFactura { get; set; }
        public virtual DbSet<EstadoAdopcion> EstadoAdopcion { get; set; }
        public virtual DbSet<Factura> Factura { get; set; }
        public virtual DbSet<Productos> Productos { get; set; }
        public virtual DbSet<Roles> Roles { get; set; }
        public virtual DbSet<TipoAnimal> TipoAnimal { get; set; }
        public virtual DbSet<Usuarios> Usuarios { get; set; }
    
        public virtual int CambiarEstadoAdopcion(Nullable<int> idAdopcion, Nullable<int> id)
        {
            var idAdopcionParameter = idAdopcion.HasValue ?
                new ObjectParameter("idAdopcion", idAdopcion) :
                new ObjectParameter("idAdopcion", typeof(int));
    
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("CambiarEstadoAdopcion", idAdopcionParameter, idParameter);
        }
    
        public virtual ObjectResult<MostrarAdopciones_Result> MostrarAdopciones()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<MostrarAdopciones_Result>("MostrarAdopciones");
        }
    
        public virtual ObjectResult<MostrarAnimales_Result> MostrarAnimales()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<MostrarAnimales_Result>("MostrarAnimales");
        }
    
        public virtual ObjectResult<MostrarProductos_Result> MostrarProductos()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<MostrarProductos_Result>("MostrarProductos");
        }
    
        public virtual int Registrar(string cedula, string nombre, string correoElectronico, string contrasenna)
        {
            var cedulaParameter = cedula != null ?
                new ObjectParameter("cedula", cedula) :
                new ObjectParameter("cedula", typeof(string));
    
            var nombreParameter = nombre != null ?
                new ObjectParameter("nombre", nombre) :
                new ObjectParameter("nombre", typeof(string));
    
            var correoElectronicoParameter = correoElectronico != null ?
                new ObjectParameter("correoElectronico", correoElectronico) :
                new ObjectParameter("correoElectronico", typeof(string));
    
            var contrasennaParameter = contrasenna != null ?
                new ObjectParameter("contrasenna", contrasenna) :
                new ObjectParameter("contrasenna", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("Registrar", cedulaParameter, nombreParameter, correoElectronicoParameter, contrasennaParameter);
        }
    
        public virtual int RegistrarAdopcion(Nullable<int> idAnimal, string cedula, Nullable<System.DateTime> fechaAdopcion, Nullable<int> estadoAdopcion)
        {
            var idAnimalParameter = idAnimal.HasValue ?
                new ObjectParameter("idAnimal", idAnimal) :
                new ObjectParameter("idAnimal", typeof(int));
    
            var cedulaParameter = cedula != null ?
                new ObjectParameter("cedula", cedula) :
                new ObjectParameter("cedula", typeof(string));
    
            var fechaAdopcionParameter = fechaAdopcion.HasValue ?
                new ObjectParameter("fechaAdopcion", fechaAdopcion) :
                new ObjectParameter("fechaAdopcion", typeof(System.DateTime));
    
            var estadoAdopcionParameter = estadoAdopcion.HasValue ?
                new ObjectParameter("estadoAdopcion", estadoAdopcion) :
                new ObjectParameter("estadoAdopcion", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("RegistrarAdopcion", idAnimalParameter, cedulaParameter, fechaAdopcionParameter, estadoAdopcionParameter);
        }
    
        public virtual int RegistrarAnimal(string idTipoAnimal, string nombre, string descripcion)
        {
            var idTipoAnimalParameter = idTipoAnimal != null ?
                new ObjectParameter("idTipoAnimal", idTipoAnimal) :
                new ObjectParameter("idTipoAnimal", typeof(string));
    
            var nombreParameter = nombre != null ?
                new ObjectParameter("nombre", nombre) :
                new ObjectParameter("nombre", typeof(string));
    
            var descripcionParameter = descripcion != null ?
                new ObjectParameter("descripcion", descripcion) :
                new ObjectParameter("descripcion", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("RegistrarAnimal", idTipoAnimalParameter, nombreParameter, descripcionParameter);
        }
    
        public virtual int RegistrarProducto(string nombre, string descripcion, Nullable<int> cantidad, Nullable<decimal> precio, Nullable<int> descuento, byte[] imagen)
        {
            var nombreParameter = nombre != null ?
                new ObjectParameter("nombre", nombre) :
                new ObjectParameter("nombre", typeof(string));
    
            var descripcionParameter = descripcion != null ?
                new ObjectParameter("descripcion", descripcion) :
                new ObjectParameter("descripcion", typeof(string));
    
            var cantidadParameter = cantidad.HasValue ?
                new ObjectParameter("cantidad", cantidad) :
                new ObjectParameter("cantidad", typeof(int));
    
            var precioParameter = precio.HasValue ?
                new ObjectParameter("precio", precio) :
                new ObjectParameter("precio", typeof(decimal));
    
            var descuentoParameter = descuento.HasValue ?
                new ObjectParameter("descuento", descuento) :
                new ObjectParameter("descuento", typeof(int));
    
            var imagenParameter = imagen != null ?
                new ObjectParameter("imagen", imagen) :
                new ObjectParameter("imagen", typeof(byte[]));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("RegistrarProducto", nombreParameter, descripcionParameter, cantidadParameter, precioParameter, descuentoParameter, imagenParameter);
        }
    
        public virtual ObjectResult<ValidarUsuario_Result> ValidarUsuario(string correoElectronico, string contrasenna)
        {
            var correoElectronicoParameter = correoElectronico != null ?
                new ObjectParameter("correoElectronico", correoElectronico) :
                new ObjectParameter("correoElectronico", typeof(string));
    
            var contrasennaParameter = contrasenna != null ?
                new ObjectParameter("contrasenna", contrasenna) :
                new ObjectParameter("contrasenna", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<ValidarUsuario_Result>("ValidarUsuario", correoElectronicoParameter, contrasennaParameter);
        }
    }
}
