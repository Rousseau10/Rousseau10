//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;

namespace R10.Models
{
    public partial class LU_MachineClass
    {
        public LU_MachineClass()
        {
            this.Machines = new HashSet<Machine>();
        }
    
        public int ID { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string ClassCode { get; set; }
        public byte[] RowVersion { get; set; }
    
        public virtual ICollection<Machine> Machines { get; set; }
    }
    
}