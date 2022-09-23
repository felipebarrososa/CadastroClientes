using DAL;
using Entities;

namespace Business
{
    public class Negocio
    {
        public void GravarCliente(Clientes model)
        {
            string instrucaoSQL = "INSERT INTO Cliente VALUES (@nome, @DT_NASCIMENTO , @tipoClienteId, @EMAIL, @Estado_Civil, @situacaoClienteId)";
            Dados dal = new Dados();
            dal.GravarCliente(instrucaoSQL, model);
        }
    }
}
