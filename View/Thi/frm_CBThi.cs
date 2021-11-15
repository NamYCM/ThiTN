using DevExpress.XtraEditors;
using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace THITN.View
{
    public partial class frm_CBThi : DevExpress.XtraEditors.XtraForm
    {
        public static String maLop = "";
        public frm_CBThi()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void mONHOCBindingNavigatorSaveItem_Click(object sender, EventArgs e)
        {
            this.Validate();
          

        }

        private void frm_CBThi_Load(object sender, EventArgs e)
        {
            
            //load info student
            List<String> listInFo = new List<String>(); 
               listInFo =  SqlQuery.getInfoSV(Program.maSV);
            maLop = listInFo[3];
            lbMaSV.Text = listInFo[0];
            lbTenSV.Text = listInFo[1] + " " + listInFo[2];
            lbMaLop.Text = maLop;
            lbTenLop.Text = listInFo[4];

            //load mã môn học
            DataTable table = new DataTable();
            table = SqlQuery.getMH(listInFo[3]);
            String _check = table.Rows[0].Field<String>(0);
            cbbMH.DataSource = table;
            if (_check.Trim().Equals("0"))
            {
                if (DialogResult.OK == MessageBox.Show("Lớp này không có môn học nào đã đăng ký !\nVui lòng liên hệ giáo viên để cập nhật thông tin!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error))
                {
                    cbbMH.DataSource = null;
                    //this.Exit();
                }
                
            }
            else
            {
                cbbMH.DisplayMember = "TENMH";
                cbbMH.ValueMember = "MAMH";

            }
            
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            if (!validateEmpty())
            {
                if (!validateDate())
                {
                    DataTable table = SqlQuery.getTableGVDK(Program.maSV, maLop, cbbMH.SelectedValue.ToString(), Int32.Parse(cbbLan.Text), dateEdit1.Text);
                    tableGVDK.DataSource = table;
                    if (tableGVDK.Rows[0].Cells[0].Value.ToString().Trim().Equals("0"))
                    {
                        tableGVDK.DataSource = null;
                        MessageBox.Show("Không có dữ liệu thi!\nVui lòng liên hệ giáo viên để kiểm tra lại!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    }
                    else
                    {
                        tableGVDK.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
                        String timeExam = ((DateTime)tableGVDK.Rows[0].Cells[3].Value).ToString("dd/MM/yyyy HH:mm:ss");
                        int thoiGianThi = Int32.Parse(tableGVDK.Rows[0].Cells[6].Value.ToString());
                        if (validateDateTime(timeExam,thoiGianThi))
                        {
                            MessageBox.Show("Đã quá thời gian vào thi", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                            tableGVDK.Enabled = false;
                        }
                        else
                        {
                            tableGVDK.Enabled = true;
                        }

                    }
                }
            }
            
            
        }
        //validate
        private bool validateEmpty()
        {
            if (cbbMH.Text.Trim().Equals(""))
            {
                MessageBox.Show("Không có môn học nào đã đăng ký thi cho lớp này!\nVui lòng liên hệ giáo viên", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return true;
            }
            else if (dateEdit1.Text.Trim().Equals(""))
            {
                MessageBox.Show("Không để ngày thi trống !", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return true;
            }
            else if (cbbLan.Text.Trim().Equals(""))
            {
                MessageBox.Show("Không để trống lần thi !", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return true;
            }
            else
            {
                return false;
            }
            
        }

        private bool validateDate()
        {
            String _timeExam = dateEdit1.Text;
            DateTime oDate = DateTime.ParseExact(_timeExam.Trim(), "dd/MM/yyyy", System.Globalization.CultureInfo.InvariantCulture);
            DateTime today = DateTime.Now;
            int diffDate = oDate.Date.CompareTo(today.Date);
            if (diffDate < 0)
            {
                MessageBox.Show("Ngày bạn tìm kiếm đã qua rồi ! "+diffDate, "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return true;
            }
            else
            {
                return false;
            }

        }

        private bool validateDateTime(String ngayGioThi,int thoiGianThi)
        {
            String _timeExam = ngayGioThi;
            DateTime oDate = DateTime.ParseExact(_timeExam.Trim(), "dd/MM/yyyy HH:mm:ss", CultureInfo.InvariantCulture);
            oDate =  oDate.AddMinutes(thoiGianThi);
            Console.WriteLine(oDate.ToString());
            DateTime today = DateTime.Now;
            int diffDateTime = DateTime.Compare(oDate, today);
            if (diffDateTime < 0)
            {  
                return true;
            }
            else
            {
                return false;
            }

        }
        private bool validateTimeStart(String ngayThi)
        {
            DateTime oDate = DateTime.ParseExact(ngayThi.Trim(), "dd/MM/yyyy HH:mm:ss", CultureInfo.InvariantCulture);
            DateTime today = DateTime.Now;
            int diffDateTime = DateTime.Compare(today, oDate);
            if (diffDateTime < 0)
            {
                MessageBox.Show("Chưa đến thời gian thi! ", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return true;
            }
            else
            {
                return false;
            }
            
        }
        //end validate
        //disable editing
        private void cbbMH_KeyPress(object sender, KeyPressEventArgs e)
        {
            e.Handled = true;
        }

        private void cbbLan_KeyPress(object sender, KeyPressEventArgs e)
        {
            e.Handled = true;
        }

        private void tableGVDK_RowStateChanged(object sender, DataGridViewRowStateChangedEventArgs e)
        {
            if (e.StateChanged != DataGridViewElementStates.Selected)
            {
                btnStart.Enabled = false;
                return;
            }

            btnStart.Enabled = true;
        }
        // end disable editing 
        private void btnStart_Click(object sender, EventArgs e)
        {
            String _maMH = tableGVDK.Rows[0].Cells[0].Value.ToString();
            String _trinhDo = tableGVDK.Rows[0].Cells[2].Value.ToString();
            String _ngayGioThi = ((DateTime)tableGVDK.Rows[0].Cells[3].Value).ToString("dd/MM/yyyy HH:mm:ss");
            int _soCau = Int32.Parse(tableGVDK.Rows[0].Cells[5].Value?.ToString());
            if (!validateTimeStart(_ngayGioThi))
            {

                List<CauHoi> list = SqlQuery.layCauHoi(_maMH, _trinhDo, _soCau);

                //thông tin bảng điểm 
                BangDiem bangDiem = new BangDiem();
                bangDiem.maSV = Program.maSV;
                bangDiem.maMH = _maMH;
                bangDiem.lan = Int32.Parse(tableGVDK.Rows[0].Cells[4].Value?.ToString());
                bangDiem.ngayThi = ((DateTime)tableGVDK.Rows[0].Cells[3].Value).ToString("yyyy/MM/dd HH:mm:ss");

                int thoiGianLamBai = Int32.Parse(tableGVDK.Rows[0].Cells[6].Value?.ToString());
                frm_Thi frm = new frm_Thi(list, thoiGianLamBai, bangDiem);
                frm.ShowDialog();
            }

        }
    }
}