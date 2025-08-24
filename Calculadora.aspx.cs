using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Calculadora.net
{
    public partial class Calculadora : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Boton_Click(object sender, EventArgs e)
        {
                Button btn = (Button)sender;
                string valor = btn.Text;

                if (valor == "C")
                {
                    txtPantalla.Text = "";
                }
                else if (valor == "=")
                {
                    try
                    {
                        var resultado = new System.Data.DataTable().Compute(txtPantalla.Text, null);
                        txtPantalla.Text = resultado.ToString();
                    }
                    catch
                    {
                        txtPantalla.Text = "Error";
                    }
                }
                else
                {
                    txtPantalla.Text += valor;
                }
        }

        protected void btnOperador_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string operador = btn.Text;

            // Evita operadores duplicados seguidos
            if (!string.IsNullOrEmpty(txtPantalla.Text) &&
                "+-*/".Contains(txtPantalla.Text[txtPantalla.Text.Length - 1]))
            {
                txtPantalla.Text = txtPantalla.Text.Substring(0, txtPantalla.Text.Length - 1) + operador;
            }
            else
            {
                txtPantalla.Text += operador;
            }
        }

        protected void btnIgual_Click(object sender, EventArgs e)
        {
            try
            {
                var resultado = new System.Data.DataTable().Compute(txtPantalla.Text, null);
                txtPantalla.Text = resultado.ToString();
            }
            catch
            {
                txtPantalla.Text = "Error";
            }
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            txtPantalla.Text = "";
        }

        protected void btnCaracterEspecial_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string caracter = btn.Text;

            txtPantalla.Text += caracter;
        }

        protected void btnBorrar_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtPantalla.Text))
            {
                txtPantalla.Text = txtPantalla.Text.Substring(0, txtPantalla.Text.Length - 1);
            }
        }

        protected void btnParentesis_Click(object sender, EventArgs e)
        {
            string expresion = txtPantalla.Text;

            int abrir = expresion.Count(c => c == '(');
            int cerrar = expresion.Count(c => c == ')');

            // Si hay más paréntesis de apertura, cerramos
            if (abrir > cerrar)
            {
                txtPantalla.Text += ")";
            }
            else
            {
                // Si la expresión está vacía o termina en operador, abrimos
                if (string.IsNullOrEmpty(expresion) || "+-*/(".Contains(expresion.Last()))
                {
                    txtPantalla.Text += "(";
                }
                else
                {
                    txtPantalla.Text += "*("; // Asume multiplicación implícita si el último carácter es número
                }
            }
        }


    }
}