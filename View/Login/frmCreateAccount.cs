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
using THITN.THITNDataSetTableAdapters;

namespace THITN.View.Login
{
    public partial class frmCreateAccount : Form
    {
        private String role;

        public frmCreateAccount()
        {
            InitializeComponent();

            if (Program.mGroup == "COSO")
            {
                cbKindAccount.Items.Add("Cơ sở");
                cbKindAccount.Items.Add("Giáo viên");
                cbKindAccount.Items.Add("Sinh viên");
                cbKindAccount.SelectedIndex = 1;
                cbKindAccount.SelectedIndex = 0;
                HandleClientTeacher();
                //KHOATableAdapter departmentAdapter = new KHOATableAdapter();
                //departmentAdapter.Connection = Program.conn;
                //cbDepartID.DataSource = null;
                //cbDepartID.ValueMember = "MAKH";
                //cbDepartID.DisplayMember = "TENKH";
                //cbDepartID.DataSource = departmentAdapter.GetData();
            }
            else if (Program.mGroup == "TRUONG")
            {
                cbKindAccount.Items.Add("Trường");
                cbKindAccount.SelectedIndex = 0;
                HandleClientTeacher();
                //KHOATableAdapter departmentAdapter = new KHOATableAdapter();
                //departmentAdapter.Connection = Program.conn;
                //cbDepartID.DataSource = null;
                //cbDepartID.ValueMember = "MAKH";
                //cbDepartID.DisplayMember = "TENKH";
                //cbDepartID.DataSource = departmentAdapter.GetData();
            }
        }

        private void cbKindAccount_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cbKindAccount.SelectedItem.ToString().CompareTo("Trường") == 0)
            {
                if(role == "SINHVIEN")
                    HandleClientTeacher();
                role = "TRUONG";
            }
            else if (cbKindAccount.SelectedItem.ToString().CompareTo("Cơ sở") == 0)
            {
                if (role == "SINHVIEN")
                    HandleClientTeacher();
                role = "COSO";
            }
            else if (cbKindAccount.SelectedItem.ToString().CompareTo("Giáo viên") == 0)
            {
                if (role == "SINHVIEN")
                    HandleClientTeacher();
                role = "GIAOVIEN";
            }
            else if (cbKindAccount.SelectedItem.ToString().CompareTo("Sinh viên") == 0)
            {
                if (role != "SINHVIEN")
                    HandleClientStudent();
                role = "SINHVIEN";
            }
        }

        private void HandleClientTeacher ()
        {
            lbLoginName.Visible = true;
            tbLoginName.Visible = true;
            lbBirthday.Visible = false;
            dtpBirthday.Visible = false;
            lbID.Text = "Mã giáo viên";
            lbDepartment.Text = "Khoa";

            KHOATableAdapter departmentAdapter = new KHOATableAdapter();
            departmentAdapter.Connection = Program.conn;
            cbDepartID.DataSource = null;
            cbDepartID.ValueMember = "MAKH";
            cbDepartID.DisplayMember = "TENKH";
            cbDepartID.DataSource = departmentAdapter.GetData();
        }

        private void HandleClientStudent ()
        {
            lbLoginName.Visible = false;
            tbLoginName.Visible = false;
            lbBirthday.Visible = true;
            dtpBirthday.Visible = true;
            lbID.Text = "Mã sinh viên";
            lbDepartment.Text = "Lớp";

            LOPTableAdapter classAdapter = new LOPTableAdapter();
            classAdapter.Connection = Program.conn;
            cbDepartID.DataSource = null;
            cbDepartID.ValueMember = "MALOP";
            cbDepartID.DisplayMember = "TENLOP";
            cbDepartID.DataSource = classAdapter.GetData();
        }

        private void btDangNhap_Click(object sender, EventArgs e)
        {
            if (!Check()) return;

            string strLenh = null;
            if (role == "TRUONG")
            {
                strLenh = "EXEC SP_TAOLOGINCHOTRUONG '" + tbLoginName.Text + "', '" + tbPassword.Text + "', '" + tbID.Text + "', '" + tbLastName.Text + "', '" + tbFirstName.Text + "', '" + tbAddress.Text + "', '" + cbDepartID.SelectedValue.ToString() + "'";
            }
            else if (role == "COSO")
            {
                strLenh = "EXEC SP_TAOLOGIN '" + tbLoginName.Text + "', '" + tbPassword.Text + "', '" + tbID.Text + "', 'COSO', '" + tbLastName.Text + "', '" + tbFirstName.Text + "', '" + tbAddress.Text + "', '" + cbDepartID.SelectedValue.ToString() + "'";
            }
            else if (role == "GIAOVIEN")
            {
                strLenh = "EXEC SP_TAOLOGIN '" + tbLoginName.Text + "', '" + tbPassword.Text + "', '" + tbID.Text + "', 'GIAOVIEN', '" + tbLastName.Text + "', '" + tbFirstName.Text + "', '" + tbAddress.Text + "', '" + cbDepartID.SelectedValue.ToString() + "'";
            }
            else if (role == "SINHVIEN")
            {
                String birthday;
                if (dtpBirthday.Value == DateTime.Today)
                    birthday = dtpBirthday.Value.ToString();
                else
                    birthday = "NULL";
                if (tbAddress.Text.Trim() == "")
                    strLenh = "EXEC SP_CreateStudent '" + tbID.Text + "', '" + tbLastName.Text + "', '" + tbFirstName.Text + "', " + birthday + ", NULL, '" + cbDepartID.SelectedValue.ToString() + "', '" + tbPassword.Text + "'";
                else
                    strLenh = "EXEC SP_CreateStudent '" + tbID.Text + "', '" + tbLastName.Text + "', '" + tbFirstName.Text + "', " + birthday + ", '" + tbAddress.Text + "', '" + cbDepartID.SelectedValue.ToString() + "', '" + tbPassword.Text + "'";
            }

            if (strLenh == null) return;

            int value = Program.ExecSqlNonQuery(strLenh);

            if(value == 0) XtraMessageBox.Show("Tạo tài khoản thành công", "Chúc mừng", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        private bool Check()
        {
            if (tbFirstName.Text.Trim() == "" || tbLastName.Text.Trim() == "" || tbPassword.Text.Trim() == "" || tbID.Text.Trim() == "")
            {
                XtraMessageBox.Show("Mật khẩu, họ, tên, mã không được để trống", "", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }

            if (role != "SINHVIEN" && tbLoginName.Text.Trim() == "")
            {
                XtraMessageBox.Show("Tài khoản không được để trống", "", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }

            if (dtpBirthday.Value > DateTime.Today)
            {
                XtraMessageBox.Show("Ngày sinh không đúng", "", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }

            return true;
        }
    }
}
