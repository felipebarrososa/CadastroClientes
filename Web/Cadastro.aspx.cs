using Business;
using Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web
{
    public partial class Cadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGravar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtNome.Text))
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert('Preencha o nome');", true);
                return;
            }

            if (string.IsNullOrEmpty(txtDtNascimento.Text))
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert('Preencha a idade');", true);
                return;
            }

            if (string.IsNullOrEmpty(TxtEmail.Text))
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert('Preencha com seu E-mail');", true);
                return;
            }

            if (string.IsNullOrEmpty(TxtEstadoCivil.Text))
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert('Preencha o seu Estado Civil');", true);
                return;
            }

            GravarCliente();
        }

        private void GravarCliente()
        {
            Negocio business = new Negocio();
            Clientes cliente = new Clientes();

            cliente.Nome = txtNome.Text;
            cliente.DtNascimento = Convert.ToDateTime(txtDtNascimento.Text);
            cliente.Nome = TxtEmail.Text;
            cliente.Nome = TxtEstadoCivil.Text;
            business.GravarCliente(cliente);
        }
    }
}