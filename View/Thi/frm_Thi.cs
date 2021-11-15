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

namespace THITN.View
{
    public partial class frm_Thi : DevExpress.XtraEditors.XtraForm
    {
        public List<CauHoi> list;
        public BangDiem bangDiem;
        public BaiThi baiThi;
        public int index = 0;
        public int demTLDung = 0;
        public int thoiGian = 1;
        public int phut = 1;
        public int giay = 15;
        public frm_Thi(List<CauHoi> _list, int _thoiGian,BangDiem _bangDiem)
        {
            this.list = _list;
            thoiGian = _thoiGian;
            bangDiem = _bangDiem;
            InitializeComponent();
            initThi();
        }

        public void initThi()
        {
            showQuetion(0);
            phut = thoiGian;
            giay = 0;
            timer1.Start();
        }

        public void removeAllSelected()
        {
            btnA.Checked = false;
            btnB.Checked = false;
            btnC.Checked = false;
            btnD.Checked = false;
        }
        public void showCheckedItem(String ch)
        {
            switch (ch)
            {
                case "A":
                    btnA.Checked = true;
                    break;
                case "B":
                    btnB.Checked = true;
                    break;
                case "C":
                    btnC.Checked = true;
                    break;
                case "D":
                    btnD.Checked = true;
                    break;
                case "":
                    removeAllSelected();
                    break;
            }
        }
        public void showQuetion(int i)
        {
            lbT.Text = list[i].TrueAnswer;
            showCheckedItem(list[i].YourAnswer.Trim());
            txtSTT.Text = i+1+"";
            txtCauHoi.Text = list[i].cauHoi;
            lbCauA.Text = list[i].A;
            lbCauB.Text = list[i].B;
            lbCauC.Text = list[i].C;
            lbCauD.Text = list[i].D;
            if (i == 0)
            {
                btnP.Enabled = false;
                btnN.Enabled = true;
            }
            else if (i == list.Count - 1)
            {
                btnN.Enabled = false;
                btnP.Enabled = true;
            }
            else
            {
                btnP.Enabled = true;
                btnN.Enabled = true;
            }
        }
        private void btnN_Click(object sender, EventArgs e)
        {
            if (index < (list.Count-1))
            {
                index++;
            }
            showQuetion(index);
        }

        private void btnP_Click(object sender, EventArgs e)
        {
            if (index > 0)
            {
                index--;
            }
            showQuetion(index);
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            if (DialogResult.Yes == MessageBox.Show("Bạn có muốn nộp bài và thoát khỏi cuộc thi hay không?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Information))
            {
                //lưu bảng điểm
                int soCauTLDung = 0;
                float diem;
                for (int i = 0; i < list.Count; i++)
                {
                    if (list[i].YourAnswer.Equals(list[i].TrueAnswer))
                    {
                        soCauTLDung++;
                    }
                }
                diem = soCauTLDung / list.Count * 10;
                bangDiem.diem = diem;
                int value = SqlQuery.updateBangDiem(bangDiem.maSV, bangDiem.maMH, bangDiem.lan, bangDiem.ngayThi, bangDiem.diem);
                if (value != 0)
                {
                    MessageBox.Show("thêm bảng điểm thất bại !", "thông báo", MessageBoxButtons.OK);
                }
                else
                {
                    MessageBox.Show("thêm bảng điểm thành công !", "thông báo", MessageBoxButtons.OK);
                    int _baiThi = SqlQuery.getBaiThi(bangDiem.maSV, bangDiem.maMH, bangDiem.lan);
                    if (_baiThi == 0)
                    {
                        MessageBox.Show("Lấy bài thi không thành công !", "thông báo", MessageBoxButtons.OK);
                    }else
                    {
                        int _check = -1;
                        for (int i =0; i < list.Count; i++)
                        {
                            baiThi = new BaiThi();
                            baiThi.baiThi = _baiThi;
                            baiThi.maCauHoi = list[i].maCauHoi;
                            baiThi.daChon = list[i].YourAnswer;
                            baiThi.STT = i + 1;
                            _check = SqlQuery.updateBaiThi(baiThi.baiThi, baiThi.maCauHoi, baiThi.daChon, baiThi.STT);
                            if (_check != 0)
                            {
                                MessageBox.Show("thêm bài thi thất bại !", "thông báo", MessageBoxButtons.OK);
                                break;
                            }
                        }
                        if (_check == 0)
                        {
                            this.Close();
                        }
                    }
                   
                }
            }
            
            
        }


        private void btnB_Click(object sender, EventArgs e)
        {
            list[index].YourAnswer = "B";
        }

        private void btnC_Click(object sender, EventArgs e)
        {
            list[index].YourAnswer = "C";
        }

        private void btnD_Click(object sender, EventArgs e)
        {
            list[index].YourAnswer = "D";
        }

        private void btnA_Click(object sender, EventArgs e)
        {
            list[index].YourAnswer = "A";
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            if (phut == 0)
            {
                lbPhut.ForeColor = Color.Red;
                lbGiay.ForeColor = Color.Red;
                lbHaiCham.ForeColor = Color.Red;
            }
            else
            {
                lbPhut.ForeColor = Color.Black;
                lbGiay.ForeColor = Color.Black;
                lbHaiCham.ForeColor = Color.Black;
            }
            if (giay == 0)
            {
                giay = 60;
                phut--;
            }
            if (phut < 0)
            {
                phut = 0;
                giay = 0;
                timer1.Stop();
                if (DialogResult.OK == MessageBox.Show("Đã hết giờ làm bài !", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Stop))
                {
                    this.Close();
                }
            }else
            {
                giay--;
                if (phut < 10)
                {
                    lbPhut.Text = "0"+phut;
                }
                else
                {
                    lbPhut.Text = phut.ToString();
                }

                if (giay < 10)
                {
                    lbGiay.Text = "0" + giay;
                }
                else
                {
                    lbGiay.Text = giay.ToString();
                }
            }
            
        }
    }
}