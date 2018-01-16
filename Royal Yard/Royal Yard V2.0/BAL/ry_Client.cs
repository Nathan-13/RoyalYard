namespace Royal_Yard_V2._0.BAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Royal_Yard_V2._0.DAL;

    public partial class ry_Client
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ry_Client()
        {
            ry_CountrySideProject = new HashSet<ry_CountrySideProject>();
            ry_Property = new HashSet<ry_Property>();
        }
        [Key]
        [Column(Order = 0)]
        public int ClientId { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(32)]
        public string Cnic { get; set; }


        [Required]
        [StringLength(32)]
        public string firstName { get; set; }

        [Required]
        [StringLength(32)]
        public string lastName { get; set; }

        [Required]
        [StringLength(32)]
        public string email { get; set; }

        [Required]
        [StringLength(32)]
        public string contactNumber { get; set; }

        [Required]
        [StringLength(200)]
        public string postalAddress { get; set; }

        [Required]
        [StringLength(200)]
        public string permenantAddress { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ry_CountrySideProject> ry_CountrySideProject { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ry_Property> ry_Property { get; set; }

        ry_ClientDAL objdl = new ry_ClientDAL();

        public void insert(ry_Client objbl)
        {
            objdl.insertData(objbl);
        }
        public void update(ry_Client objbl)
        {
            objdl.updateData(objbl);
        }
        public void delete(ry_Client objbl)
        {
            objdl.deleteData(objbl);
        }

    }
}
