﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace STO_Koleso
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class DataBaseEntities : DbContext
    {
        private static DataBaseEntities _context;

        public static DataBaseEntities GetContext()
        {
            if (_context == null)
                _context = new DataBaseEntities();
            return _context;
        }

        public DataBaseEntities()
            : base("name=DataBaseEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<cars> cars { get; set; }
        public virtual DbSet<cartSerivce> cartSerivce { get; set; }
        public virtual DbSet<clients> clients { get; set; }
        public virtual DbSet<Marks> Marks { get; set; }
        public virtual DbSet<roles> roles { get; set; }
        public virtual DbSet<serviceRequests> serviceRequests { get; set; }
        public virtual DbSet<servicesList> servicesList { get; set; }
        public virtual DbSet<statusList> statusList { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<users> users { get; set; }
        public virtual DbSet<workers> workers { get; set; }
    }
}
