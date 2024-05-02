using System;
using System.Data.SqlClient;

namespace Inicio_Sesion
{
    public partial class CrearUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnCrearUsuario_Click(object sender, EventArgs e)
        {
            string nombre = txtWNombre.Text;
            string correo = txtWCorreo.Text;
            string contraseña = txtWContrasena.Text;
            string confirmarContraseña = txtWConfirmarContrasena.Text;

            if (contraseña == confirmarContraseña)
            {
                try
                {
                    string connectionString = "Data Source=DESKTOP-7TIC1G4;Initial Catalog=Inicio Sesion;Integrated Security=True;"; 
                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        string query = "INSERT INTO Usuarios (NombreUsuario, Email, Contraseña) VALUES (@NombreUsuario, @Email, @Contraseña)";
                        SqlCommand command = new SqlCommand(query, connection);
                        command.Parameters.AddWithValue("@NombreUsuario", nombre);
                        command.Parameters.AddWithValue("@Email", correo);
                        command.Parameters.AddWithValue("@Contraseña", contraseña);

                        connection.Open();
                        command.ExecuteNonQuery();
                    }

                    Response.Redirect("PgInicio.aspx");
                }
                catch (SqlException ex)
                {
                    foreach (SqlError error in ex.Errors)
                    {
                        if (error.Message.Contains("UQ_Email")) 
                        {
                            lblMensaje.Text = "El correo electrónico ya está en uso. Por favor, utiliza otro correo electrónico.";
                            return; 
                        }
                    }

                    lblMensaje.Text = "Error al registrar el usuario. Por favor, inténtelo de nuevo.";
                }

            }
            else
            {
                lblMensaje.Text = "Las contraseñas no coinciden. Por favor, inténtelo de nuevo.";
            }
        }

    }
}
