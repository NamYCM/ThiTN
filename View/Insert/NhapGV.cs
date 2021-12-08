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
    public partial class NhapGV : DevExpress.XtraEditors.XtraForm
    {
        public NhapGV()
        {
            InitializeComponent();
        }

        private void kHOABindingNavigatorSaveItem_Click(object sender, EventArgs e)
        {
            this.Validate();
            this.tableAdapterManager.Connection.ConnectionString = "Data Source=" + Program.servername + ";Initial Catalog=" + Program.database +
                     ";User ID=" + Program.remoteLogin + ";password=" + Program.remotePassword;
            this.kHOABindingSource.EndEdit();
            this.tableAdapterManager.UpdateAll(this.tHITNDataSet1);

        }

        private void NhapGV_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'tHITNDataSet1.GIAOVIEN' table. You can move, or remove it, as needed.
            this.gIAOVIENTableAdapter.Connection.ConnectionString = Program.connstr;
            this.gIAOVIENTableAdapter.Fill(this.tHITNDataSet1.GIAOVIEN);
            // TODO: This line of code loads data into the 'tHITNDataSet1.KHOA' table. You can move, or remove it, as needed.
            this.kHOATableAdapter.Connection.ConnectionString = Program.connstr;
            this.kHOATableAdapter.Fill(this.tHITNDataSet1.KHOA);

        }

        private void UndoKhoaBT_Click(object sender, EventArgs e)
        {
            this.kHOABindingSource.CancelEdit();
        }

        private void UndoGVBT_Click(object sender, EventArgs e)
        {
            this.gIAOVIENBindingSource.CancelEdit();
        }

        private void toolStripButton7_Click(object sender, EventArgs e)
        {
            this.Validate();
            this.tableAdapterManager.Connection.ConnectionString = "Data Source=" + Program.servername + ";Initial Catalog=" + Program.database +
                     ";User ID=" + Program.remoteLogin + ";password=" + Program.remotePassword;
            this.gIAOVIENBindingSource.EndEdit();
            this.tableAdapterManager.UpdateAll(this.tHITNDataSet1);
        }
    }
}