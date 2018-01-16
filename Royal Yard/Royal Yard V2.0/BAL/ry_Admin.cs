namespace Royal_Yard_V2._0.BAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class ry_Admin
    {
        [Key]
        [StringLength(32)]
        public string userName { get; set; }

        [Required]
        [StringLength(32)]
        public string userPassword { get; set; }
    }
}
