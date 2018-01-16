namespace Royal_Yard_V2._0.BAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Royal_Yard_V2._0.DAL;

    public partial class ry_Property
    {
        [Key]
        [Column(Order = 0)]
        public int propertyID { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(32)]
        public string Cnic { get; set; }
        [Key]
        [Column(Order = 2)]

        public string propertyType { get; set; }
        [Required]
        [StringLength(200)]
        public string location {get; set;}

            [Required]
        [StringLength(32)]
        public string areaSize { get; set; }

        [Required]
        [StringLength(32)]
        public string demand { get; set; }

        [Required]
        [StringLength(32)]
        public string Status { get; set; }

        [Required]
        [StringLength(32)]
        public string rentOrSale { get; set; }

        [Required]
        public string propertyDescription { get; set; }

        [Required]
        [StringLength(32)]
        public string agentName { get; set; }

        [Required]
        [StringLength(32)]
        public string agentContactNumber { get; set; }
        public byte[] Image { get; set; }

        public virtual ry_Client ry_Client { get; set; }

        ry_PropertyDAL objdl = new ry_PropertyDAL();
        public void insert(ry_Property objbl)
        {
            objdl.insertData(objbl);
        }
        public void update(ry_Property objbl)
        {
            objdl.updateData(objbl);
        }
        public void delete(ry_Property objbl)
        {
            objdl.deleteData(objbl);
        }

    }
}
