namespace Royal_Yard_V2._0.BAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Royal_Yard_V2._0.DAL;

    public partial class ry_Comments
    {


        [Key]
        [StringLength(32)]
        public string Name { get; set; }

        [Required]
        [StringLength(32)]
        public string Email { get; set; }

        [Required]
        public string Comments { get; set; }

        [Required]
        public DateTime Date { get; set; }

        ry_CommentsDAL objdl = new ry_CommentsDAL();
        public void insert(ry_Comments objbl)
        {
            objdl.insertData(objbl);
        }
    }
}