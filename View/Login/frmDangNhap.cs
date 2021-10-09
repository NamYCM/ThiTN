using DevExpress.XtraEditors;
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

namespace THITN
{
    public partial class frmDangNhap : Form
    {
        private SqlConnection connPublisher = new SqlConnection();
        private const String accountStudent = "SV";
        private const String passwordStudent = "SV";

        public frmDangNhap()
        {
            InitializeComponent();
        }

        private void frmDangNhap_Load(object sender, EventArgs e)
        {
            DevExpress.LookAndFeel.DefaultLookAndFeel themes = new DevExpress.LookAndFeel.DefaultLookAndFeel();
            themes.LookAndFeel.SkinName = Program.themeSkinName;

            if (KetNoiCSDLGoc() == 0) return;
            LayDSPM();
            //???
            cbCoSo.SelectedIndex = 1; cbCoSo.SelectedIndex = 0;
        }

        private void btDangNhap_Click(object sender, EventArgs e)
        {
            if (tbTaiKhoan.Text.Trim() == "" || tbMatKhau.Text.Trim() == "")
            {
                XtraMessageBox.Show("Tài khoản và mật khẩu không được để trống", "", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            if (cbCoSo.SelectedIndex == 0 || cbCoSo.SelectedIndex == 1)
            {
                Program.mlogin = tbTaiKhoan.Text; Program.password = tbMatKhau.Text;
                if (Program.KetNoi() == 0) return;

                //Program.mCoSo = cbCoSo.SelectedIndex;
                Program.loginDN = Program.mlogin;
                Program.passwordDN = Program.password;
                string strLenh = "EXEC SP_Lay_Thong_Tin_NV_Tu_Login '" + Program.mlogin + "'";

                Program.myReader = Program.ExecSqlDataReader(strLenh);
            }
            else if (cbCoSo.SelectedIndex == 2)
            {
                Program.mlogin = accountStudent; Program.password = passwordStudent;
                //Program.mlogin = "sa"; Program.password = "123";
                if (Program.KetNoi() == 0) return;

                Program.loginDN = Program.mlogin;
                Program.passwordDN = Program.password;
                
                string strLenh = "EXEC SP_Lay_Thong_Tin_Sinh_Vien '" + tbTaiKhoan.Text + "','" + tbMatKhau.Text + "'";
                Program.myReader = Program.ExecSqlDataReader(strLenh);
            }
            else
            {
                return;
            }

            if (Program.myReader == null) return;
            Program.myReader.Read();

            Program.username = Program.myReader.GetString(0);
            if (Convert.IsDBNull(Program.username))
            {
                XtraMessageBox.Show("Login bạn nhập không có quyền truy cập dữ liệu\nBạn xem lại tài khoản, mật khẩu", "", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            Program.mHoten = Program.myReader.GetString(1);
            Program.mGroup = Program.myReader.GetString(2);
            if (cbCoSo.SelectedIndex == 0 || cbCoSo.SelectedIndex == 1)
            {
                Program.frmMain.MaGVSV.Text = "Mã giáo viên = " + Program.username;
            }
            else if (cbCoSo.SelectedIndex == 2)
            {
                if (Program.myReader.GetString(3) == Program.servername1)
                {
                    Program.servername = Program.servername1;
                    //Program.mCoSo = 0;
                } 
                else if (Program.myReader.GetString(3) == Program.servername2)
                {
                    Program.servername = Program.servername2;
                    //Program.mCoSo = 1;
                }

                //Program.connstr = "Data Source=" + Program.servername + ";Initial Catalog=" + Program.database +
                //        ";User ID=" + Program.mlogin + ";password=" + Program.password;
                if (Program.KetNoi() == 0)
                {
                    XtraMessageBox.Show("Không tồn tại login SV trên " + Program.servername, "", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return;
                }
                    
                Program.frmMain.MaGVSV.Text = "Mã sinh viên = " + Program.username;
            }
            Program.frmMain.HoTen.Text = "Họ tên = " + Program.mHoten;
            Program.frmMain.Nhom.Text = "Nhóm = " + Program.mGroup;

            Program.frmMain.HienThiMenu();
            Program.myReader.Close();
            Program.conn.Close();
            this.Close();
        }

        private void LayDSPM()
        {
            String cmd = "SELECT * FROM Get_Subscribes";
            DataTable dt = new DataTable();
            if (connPublisher.State == ConnectionState.Closed) connPublisher.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd, connPublisher);
            da.Fill(dt);

            Program.bdsDspm.DataSource = dt;

            //add search subscribes
            cmd = "SELECT * FROM Get_SearchSubscribes";
            SqlDataReader myReader;
            SqlCommand sqlcmd = new SqlCommand(cmd, connPublisher);
            sqlcmd.CommandType = CommandType.Text;
            if (connPublisher.State == ConnectionState.Closed) connPublisher.Open();
            try
            {
                myReader = sqlcmd.ExecuteReader();
                if (myReader == null) return;
                myReader.Read();

                DataRow dr = dt.NewRow();
                dr["TENCS"] = "SINH VIÊN";
                dr["TENSERVER"] = myReader.GetString(1);
                dt.Rows.Add(dr);
            }
            catch (SqlException ex)
            {
                connPublisher.Close();
                MessageBox.Show(ex.Message);
            }

            cbCoSo.DataSource = dt;
            cbCoSo.DisplayMember = "TENCS"; cbCoSo.ValueMember = "TENSERVER";

            connPublisher.Close();
        }

        private int KetNoiCSDLGoc()
        {
            if (connPublisher != null && connPublisher.State == ConnectionState.Open)
                connPublisher.Close();
            try
            {
                connPublisher.ConnectionString = Program.connstrPublisher;
                connPublisher.Open();
                return 1;
            }
            catch (Exception e)
            {
                XtraMessageBox.Show("Lỗi kết nối về CSDL gốc.\nBạn xem lại tên server của publiser, và tên CSDL trong chuối kết nối.\n" + e.Message, "", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return 0;
            }
        }

        private void cbCoSo_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                Program.servername = cbCoSo.SelectedValue.ToString();
            }
            catch (Exception) { }
        }

        private void frmDangNhap_FormClosed(object sender, FormClosedEventArgs e)
        {
            //CancelEventArgs args = new CancelEventArgs();
            //DialogResult dr;
            //dr = XtraMessageBox.Show("Bạn có muốn thoát?", "Message", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            //if (dr == DialogResult.No)
            //{
            //    args.Cancel = true;
            //}
        }

        private void tbMatKhau_TextChanged(object sender, EventArgs e)
        {

        }

        private void tbTaiKhoan_TextChanged(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }
    }
}
