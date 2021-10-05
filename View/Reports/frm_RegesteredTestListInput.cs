using DevExpress.XtraEditors;
using DevExpress.XtraReports.UI;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace THITN.View.Reports
{
    public partial class frm_RegesteredTestListInput : Form
    {
        public frm_RegesteredTestListInput()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (dtpFrom.Value > dtpTo.Value)
            {
                DateTime dateTime = dtpFrom.Value;
                dtpFrom.Value = dtpTo.Value;
                dtpTo.Value = dateTime;
            }

            Xrpt_RegesteredTestList report;
            try
            {
                report = new Xrpt_RegesteredTestList(dtpFrom.Value, dtpTo.Value);
            }
            catch (NullReferenceException ex)
            {
                XtraMessageBox.Show(ex.Message, "", MessageBoxButtons.OK);
                return;
            }
            ReportPrintTool reportPrintTool = new ReportPrintTool(report);
            reportPrintTool.ShowPreviewDialog();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
