﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TiendaMascotas.ModeloBD
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
        public virtual DbSet<DetalleFactura> DetalleFactura { get; set; }
        public virtual DbSet<Factura> Factura { get; set; }
        public virtual DbSet<Productos> Productos { get; set; }
        public virtual DbSet<Roles> Roles { get; set; }
        public virtual DbSet<TipoAnimal> TipoAnimal { get; set; }
        public virtual DbSet<TipoProductos> TipoProductos { get; set; }
        public virtual DbSet<Usuarios> Usuarios { get; set; }
        public virtual DbSet<Bitacoras> Bitacoras { get; set; }
    
        public virtual int Registrar(string nombreCompleto, string cedula, string nombreUsuario, string contrasenna)
        {
            var nombreCompletoParameter = nombreCompleto != null ?
                new ObjectParameter("nombreCompleto", nombreCompleto) :
                new ObjectParameter("nombreCompleto", typeof(string));
    
            var cedulaParameter = cedula != null ?
                new ObjectParameter("cedula", cedula) :
                new ObjectParameter("cedula", typeof(string));
    
            var nombreUsuarioParameter = nombreUsuario != null ?
                new ObjectParameter("nombreUsuario", nombreUsuario) :
                new ObjectParameter("nombreUsuario", typeof(string));
    
            var contrasennaParameter = contrasenna != null ?
                new ObjectParameter("contrasenna", contrasenna) :
                new ObjectParameter("contrasenna", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("Registrar", nombreCompletoParameter, cedulaParameter, nombreUsuarioParameter, contrasennaParameter);
        }
    
        public virtual ObjectResult<ValidarUsuario_Result> ValidarUsuario(string nombreUsuario, string contrasenna)
        {
            var nombreUsuarioParameter = nombreUsuario != null ?
                new ObjectParameter("nombreUsuario", nombreUsuario) :
                new ObjectParameter("nombreUsuario", typeof(string));
    
            var contrasennaParameter = contrasenna != null ?
                new ObjectParameter("contrasenna", contrasenna) :
                new ObjectParameter("contrasenna", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<ValidarUsuario_Result>("ValidarUsuario", nombreUsuarioParameter, contrasennaParameter);
        }
    }
}
