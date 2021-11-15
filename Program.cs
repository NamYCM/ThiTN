using DevExpress.Skins;
using DevExpress.UserSkins;
using DevExpress.XtraEditors;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Windows.Forms;
using THITN.View;

namespace THITN
{
    static class Program
    {
        public static SqlConnection conn = new SqlConnection();
        public static String connstr;

        //Chung
        //public static String connstrPublisher = "Data Source=DESKTOP-S3ASIHQ;Initial Catalog=THITN;Integrated Security=True";
        //Huy
        public static String connstrPublisher = "Data Source=DESKTOP-S3ASIHQ;Initial Catalog=THITN;Integrated Security=True";

        //public static SqlDataAdapter da;
        public static SqlDataReader myReader;
        public static String servername = "";
        public static String servername1 = "DESKTOP-S3ASIHQ\\MSSQLSERVER1";
        public static String servername2 = "DESKTOP-S3ASIHQ\\MSSQLSERVER2";
        public static String servername3 = "DESKTOP-S3ASIHQ\\MSSQLSERVER3";
        public static String username;
        public static String password;
        public static String mlogin;

        public static String database = "THITN";
        public static String remoteLogin = "HTKN";
        public static String remotePassword = "123";
        public static String loginDN = "";
        public static String passwordDN = "";
        public static String mGroup;
        public static String mHoten;
        //public static int mCoSo = 0;

        public static BindingSource bdsDspm = new BindingSource();
        public static frmMain frmMain;

        public static String themeSkinName = "Coffee";

        public static int KetNoi ()
        {
            if (conn != null && conn.State == ConnectionState.Open)
                conn.Close();
            try
            {
                connstr = "Data Source=" + servername + ";Initial Catalog=" + database +
                    ";User ID=" + mlogin + ";password=" + password;
                conn.ConnectionString = connstr;
                conn.Open();
                return 1;
            }
            catch (Exception e)
            {
                XtraMessageBox.Show("Lỗi kết nối CSDL.\nBạn xem lại tài khoản và mật khẩu.\n" + e.Message, "", MessageBoxButtons.OK);
                return 0;
            }
        }

        public static SqlDataReader ExecSqlDataReader (String strLenh)
        {
            SqlDataReader myReader;
            SqlCommand sqlcmd = new SqlCommand(strLenh, conn);
            sqlcmd.CommandType = CommandType.Text;
            if (conn.State == ConnectionState.Closed) conn.Open();
            try
            {
                myReader = sqlcmd.ExecuteReader();
                return myReader;
            }
            catch (SqlException ex)
            {
                conn.Close();
                MessageBox.Show(ex.Message);
                return null;
            }
        }

        public static DataTable ExecSqlDataTable (String cmd)
        {
            DataTable dt = new DataTable();
            if (conn.State == ConnectionState.Closed) conn.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd, conn);
            da.Fill(dt);
            conn.Close();
            return dt;
        }

        public static int ExecSqlNonQuery (String strLenh)
        {
            SqlCommand sqlcmd = new SqlCommand(strLenh, conn);
            sqlcmd.CommandType = CommandType.Text;
            sqlcmd.CommandTimeout = 600;
            if (conn.State == ConnectionState.Closed) conn.Open();
            try
            {
                sqlcmd.ExecuteNonQuery();
                conn.Close();
                return 0;
            }
            catch (SqlException ex)
            {
                if (ex.Message.Contains("Error converting data type varchar to int"))
                    XtraMessageBox.Show("Bạn format cell lại cột \"Ngày thi\" qua kiểu Number hoặc mở file Excel.", "", MessageBoxButtons.OK);
                else XtraMessageBox.Show(ex.Message, "", MessageBoxButtons.OK);
                conn.Close();
                return ex.State;
            }
        }

        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);

            //frmTest = new frm_PhieuNhapKetQuaThi();
            //Application.Run(frmTest);

            frmMain = new frmMain();
            Application.Run(frmMain);
        }
    }
}
