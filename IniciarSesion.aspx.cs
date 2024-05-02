using System;
using System.Data.SqlClient;

namespace Inicio_Sesion
{
    public partial class IniciarSesion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnIniciarSesion_Click(object sender, EventArgs e)
        {
            string nombreUsuario = txtNombre.Text;
            string contraseña = txtContrasena.Text;

            string connectionString = "Data Source=DESKTOP-7TIC1G4;Initial Catalog=Inicio Sesion;Integrated Security=True;";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string query = "SELECT COUNT(*) FROM Usuarios WHERE NombreUsuario = @NombreUsuario AND Contraseña = @Contraseña";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@NombreUsuario", nombreUsuario);
                command.Parameters.AddWithValue("@Contraseña", contraseña);

                int count = (int)command.ExecuteScalar(); 

                if (count > 0)
                {
                    Response.Redirect("InicioExitoso.aspx");
                }
                else
                {
                    lblMensaje.Text = "Credenciales incorrectas. Por favor, inténtelo de nuevo.";
                }
            }
        }
    }
}
