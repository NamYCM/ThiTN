using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using DevExpress.XtraReports.UI;
using THITN.THITNDataSetTableAdapters;

namespace THITN.View
{
    public partial class frm_PhieuNhapKetQuaThi : Form
    {
        private SqlConnection connPublisher = new SqlConnection();

        public frm_PhieuNhapKetQuaThi()
        {
            InitializeComponent();
            if (Program.servername == Program.servername1)
                cbCoSo.Items.Add("CƠ SỞ 1");
            else if (Program.servername == Program.servername2)
                cbCoSo.Items.Add("CƠ SỞ 2");
            cbCoSo.SelectedIndex = 0;

            if (Program.mGroup == "SINHVIEN")
            {
                cbUsername.Items.Add(Program.username);
                cbUsername.SelectedIndex = 0;

                //load subject
                SP_GetSubjectOfStudentTableAdapter subjectAdapter = new SP_GetSubjectOfStudentTableAdapter();
                subjectAdapter.Connection.ConnectionString = Program.connstr;
                cbSubjects.DataSource = subjectAdapter.GetData(Program.username);
                cbSubjects.ValueMember = "MAMH";
                cbSubjects.DisplayMember = "TENMH";
            }
            else
            {
                //KetNoiCSDLGoc();
                //LayDSPM();
                LoadUsername();
            }
            //else return;
            //tbUsername.Text = Program.username;
            //cbTime.SelectedIndex = 1; cbTime.SelectedIndex = 0;
        }

        //private void LayDSPM()
        //{
        //    String cmd = "SELECT * FROM Get_Subscribes";
        //    DataTable dt = new DataTable();
        //    if (connPublisher.State == ConnectionState.Closed) connPublisher.Open();
        //    SqlDataAdapter da = new SqlDataAdapter(cmd, connPublisher);
        //    da.Fill(dt);

        //    Program.bdsDspm.DataSource = dt;

        //    cbCoSo.DataSource = dt;
        //    cbCoSo.DisplayMember = "TENCS"; cbCoSo.ValueMember = "TENSERVER";
        //    cbCoSo.SelectedIndex = 0;
        //    connPublisher.Close();
        //}

        //private int KetNoiCSDLGoc()
        //{
        //    if (connPublisher != null && connPublisher.State == ConnectionState.Open)
        //        connPublisher.Close();
        //    try
        //    {
        //        connPublisher.ConnectionString = Program.connstrPublisher;
        //        connPublisher.Open();
        //        return 1;
        //    }
        //    catch (Exception e)
        //    {
        //        XtraMessageBox.Show("Lỗi kết nối về CSDL gốc.\nBạn xem lại tên server của publiser, và tên CSDL trong chuối kết nối.\n" + e.Message, "", MessageBoxButtons.OK, MessageBoxIcon.Warning);
        //        return 0;
        //    }
        //}

        private void comboBox2_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        private void frm_PhieuNhapKetQuaThi_Load(object sender, EventArgs e)
        {
            //this.sP_GetSubjectOfStudentTableAdapter.Connection.ConnectionString = Program.connstr;
            //if (Program.mGroup == "SINHVIEN")
            //    this.sP_GetSubjectOfStudentTableAdapter.Fill(this.tHITNDataSet.SP_GetSubjectOfStudent, Program.username);
            // TODO: This line of code loads data into the 'tHITNDataSet.MONHOC' table. You can move, or remove it, as needed.
            //this.mONHOCTableAdapter......FillBy(this.tHITNDataSet.MONHOC, "001");
            
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Xrpt_ResultTest report;
            try
            {
                 report = new Xrpt_ResultTest(cbUsername.SelectedItem.ToString(), cbSubjects.SelectedValue.ToString(), Int16.Parse(cbTime.SelectedValue.ToString()));
            }
            catch (System.NullReferenceException ex)
            {
                XtraMessageBox.Show("Không được để trống dữ liệu" + ex.Message, "", MessageBoxButtons.OK);
                return;
            }
            ReportPrintTool reportPrintTool = new ReportPrintTool(report);
            reportPrintTool.ShowPreviewDialog();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void cbCoSo_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Program.mGroup == "TRUONG")
            {
                LoadUsername();

                if (cbUsername.Items.Count > 0)
                    LoadSubject();
                else
                    cbSubjects.DataSource = new DataTable();

                if (cbSubjects.Items.Count > 0)
                    LoadTime();
                else
                    cbTime.DataSource = new DataTable();
            }
        }

        private void LoadUsername()
        {
            cbUsername.Items.Clear();
            String connstr;
            SqlConnection sqlConnection = new SqlConnection();

            //try
            //{
            //    if (Program.servername == Program.servername1 && cbCoSo.SelectedValue.ToString() == Program.servername2)
            //    {
            //        connstr = "Data Source=" + Program.servername2 + ";Initial Catalog=" + Program.database +
            //        ";User ID=" + Program.remoteLogin + ";password=" + Program.remotePassword;
            //        sqlConnection.ConnectionString = connstr;
            //        sqlConnection.Open();
            //    }
            //    else if (Program.servername == Program.servername2 && cbCoSo.SelectedValue.ToString() == Program.servername1)
            //    {
            //        connstr = "Data Source=" + Program.servername1 + ";Initial Catalog=" + Program.database +
            //        ";User ID=" + Program.remoteLogin + ";password=" + Program.remotePassword;
            //        sqlConnection.ConnectionString = connstr;
            //        sqlConnection.Open();
            //    }
            //    else
            //    {
                    connstr = Program.connstr;
                    sqlConnection = Program.conn;
            //    }
            //}
            //catch (Exception e)
            //{
            //    XtraMessageBox.Show("Lỗi kết nối CSDL." + e.Message, "", MessageBoxButtons.OK);
            //    return;
            //}

            SINHVIENTableAdapter studentAdapter = new SINHVIENTableAdapter();
            studentAdapter.Connection = sqlConnection;
            DataTable data = studentAdapter.GetData();
            for (int i = 0; i < data.Rows.Count; i++)
            {
                cbUsername.Items.Add(data.Rows[i]["MASV"]);
            }

            try
            {
                cbUsername.SelectedIndex = 0;
            }
            catch (Exception)
            {
                return;
            }
        }

        private void cbUsername_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Program.mGroup != "SINHVIEN")
            {
                if (cbUsername.Items.Count > 0)
                    LoadSubject();
                else
                    cbSubjects.DataSource = new DataTable();

                if (cbSubjects.Items.Count > 0)
                    LoadTime();
                else
                    cbTime.DataSource = new DataTable();
            }
        }

        private void LoadSubject()
        {
            String connstr;
            SqlConnection sqlConnection = new SqlConnection();

            //if (Program.servername == Program.servername1 && cbCoSo.SelectedValue.ToString() == Program.servername2)
            //{
            //    connstr = "Data Source=" + Program.servername2 + ";Initial Catalog=" + Program.database +
            //    ";User ID=" + Program.remoteLogin + ";password=" + Program.remotePassword;
            //    sqlConnection.ConnectionString = connstr;
            //    sqlConnection.Open();
            //}
            //else if (Program.servername == Program.servername2 && cbCoSo.SelectedValue.ToString() == Program.servername1)
            //{
            //    connstr = "Data Source=" + Program.servername1 + ";Initial Catalog=" + Program.database +
            //    ";User ID=" + Program.remoteLogin + ";password=" + Program.remotePassword;
            //    sqlConnection.ConnectionString = connstr;
            //    sqlConnection.Open();
            //}
            //else
            //{
                connstr = Program.connstr;
                sqlConnection = Program.conn;
            //}

            SP_GetSubjectOfStudentTableAdapter subjectAdapter = new SP_GetSubjectOfStudentTableAdapter();
            subjectAdapter.Connection = sqlConnection;
            cbSubjects.ValueMember = "MAMH";
            cbSubjects.DisplayMember = "TENMH";
            cbSubjects.DataSource = subjectAdapter.GetData(cbUsername.SelectedItem.ToString());
        }

        private void cbSubjects_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cbSubjects.Items.Count > 0)
                LoadTime();
            else
                cbTime.DataSource = new DataTable();
        }

        private void LoadTime()
        {
            String connstr;
            SqlConnection sqlConnection = new SqlConnection();

            //if (Program.servername == Program.servername1 && cbCoSo.SelectedValue.ToString() == Program.servername2)
            //{
            //    connstr = "Data Source=" + Program.servername2 + ";Initial Catalog=" + Program.database +
            //    ";User ID=" + Program.remoteLogin + ";password=" + Program.remotePassword;
            //    sqlConnection.ConnectionString = connstr;
            //    sqlConnection.Open();
            //}
            //else if (Program.servername == Program.servername2 && cbCoSo.SelectedValue.ToString() == Program.servername1)
            //{
            //    connstr = "Data Source=" + Program.servername1 + ";Initial Catalog=" + Program.database +
            //    ";User ID=" + Program.remoteLogin + ";password=" + Program.remotePassword;
            //    sqlConnection.ConnectionString = connstr;
            //    sqlConnection.Open();
            //}
            //else
            //{
                connstr = Program.connstr;
                sqlConnection = Program.conn;
            //}

            BANGDIEMTableAdapter scoreAdapter = new BANGDIEMTableAdapter();
            scoreAdapter.Connection = sqlConnection;
            cbTime.DisplayMember = "LAN";
            cbTime.ValueMember = "LAN";
            cbTime.DataSource = scoreAdapter.GetDataByUsernameSubject(cbUsername.SelectedItem.ToString(), cbSubjects.SelectedValue.ToString());
        }
    }
}
