using DevExpress.XtraReports.UI;
using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;

namespace THITN.View.Reports
{
    public partial class Xrpt_RegesteredTestList : DevExpress.XtraReports.UI.XtraReport
    {
        public Xrpt_RegesteredTestList(DateTime from, DateTime to)
        {
            InitializeComponent();

            sqlDataSource1.Connection.ConnectionString = Program.connstr;
            sqlDataSource1.Queries[0].Parameters[0].Value = from;
            sqlDataSource1.Queries[0].Parameters[1].Value = to;

            lbFromDate.Text = from.Day + "/" + from.Month + "/" + from.Year;
            lbToDate.Text = to.Day + "/" + to.Month + "/" + to.Year;
        }

    }
}
