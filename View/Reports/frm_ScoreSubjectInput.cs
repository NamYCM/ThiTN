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
using THITN.THITNDataSetTableAdapters;

namespace THITN.View.Reports
{
    public partial class frm_ScoreSubjectInput : Form
    {
        public frm_ScoreSubjectInput()
        {
            //if (Program.mGroup != "GIAOVIEN")
            //{
            //    return;
            //}
            InitializeComponent();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void frm_ScoreSubjectInput_Load(object sender, EventArgs e)
        {
            //if (Program.mGroup != "GIAOVIEN")
            //{
            //    Close();
            //    return;
            //}

            LoadClass();
        }

        private void LoadTime ()
        {
            TimeOfTestBySubjectClassTableAdapter timeAdapter = new TimeOfTestBySubjectClassTableAdapter();
            timeAdapter.Connection = Program.conn;

            cbTime.DisplayMember = "LAN";
            cbTime.ValueMember = "LAN";
            cbTime.DataSource = timeAdapter.GetData(cbSubjects.SelectedValue.ToString(), cbClass.SelectedValue.ToString());
        }

        private void LoadSubject()
        {
            SubjectHaveScoreInClassTableAdapter subjectAdapter = new SubjectHaveScoreInClassTableAdapter();
            subjectAdapter.Connection = Program.conn;

            cbSubjects.DisplayMember = "TENMH";
            cbSubjects.ValueMember = "MAMH";
            cbSubjects.DataSource = subjectAdapter.GetData(cbClass.SelectedValue.ToString());
        }

        private void LoadClass()
        {
            LOPTableAdapter classAdapter = new LOPTableAdapter();
            classAdapter.Connection = Program.conn;

            cbClass.DisplayMember = "TENLOP";
            cbClass.ValueMember = "MALOP";
            cbClass.DataSource = classAdapter.GetData();
            //cbClass.SelectedIndex = -1;
            //cbClass.SelectedIndex = 0;

        }

        private void cbClass_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cbClass.Items.Count > 0)
                LoadSubject();
            else
                cbSubjects.DataSource = new DataTable();

            if (cbSubjects.Items.Count > 0)
                LoadTime();
            else
                cbTime.DataSource = new DataTable();
        }

        private void cbSubjects_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cbSubjects.Items.Count > 0)
                LoadTime();
            else
                cbTime.DataSource = new DataTable();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            
            Xrpt_ScoreSubject report;
            try
            {
                report = new Xrpt_ScoreSubject(cbClass.SelectedValue.ToString(), cbSubjects.SelectedValue.ToString(), Int16.Parse(cbTime.SelectedValue.ToString()));
            }
            catch (NullReferenceException ex)
            {
                XtraMessageBox.Show("Không được để trống dữ liệu" + ex.Message, "", MessageBoxButtons.OK);
                return;
            }
            ReportPrintTool reportPrintTool = new ReportPrintTool(report);
            reportPrintTool.ShowPreviewDialog();
        }
    }
}
