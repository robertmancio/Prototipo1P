namespace Modelo.DTO
{
    public class dtoCampeonato
    {
        public int idCuentaCorriente { get; set; }
        public string cuentas_por_cobrar { get; set; }
        public string recibo_de_pago { get; set; }
        public string cuentas_por_pagar { get; set; }
        public int CuentaCorrientecol { get; set; }
        public int codigo_cliente { get; set; }
        public int codigo_proveedor { get; set; }
        public int nombreproveedor { get; set; }
        
        public dtoCampeonato()
        {
        }

        public dtoCampeonato(int IdCuentaCorriente, string Cuentas_por_cobrar, string Recibo_de_pago, string Cuentas_por_pagar, string CuentaCorrientecol, string codigo_cliente,
            , int FkIdTipoCampeonato)
        {
            pkId = Id;
            nombre = Nombre;
            fechaInicio = FechaInicio;
            fechaFinal = FechaFinal;
            fkIdDeporte = FkIdDeporte;
            fkIdTipoCampeonato = FkIdTipoCampeonato;
        }
    }
}