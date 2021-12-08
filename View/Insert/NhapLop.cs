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
    public partial class NhapLop : DevExpress.XtraEditors.XtraForm
    {
        public NhapLop()
        {
            InitializeComponent();
        }

        private void lOPBindingNavigatorSaveItem_Click(object sender, EventArgs e)
        {
            this.Validate();
            this.tableAdapterManager.Connection.ConnectionString = "Data Source=" + Program.servername + ";Initial Catalog=" + Program.database +
                     ";User ID=" + Program.remoteLogin + ";password=" + Program.remotePassword;
            this.lOPBindingSource.EndEdit();
            this.tableAdapterManager.UpdateAll(this.tHITNDataSet1);

        }

        private void NhapLop_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'tHITNDataSet1.LOP' table. You can move, or remove it, as needed.
            this.lOPTableAdapter.Connection.ConnectionString = Program.connstr;
            this.lOPTableAdapter.Fill(this.tHITNDataSet1.LOP);

        }

        private void UndoBT_Click(object sender, EventArgs e)
        {
            this.lOPBindingSource.CancelEdit();
        }

        private void CBCoSo_SelectedIndexChanged(object sender, EventArgs e)
        {
            //if (CBCoSo.selectedvalue.tostring() != "system.data.datarowview")
            //{
            //    Program.servername = cbcoso.selectedvalue.tostring();
            //}
            //if (CBCoSo.selectedindex != Program.)
            //{
            //    Program.mlogin = Program.remotelogin;
            //    Program.pass = Program.remotepass;
            //}
            //else
            //{
            //    Program.mlogin = Program.mlogindn;
            //}

        //private void ThemLopBT_Click(object sender, EventArgs e)
        //{
        //    //if (CBCoSo.SelectedIndex == 0)
        //    //{ gridView1.SetFocusedRowCellValue("MACS", "CS1"); }
        //    //else if (CBCoSo.SelectedIndex == 1)
        //    //{ gridView1.SetFocusedRowCellValue("MACS", "CS2"); }
        //}
        }
    }
}