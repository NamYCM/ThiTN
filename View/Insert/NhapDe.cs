using DevExpress.XtraEditors;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace THITN
{
    public partial class NhapDe : DevExpress.XtraEditors.XtraForm
    {
        public NhapDe()
        {
            InitializeComponent();
        }

        private void bODEBindingNavigatorSaveItem_Click(object sender, EventArgs e)
        {
            this.Validate();
            this.tableAdapterManager.Connection.ConnectionString = "Data Source=" + Program.servername + ";Initial Catalog=" + Program.database +
                     ";User ID=" + Program.remoteLogin + ";password=" + Program.remotePassword;
            this.bODEBindingSource.EndEdit();
            this.tableAdapterManager.UpdateAll(this.tHITNDataSet1);

        }

        private void NhapDe_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'tHITNDataSet1.BODE' table. You can move, or remove it, as needed.
            this.bODETableAdapter.Connection.ConnectionString = Program.connstr;
            this.bODETableAdapter.Fill(this.tHITNDataSet1.BODE);

        }

        private void UndoDeBT_Click(object sender, EventArgs e)
        {
            this.bODEBindingSource.CancelEdit();
        }

        private void ThemDeBT_Click(object sender, EventArgs e)
        {
            
        }
    }
}