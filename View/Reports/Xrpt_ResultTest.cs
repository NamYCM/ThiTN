using DevExpress.XtraReports.UI;
using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using THITN.THITNDataSetTableAdapters;

namespace THITN
{
    public partial class Xrpt_ResultTest : DevExpress.XtraReports.UI.XtraReport
    {
        private string username;
        private string subjectID;
        private int time;

        public Xrpt_ResultTest(string username, string subjectID, int time)
        {
            this.username = username;
            this.subjectID = subjectID;
            this.time = time;

            InitializeComponent();
            sqlDataSource4.Connection.ConnectionString = Program.connstr;
            sqlDataSource4.Queries[0].Parameters[0].Value = username;
            sqlDataSource4.Queries[0].Parameters[1].Value = subjectID;
            sqlDataSource4.Queries[0].Parameters[2].Value = time;
            sqlDataSource4.Fill();
            LoadHeader();
        }

        private void LoadHeader ()
        {
            SINHVIENTableAdapter studentAdapter = new SINHVIENTableAdapter();
            BANGDIEMTableAdapter gradeAdapter = new BANGDIEMTableAdapter();
            LOPTableAdapter classAdapter = new LOPTableAdapter();
            MONHOCTableAdapter subjectAdapter = new MONHOCTableAdapter();
            DataTable data = new DataTable();
            String classID;

            studentAdapter.Connection.ConnectionString = Program.connstr;
            data = studentAdapter.GetDataByUsername(username);
            this.xlbFullName.Text = ": " + data.Rows[0]["HO"].ToString() + data.Rows[0]["TEN"].ToString();
            classID = data.Rows[0]["MALOP"].ToString();

            gradeAdapter.Connection.ConnectionString = Program.connstr;
            data = gradeAdapter.GetDataByUsernameSubjectTime(username, subjectID, (short)time);
            //this.xlbTestDate.Text = ": " + data.Rows[0]["NGAYTHI"].ToString();
            DateTime dateTime = DateTime.Parse(data.Rows[0]["NGAYTHI"].ToString());
            xlbTestDate.Text = ": " + dateTime.Day.ToString() + "/" + dateTime.Month.ToString() + "/" + dateTime.Year.ToString();
            this.xlbTimeTest.Text = ": " + data.Rows[0]["LAN"].ToString();

            classAdapter.Connection.ConnectionString = Program.connstr;
            data = classAdapter.GetDataByClassID(classID);
            xlbClass.Text = ": " + data.Rows[0]["TENLOP"].ToString();

            subjectAdapter.Connection.ConnectionString = Program.connstr;
            data = subjectAdapter.GetDataBySubjectID(subjectID);
            xlbSubject.Text = ": " + data.Rows[0]["TENMH"].ToString();
        }
    }
}
