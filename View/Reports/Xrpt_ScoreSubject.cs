using DevExpress.XtraReports.UI;
using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using THITN.THITNDataSetTableAdapters;

namespace THITN.View.Reports
{
    public partial class Xrpt_ScoreSubject : DevExpress.XtraReports.UI.XtraReport
    {
        private string classID;
        private string subjectID;
        private int time;

        public Xrpt_ScoreSubject(string classID, string subjectID, int time)
        {
            this.classID = classID;
            this.subjectID = subjectID;
            this.time = time;

            InitializeComponent();

            sqlDataSource1.Connection.ConnectionString = Program.connstr;
            sqlDataSource1.Queries[0].Parameters[0].Value = classID;
            sqlDataSource1.Queries[0].Parameters[1].Value = subjectID;
            sqlDataSource1.Queries[0].Parameters[2].Value = time;
            sqlDataSource1.Fill();

            LoadHeader();
        }

        private void LoadHeader ()
        {
            LOPTableAdapter classAdapter = new LOPTableAdapter();
            MONHOCTableAdapter subjectAdapter = new MONHOCTableAdapter();
            GIAOVIENTableAdapter teacherAdapter = new GIAOVIENTableAdapter();
            GIAOVIEN_DANGKYTableAdapter teacherRegistedAdapter = new GIAOVIEN_DANGKYTableAdapter();

            DataTable data = new DataTable();

            classAdapter.Connection = Program.conn;
            data = classAdapter.GetDataByClassID(classID);
            xlbClass.Text = ": " + data.Rows[0]["TENLOP"].ToString();

            subjectAdapter.Connection = Program.conn;
            data = subjectAdapter.GetDataBySubjectID(subjectID);
            xlbSubject.Text = ": " + data.Rows[0]["TENMH"].ToString();

            teacherAdapter.Connection = Program.conn;
            data = teacherAdapter.GetDataByClassSubjectTime(subjectID, classID, (short)time);
            xlbTeacher.Text = ": " + data.Rows[0]["HO"].ToString() + " " + data.Rows[0]["TEN"].ToString();

            teacherRegistedAdapter.Connection = Program.conn;
            data = teacherRegistedAdapter.GetDataBySubjectClassTime(subjectID, classID, (short)time);
            DateTime dateTime = DateTime.Parse(data.Rows[0]["NGAYTHI"].ToString());
            xlbTestDate.Text = ": " + dateTime.Day.ToString() + "/" + dateTime.Month.ToString() + "/" + dateTime.Year.ToString();
            
            xlbTimeTest.Text = ": " + data.Rows[0]["LAN"].ToString();
        }

        private void xrLabel3_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

        }

        private void xlbSubject_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

        }
    }
}
