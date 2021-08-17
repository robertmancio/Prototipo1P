
namespace CapaVista
{
    partial class frmMDI
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.cuentacorriente = new CapaVista.cuentacorriente();
            this.cuentaCorrienteBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.cuenta_corrienteTableAdapter = new CapaVista.cuentacorrienteTableAdapters.cuenta_corrienteTableAdapter();
            this.idCuentaCorrienteDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.cuentasporcobrarDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.recibodepagoDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.cuentasporpagarDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.cuentaCorrientecolDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.proveedorescodigoproveedorDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clientescodigoclienteDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.button3 = new System.Windows.Forms.Button();
            this.button4 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cuentacorriente)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cuentaCorrienteBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // dataGridView1
            // 
            this.dataGridView1.AutoGenerateColumns = false;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.idCuentaCorrienteDataGridViewTextBoxColumn,
            this.cuentasporcobrarDataGridViewTextBoxColumn,
            this.recibodepagoDataGridViewTextBoxColumn,
            this.cuentasporpagarDataGridViewTextBoxColumn,
            this.cuentaCorrientecolDataGridViewTextBoxColumn,
            this.proveedorescodigoproveedorDataGridViewTextBoxColumn,
            this.clientescodigoclienteDataGridViewTextBoxColumn});
            this.dataGridView1.DataSource = this.cuentaCorrienteBindingSource;
            this.dataGridView1.Location = new System.Drawing.Point(47, 231);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(733, 248);
            this.dataGridView1.TabIndex = 1;
            this.dataGridView1.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellContentClick);
            // 
            // cuentacorriente
            // 
            this.cuentacorriente.DataSetName = "cuentacorriente";
            this.cuentacorriente.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // cuentaCorrienteBindingSource
            // 
            this.cuentaCorrienteBindingSource.DataMember = "cuenta corriente";
            this.cuentaCorrienteBindingSource.DataSource = this.cuentacorriente;
            // 
            // cuenta_corrienteTableAdapter
            // 
            this.cuenta_corrienteTableAdapter.ClearBeforeFill = true;
            // 
            // idCuentaCorrienteDataGridViewTextBoxColumn
            // 
            this.idCuentaCorrienteDataGridViewTextBoxColumn.DataPropertyName = "idCuenta Corriente";
            this.idCuentaCorrienteDataGridViewTextBoxColumn.HeaderText = "idCuenta Corriente";
            this.idCuentaCorrienteDataGridViewTextBoxColumn.Name = "idCuentaCorrienteDataGridViewTextBoxColumn";
            // 
            // cuentasporcobrarDataGridViewTextBoxColumn
            // 
            this.cuentasporcobrarDataGridViewTextBoxColumn.DataPropertyName = "cuentas_por_cobrar";
            this.cuentasporcobrarDataGridViewTextBoxColumn.HeaderText = "cuentas_por_cobrar";
            this.cuentasporcobrarDataGridViewTextBoxColumn.Name = "cuentasporcobrarDataGridViewTextBoxColumn";
            // 
            // recibodepagoDataGridViewTextBoxColumn
            // 
            this.recibodepagoDataGridViewTextBoxColumn.DataPropertyName = "recibo_de_pago";
            this.recibodepagoDataGridViewTextBoxColumn.HeaderText = "recibo_de_pago";
            this.recibodepagoDataGridViewTextBoxColumn.Name = "recibodepagoDataGridViewTextBoxColumn";
            // 
            // cuentasporpagarDataGridViewTextBoxColumn
            // 
            this.cuentasporpagarDataGridViewTextBoxColumn.DataPropertyName = "cuentas_por_pagar";
            this.cuentasporpagarDataGridViewTextBoxColumn.HeaderText = "cuentas_por_pagar";
            this.cuentasporpagarDataGridViewTextBoxColumn.Name = "cuentasporpagarDataGridViewTextBoxColumn";
            // 
            // cuentaCorrientecolDataGridViewTextBoxColumn
            // 
            this.cuentaCorrientecolDataGridViewTextBoxColumn.DataPropertyName = "Cuenta Corrientecol";
            this.cuentaCorrientecolDataGridViewTextBoxColumn.HeaderText = "Cuenta Corrientecol";
            this.cuentaCorrientecolDataGridViewTextBoxColumn.Name = "cuentaCorrientecolDataGridViewTextBoxColumn";
            // 
            // proveedorescodigoproveedorDataGridViewTextBoxColumn
            // 
            this.proveedorescodigoproveedorDataGridViewTextBoxColumn.DataPropertyName = "Proveedores_codigo_proveedor";
            this.proveedorescodigoproveedorDataGridViewTextBoxColumn.HeaderText = "Proveedores_codigo_proveedor";
            this.proveedorescodigoproveedorDataGridViewTextBoxColumn.Name = "proveedorescodigoproveedorDataGridViewTextBoxColumn";
            // 
            // clientescodigoclienteDataGridViewTextBoxColumn
            // 
            this.clientescodigoclienteDataGridViewTextBoxColumn.DataPropertyName = "Clientes_codigo_cliente";
            this.clientescodigoclienteDataGridViewTextBoxColumn.HeaderText = "Clientes_codigo_cliente";
            this.clientescodigoclienteDataGridViewTextBoxColumn.Name = "clientescodigoclienteDataGridViewTextBoxColumn";
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(392, 102);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 2;
            this.button1.Text = "button1";
            this.button1.UseVisualStyleBackColor = true;
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(494, 102);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(75, 23);
            this.button2.TabIndex = 3;
            this.button2.Text = "button2";
            this.button2.UseVisualStyleBackColor = true;
            // 
            // button3
            // 
            this.button3.Location = new System.Drawing.Point(392, 144);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(75, 22);
            this.button3.TabIndex = 4;
            this.button3.Text = "button3";
            this.button3.UseVisualStyleBackColor = true;
            // 
            // button4
            // 
            this.button4.Location = new System.Drawing.Point(494, 144);
            this.button4.Name = "button4";
            this.button4.Size = new System.Drawing.Size(75, 23);
            this.button4.TabIndex = 5;
            this.button4.Text = "button4";
            this.button4.UseVisualStyleBackColor = true;
            // 
            // frmMDI
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.DarkCyan;
            this.ClientSize = new System.Drawing.Size(840, 542);
            this.Controls.Add(this.button4);
            this.Controls.Add(this.button3);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.dataGridView1);
            this.Name = "frmMDI";
            this.Text = "Menú Principal";
            this.Load += new System.EventHandler(this.frmMDI_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cuentacorriente)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cuentaCorrienteBindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.DataGridView dataGridView1;
        private cuentacorriente cuentacorriente;
        private System.Windows.Forms.BindingSource cuentaCorrienteBindingSource;
        private cuentacorrienteTableAdapters.cuenta_corrienteTableAdapter cuenta_corrienteTableAdapter;
        private System.Windows.Forms.DataGridViewTextBoxColumn idCuentaCorrienteDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn cuentasporcobrarDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn recibodepagoDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn cuentasporpagarDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn cuentaCorrientecolDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn proveedorescodigoproveedorDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn clientescodigoclienteDataGridViewTextBoxColumn;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Button button4;
    }
}