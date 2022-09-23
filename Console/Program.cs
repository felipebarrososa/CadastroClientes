using Business;
using Entities;

namespace Console
{
    class Program
    {
        static void Main(string[] args)
        {
            Negocio business = new Negocio();
            Clientes cliente = new Clientes();

            cliente.Nome = "Teste";
            cliente.DtNascimento = cliente.DtNascimento;
            cliente.Email = "fsbarroso0890@gmail.com";
            cliente.EstadoCivil = "C"; 
            business.GravarCliente(cliente);
        }
    }
}
