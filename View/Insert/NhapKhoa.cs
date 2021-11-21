﻿using DevExpress.XtraEditors;
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
            this.kHOABindingSource.EndEdit();
            this.tableAdapterManager.UpdateAll(this.tHITNDataSet1);

        }

        private void NhapKhoa_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'tHITNDataSet1.KHOA' table. You can move, or remove it, as needed.
            this.kHOATableAdapter.Connection.ConnectionString = Program.connstr;
            this.kHOATableAdapter.Fill(this.tHITNDataSet1.KHOA);

        }

        private void UnDoBT_Click(object sender, EventArgs e)
        {
            this.kHOABindingSource.CancelEdit();
        }
    }
}