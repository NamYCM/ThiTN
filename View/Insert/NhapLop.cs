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
            //if (CBCoSo.SelectedValue.ToString() != "System.Data.DataRowView")
            //{
            //    Program.servername = CBCoSo.SelectedValue.ToString();
            //}
            //if (CBCoSo.SelectedIndex != Program.)
            //{
            //    Program.mlogin = Program.remoteLogin;
            //    Program.pass = Program.remotePass;
            //}
            //else
            //{
            //    Program.mlogin = Program.mloginDN;
            //
            //
        }
    }
}