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
            float monto = Convert.ToSingle(Monto.Text);
            string concepto = Concepto.Text;
            string fecha = Convert.ToString(Calendar1.SelectedDate);
            if (RadioButtonList1.SelectedValue == "1")
            {
                opcion = "Debito";
            }
            else
            {
                opcion = "Credito";
            }
            string todo = fecha + " | " + concepto + " | " + opcion + " | " + monto;

            if (!File.Exists(Server.MapPath(".") + "/archivo.txt"))
            {
                StreamWriter sr = new StreamWriter(Server.MapPath(".") + "/archivo.txt");
                sr.WriteLine(todo);
                sr.Close();
            }
            else
            {
                StreamWriter sr = new StreamWriter(Server.MapPath(".") + "/archivo.txt", true);
                sr.WriteLine(todo);
                sr.Close();
            }
        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            int mesSeleccionado = Convert.ToInt32(DropDownList1.SelectedValue);
            buscar(mesSeleccionado);
        }

        protected void buscar(int mesSeleccionado)
        {
            Label1.Text = string.Empty;

            StreamReader sr = new StreamReader(Server.MapPath(".") + "/archivo.txt");
            string line;

            while ((line = sr.ReadLine()) != null)
            {
                string[] partes = line.Split('|');

                if (partes.Length >= 3)
                {
                    int mesEnArchivo = Convert.ToDateTime(partes[0]).Month;

                    if (mesEnArchivo == mesSeleccionado)
                    {
                        Label1.Text += line + "<br />";
                    }
                }
            }
            sr.Close();
        }

    }
}