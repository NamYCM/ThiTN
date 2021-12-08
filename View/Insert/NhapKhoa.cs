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
    public partial class NhapKhoa : DevExpress.XtraEditors.XtraForm
    {
        public NhapKhoa()
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

        private void NhapKhoa_Load(object sender, EventArgs e)
        {
            //CBCoSo.SelectedValue = Program.mCS;
            // TODO: This line of code loads data into the 'tHITNDataSet1.KHOA' table. You can move, or remove it, as needed.
            this.kHOATableAdapter.Connection.ConnectionString = Program.connstr;
            this.kHOATableAdapter.Fill(this.tHITNDataSet1.KHOA);
            //CBCoSo.DataSource = Program.bdsDspm;
            //CBCoSo.DisplayMember = "TENCS";
            //CBCoSo.ValueMember = "TENSERVER";
        }

        private void UnDoBT_Click(object sender, EventArgs e)
        {
            this.kHOABindingSource.CancelEdit();
        }

        private void aDDKhoaBT_Click(object sender, EventArgs e)
        {
            if (Program.servername == Program.servername1)
            {
                //========tu them ma cs===========gridView1.
                gridView1.SetFocusedRowCellValue("MACS", "CS1");
            }
            else
            {
                gridView1.SetFocusedRowCellValue("MACS", "CS2");
            }

        }

    }
}