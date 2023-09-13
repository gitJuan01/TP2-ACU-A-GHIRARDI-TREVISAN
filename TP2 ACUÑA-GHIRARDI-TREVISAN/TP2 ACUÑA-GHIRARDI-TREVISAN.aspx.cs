using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP2_ACUÑA_GHIRARDI_TREVISAN
{
    public partial class TP2_ACUÑA_GHIRARDI_TREVISAN : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Debito_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void carga(object sender, EventArgs e)
        {
            string opcion = "";
            float monto = Convert.ToInt64(Monto.Text);
            string concepto = Concepto.Text;
            string fecha = Convert.ToString(Calendar1.SelectedDate);
            if (Credito.Checked == true)
            {
                 opcion = "credito";
            }
            else
            {
                 opcion = "Debito";
            }
            string todo = fecha + " | " + concepto + " | " + opcion;
            if (File.Exists(this.Server.MapPath(".") + "archivo.txt"))
            {
                StreamWriter sr = new StreamWriter(Server.MapPath(".") + "/archivo.txt");
                sr.WriteLine(todo);
                sr.Close();
            }
            else 
            {
                StreamWriter sr = new StreamWriter(this.Server.MapPath(".") + "/archivo.txt", true);
                sr.WriteLine(todo);
                sr.Close();
            }
            
        }
    }
}