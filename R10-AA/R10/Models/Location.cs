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
    public partial class Location
    {
        public Location()
        {
            this.Machines = new HashSet<Machine>();
        }
    
        public int Location_ID { get; set; }
        public string Location_Name { get; set; }
        public string Location_Code { get; set; }
        public string Acc_Code { get; set; }
        public System.DateTime Loc_Begin_Date { get; set; }
        public Nullable<System.DateTime> Loc_End_Date { get; set; }
        public Nullable<bool> Is_Active { get; set; }
        public string Address1 { get; set; }
        public string Address2 { get; set; }
        public string City { get; set; }
        public string State_Province_Territory { get; set; }
        public string Country { get; set; }
        public string Postal_Code { get; set; }
        public string Contact1_FirstName { get; set; }
        public string Contact1_LastName { get; set; }
        public string Contact1_Role { get; set; }
        public string Contact1_Email { get; set; }
        public string Contact1_Cell { get; set; }
        public string Contact2_FirstName { get; set; }
        public string Contact2_LastName { get; set; }
        public string Contact2_Role { get; set; }
        public string Contact2_Email { get; set; }
        public string Contact2_Cell { get; set; }
        public string Owner_FirstName { get; set; }
        public string Owner_LastName { get; set; }
        public string Owner_Cell { get; set; }
        public string Owner_Email { get; set; }
        public string Location_Office_Phone { get; set; }
        public string Location_Bar_Phone { get; set; }
        public string Email_for_Sales_Report { get; set; }
        public string Notes1 { get; set; }
        public string Notes2 { get; set; }
        public string Comments { get; set; }
        public string Tax_Percente_State { get; set; }
        public string Tax_Percente_County { get; set; }
        public string Tax_Percente_Other { get; set; }
        public string Split_Percent { get; set; }
        public Nullable<System.DateTime> Record_Modify_Date { get; set; }
        public string Modifiers_Login { get; set; }
        public Nullable<bool> Data_Is_Dummy { get; set; }
        public Nullable<bool> Flagged_for_Deletion { get; set; }
        public byte[] RowVersion { get; set; }
    
        public virtual Acc Acc { get; set; }
        public virtual ICollection<Machine> Machines { get; set; }
    }
    
}
