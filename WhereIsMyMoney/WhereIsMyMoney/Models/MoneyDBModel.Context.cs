﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WhereIsMyMoney.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class WhereIsMyMoneyDBEntities : DbContext
    {
        public WhereIsMyMoneyDBEntities()
            : base("name=WhereIsMyMoneyDBEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Incomes> Incomes { get; set; }
        public virtual DbSet<Outcomes> Outcomes { get; set; }
    }
}
