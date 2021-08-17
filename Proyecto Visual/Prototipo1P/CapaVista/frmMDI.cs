using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CapaVista
{
    public partial class frmMDI : Form
    {
        public frmMDI()
        {
            InitializeComponent();
        }

        private void frmMDI_Load(object sender, EventArgs e)
        {
            // TODO: esta línea de código carga datos en la tabla 'cuentacorriente.cuenta_corriente' Puede moverla o quitarla según sea necesario.
            this.cuenta_corrienteTableAdapter.Fill(this.cuentacorriente.cuenta_corriente);
            // TODO: esta línea de código carga datos en la tabla 'mydbDataSet1.clientes' Puede moverla o quitarla según sea necesario.
            this.clientesTableAdapter.Fill(this.mydbDataSet1.clientes);

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}
