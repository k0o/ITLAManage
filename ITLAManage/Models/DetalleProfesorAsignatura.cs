//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ITLAManage.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class DetalleProfesorAsignatura
    {
        public int ID { get; set; }
        public int IDAsignatura { get; set; }
        public int IDProfesor { get; set; }
        public System.DateTime FechaAsignacion { get; set; }
        public string Cuatrimestre { get; set; }
    
        public virtual Asignaturas Asignaturas { get; set; }
        public virtual Profesores Profesores { get; set; }
    }
}
