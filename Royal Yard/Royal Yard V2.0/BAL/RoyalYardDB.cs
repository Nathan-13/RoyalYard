namespace Royal_Yard_V2._0.BAL
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class RoyalYardDB : DbContext
    {
        public RoyalYardDB()
            : base("name=RoyalYardDB")
        {
        }

        public virtual DbSet<ry_Admin> ry_Admin { get; set; }
        public virtual DbSet<ry_Client> ry_Client { get; set; }
        public virtual DbSet<ry_CountrySideProject> ry_CountrySideProject { get; set; }
        public virtual DbSet<ry_Property> ry_Property { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<ry_Client>()
                .HasMany(e => e.ry_CountrySideProject)
                .WithRequired(e => e.ry_Client)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<ry_Client>()
                .HasMany(e => e.ry_Property)
                .WithRequired(e => e.ry_Client)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<ry_CountrySideProject>()
                .Property(e => e.propertyType)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<ry_Property>()
                .Property(e => e.propertyType)
                .IsFixedLength()
                .IsUnicode(false);
        }
    }
}
