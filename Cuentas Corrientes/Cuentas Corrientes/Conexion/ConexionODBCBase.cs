namespace Conexion
{
    public class ConexionODBCBase
    {

        /// <summary>
        /// Inicia la conexión hacia ODBC con el DSN especificado.
        /// </summary>
        /// <returns></returns>
        public OdbcConnection abrirConexion()
        {
            OdbcConnection conexion = new OdbcConnection(dsn);
            try
            {
                conexion.Open();
                return conexion;
            }
            catch (OdbcException e)
            {
                abrirForm(new formError("El dsn especificado no funciona correctamente, corríjalo e intente de nuevo"));
                return null;
            }
        }
    }
}