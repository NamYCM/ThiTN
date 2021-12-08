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

namespace THITN.View
{
    public partial class frm_ChuanBiThi : DevExpress.XtraEditors.XtraForm
    {
        bool checkEdit = false;
        public frm_ChuanBiThi()
        {
            InitializeComponent();
            
        }
        public void xuLyButton(Boolean b)
        {
           this.btnF.Enabled = btnP.Enabled = btnN.Enabled = btnL.Enabled = btnAdd.Enabled = btnEdit.Enabled = btnDel.Enabled = b;
            btnSave.Enabled = btnCancel.Enabled = grThongtin.Enabled = checkEdit = !b;
            
        }
        private void gIAOVIEN_DANGKYBindingNavigatorSaveItem_Click(object sender, EventArgs e)
        {
            this.Validate();

            this.gIAOVIEN_DANGKYBindingSource.EndEdit();
            /*TableAdapterManager table = new TableAdapterManager();
            table.Connection = Program.conn;
            table.UpdateAll(this.tHITNDataSet);*/
            //this.tableAdapterManager.Connection = Program.conn;
            this.tableAdapterManager.UpdateAll(this.tHITNDataSet1);
            xuLyButton(true);
        }

        private void frm_ChuanBiThi_Load(object sender, EventArgs e)
        {
            //connec to server phan manh
            this.mONHOCTableAdapter.Connection.ConnectionString = Program.connstr;


            // TODO: This line of code loads data into the 'tHITNDataSet1.LOP' table. You can move, or remove it, as needed.
            this.tHITNDataSet1.LOP.Clear();
            this.tHITNDataSet1.EnforceConstraints = false;
            this.lOPTableAdapter.Connection.ConnectionString = Program.connstr;
            this.lOPTableAdapter.Fill(this.tHITNDataSet1.LOP);
            // TODO: This line of code loads data into the 'tHITNDataSet1.MONHOC' table. You can move, or remove it, as needed.
            this.tHITNDataSet1.MONHOC.Clear();
            this.tHITNDataSet1.EnforceConstraints = false;
            this.mONHOCTableAdapter.Fill(this.tHITNDataSet1.MONHOC);
            // TODO: This line of code loads data into the 'tHITNDataSet1.GIAOVIEN' table. You can move, or remove it, as needed.
            this.tHITNDataSet1.GIAOVIEN.Clear();
            this.tHITNDataSet1.EnforceConstraints = false;
            this.gIAOVIENTableAdapter.Connection.ConnectionString = Program.connstr;
            this.gIAOVIENTableAdapter.Fill(this.tHITNDataSet1.GIAOVIEN);
            // TODO: This line of code loads data into the 'tHITNDataSet1.GIAOVIEN_DANGKY' table. You can move, or remove it, as needed.
            this.tHITNDataSet1.GIAOVIEN_DANGKY.Clear();
            this.tHITNDataSet1.EnforceConstraints = false;
            this.gIAOVIEN_DANGKYTableAdapter.Connection.ConnectionString = Program.connstr;
            this.gIAOVIEN_DANGKYTableAdapter.Fill(this.tHITNDataSet1.GIAOVIEN_DANGKY);

            xuLyButton(true);

        }

        private void btnDel_Click_1(object sender, EventArgs e)
        {
            if (DialogResult.Yes == MessageBox.Show("Bạn có chắc muốn xóa hay không?","Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question))
            {
                this.gIAOVIEN_DANGKYBindingSource.RemoveCurrent();
                this.tableAdapterManager.UpdateAll(this.tHITNDataSet1);
            }
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            
            if (!validateEmpty())
            {
                if (!validateDate())
                {
                    if (!validateQuestion())
                    {
                        if (checkEdit == true)
                        {
                            try
                            {
                                this.Validate();
                                this.gIAOVIEN_DANGKYBindingSource.EndEdit();
                                this.tableAdapterManager.Connection = Program.conn;
                                this.tableAdapterManager.UpdateAll(this.tHITNDataSet1);
                                MessageBox.Show("Đã lưu thành công !", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                                xuLyButton(true);
                            }
                            catch (Exception ex)
                            {

                                MessageBox.Show("Lưu không thành công !" + ex.Message, "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                            }
                        }
                        else
                        {
                            if (!validateRegister())
                            {
                                try
                                {
                                    this.Validate();
                                    this.gIAOVIEN_DANGKYBindingSource.EndEdit();
                                    this.tableAdapterManager.Connection = Program.conn;
                                    this.tableAdapterManager.UpdateAll(this.tHITNDataSet1);
                                    MessageBox.Show("Đã lưu thành công !", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                                    xuLyButton(true);
                                }
                                catch (Exception ex)
                                {

                                    MessageBox.Show("Lưu không thành công !" + ex.Message, "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                                }
                            }
                        }
                        
                        
                    }
                    
                }
            }
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.gIAOVIEN_DANGKYBindingSource.CancelEdit();
            xuLyButton(true);
        }

        private void btnEdit_Click(object sender, EventArgs e)
        {
            xuLyButton(false);

        }

        private void btnAdd_Click_1(object sender, EventArgs e)
        {
            xuLyButton(false);

            this.gIAOVIEN_DANGKYBindingSource.AddNew();
            this.tableAdapterManager.UpdateAll(this.tHITNDataSet1);
        }

        private void lOPBindingSource_CurrentChanged(object sender, EventArgs e)
        {

        }
        
        //Validate

        private bool validateEmpty()
        {
            if (mAGVComboBox.Text.Trim().Equals(""))
            {
                MessageBox.Show("Mã giáo viên không được để trống !", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return true;
            }else if (mAMHComboBox.Text.Trim().Equals(""))
            {
                MessageBox.Show("Mã môn học không được để trống !", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return true;
            }
            else if (mALOPComboBox.Text.Trim().Equals(""))
            {
                MessageBox.Show("Mã lớp học không được để trống !", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return true;
            }
            else if (tRINHDOComboBox.Text.Trim().Equals(""))
            {
                MessageBox.Show("Trình độ không được để trống !", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return true;
            }
            else if (nGAYTHIDateTimePicker.Text.Trim().Equals("") )
            {
                MessageBox.Show("Ngày thi không được để trống !", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return true;
            }
            else if (lANComboBox.Text.Trim().Equals(""))
            {
                MessageBox.Show("lần thi không được để trống !", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return true;
            }
            else if (sOCAUTHISpinEdit.Text.Trim().Equals(""))
            {
                MessageBox.Show("Số lượng câu hỏi không được để trống !", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return true;
            }
            else if (tHOIGIANSpinEdit.Text.Trim().Equals(""))
            {
                MessageBox.Show("Thời gian thi không được để trống !", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return true;
            }else
            {
                return false;
            }  
        }

        private bool validateDate()
        {
            String _timeExam = nGAYTHIDateTimePicker.Text;
            DateTime oDate = DateTime.ParseExact(_timeExam.Trim(), "dd-MM-yyyy HH:mm:ss", System.Globalization.CultureInfo.InvariantCulture);
            DateTime today = DateTime.Now;
            int diffDateTime = DateTime.Compare(oDate, today);
            if (diffDateTime <= 0)
            {
                MessageBox.Show("Không thể đăng ký thời gian thi ở quá khứ !", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return true;
            }else
            {
                return false;
            }
            
        }

        private bool validateQuestion()
        {
            int cauHoiThieu = SqlQuery.IsEnoughQuestion(mAMHComboBox.Text, tRINHDOComboBox.Text, Decimal.ToInt32(sOCAUTHISpinEdit.Value));
            if (cauHoiThieu != 0)
            {
                MessageBox.Show("Số lượng câu hỏi không đủ trong bộ đề\nThiếu "+cauHoiThieu+" câu hỏi !", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return true;
            }else
            {
                return false;
            }
            
        }

        private bool validateRegister()
        {
            bool checkRegisterIsExists = SqlQuery.RegisterIsExists(mALOPComboBox.Text, mAMHComboBox.Text, Int32.Parse(lANComboBox.Text));
            if (checkRegisterIsExists)
            {
                MessageBox.Show("Lần thi thứ "+ lANComboBox.Text + " của môn học cho lớp đó đã được đăng ký!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return true;
            }else
            {
                return false;
            }
           
        }
        private void btnT_Click(object sender, EventArgs e)
        {
            bool checkRegisterIsExists = SqlQuery.RegisterIsExists(mALOPComboBox.Text, mAMHComboBox.Text, Int32.Parse(lANComboBox.Text));
            //txtT.Text = checkRegisterIsExists.ToString();
        }

        // disable editing
        private void mAGVComboBox_KeyPress(object sender, KeyPressEventArgs e)
        {
            e.Handled = true;
        }

        private void mAMHComboBox_KeyPress(object sender, KeyPressEventArgs e)
        {
            e.Handled = true;
        }

        private void mALOPComboBox_KeyPress(object sender, KeyPressEventArgs e)
        {
            e.Handled = true;
        }

        private void tRINHDOComboBox_KeyPress(object sender, KeyPressEventArgs e)
        {
            e.Handled = true;
        }

        private void lANComboBox_KeyPress(object sender, KeyPressEventArgs e)
        {
            e.Handled = true;
        }

        //end class
    }
}