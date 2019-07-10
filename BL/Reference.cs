using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DAL;

namespace BL
{
    public class Reference
    {
        public Reference()
        {
            IList<Tbl_Oficinas> studentList = new List<Tbl_Oficinas>() {
                new Tbl_Oficinas() { Nombre_Oficina="SJ", Dirreccion_Oficina="adasdadasd", Email_Oficina="cesar_arroyo64@hotmail.com"} ,
               
            };


        }


        public int Id_Oficina { get; set; }
        public string Nombre_Oficina { get; set; }
        public string Dirreccion_Oficina { get; set; }
        public string Email_Oficina { get; set; }
        public string Telefono_Oficina { get; set; }
        public int Numero_Asientos { get; set; }





    }
}
