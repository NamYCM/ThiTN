using DevExpress.XtraEditors;
using DevExpress.XtraReports.UI;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using THITN.Control;
using THITN.View;
using THITN.View.Login;
using THITN.View.Reports;

namespace THITN
{
    public partial class frmMain : DevExpress.XtraBars.Ribbon.RibbonForm
    {
        private bool isLogin = false;

        public frmMain()
        {
            InitializeComponent();
        }

        private Form CheckExists(Type ftype)
        {
            foreach (Form f in this.MdiChildren)
                if (f.GetType() == ftype)
                    return f;
            return null;
        }

        private void statusStrip1_ItemClicked(object sender, ToolStripItemClickedEventArgs e)
        {
            
        }

        public void HienThiMenu ()
        {
            MaGVSV.Text = Program.username;
            HoTen.Text = "Họ tên = " + Program.mHoten;
            Nhom.Text = "Nhóm = " + Program.mGroup;

            //Phan quyen
            //ribBaoCao.Visible = ribDanhMuc.Visible = ribNghiepVu.Visible = true;
            ribNghiepVu.Visible = true;
            if (Program.mGroup == "SINHVIEN")
            {
                ribBaoCao.Visible = true;
                btResultTest.Enabled = true;
            }
            else if (Program.mGroup == "TRUONG")
            {
                ribBaoCao.Visible = true;
                btResultTest.Enabled = true;
                btRegisteredList.Enabled = true;
                btTaoTaiKhoan.Enabled = true;
            }
            else if (Program.mGroup == "GIAOVIEN")
            {
                ribBaoCao.Visible = true;
                btScoreBoard.Enabled = true;
                btResultTest.Enabled = true;
            }
            else if (Program.mGroup == "COSO")
            {
                ribBaoCao.Visible = true;
                btResultTest.Enabled = true;
                btRegisteredList.Enabled = true;
                btTaoTaiKhoan.Enabled = true;
            }
            //else if (Program.mGroup == "COSO")
            //else if (Program.mGroup == "TRUONG")
            //else if (Program.mGroup == "LOP")
            //Tiep tuc if
            btTaoTaiKhoan.Enabled = btRegisteredList.Enabled = ribBaoCao.Visible = ribDanhMuc.Visible = btScoreBoard.Enabled = btResultTest.Enabled = true;
        }

        public void HideMenu ()
        {
            //Phan quyen
            btTaoTaiKhoan.Enabled = btRegisteredList.Enabled = ribBaoCao.Visible = ribDanhMuc.Visible= btScoreBoard.Enabled = btResultTest.Enabled = false;

            foreach (Form f in this.MdiChildren)
            {
                f.Close();
            }    
        }

        private void btDangNhap_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (isLogin) return;

            isLogin = true;
            Form frm = CheckExists(typeof(frmDangNhap));
            if (frm != null) frm.Activate();
            else
            {
                frmDangNhap f = new frmDangNhap();
                f.MdiParent = this;
                f.Show();
            }
        }

        private void frmMain_Load(object sender, EventArgs e)
        {
            DevExpress.LookAndFeel.DefaultLookAndFeel themes = new DevExpress.LookAndFeel.DefaultLookAndFeel();
            themes.LookAndFeel.SkinName = Program.themeSkinName;
        }

        private void frmMain_FormClosed(object sender, FormClosedEventArgs e)
        {
            //CancelEventArgs args = new CancelEventArgs();
            //DialogResult dr;
            //dr = XtraMessageBox.Show("Bạn có muốn thoát?", "Message", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            //if (dr == DialogResult.No)
            //{
            //    args.Cancel = true;
            //}
            
        }

        private void frmMain_FormClosing(object sender, FormClosingEventArgs e)
        {
            DialogResult dr;
            dr = XtraMessageBox.Show("Bạn có muốn thoát?", "Message", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (dr == DialogResult.No)
            {
                e.Cancel = true;
            }
        }

        private void btDangXuat_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (!isLogin) return;
            Form frm = CheckExists(typeof(frmDangNhap));
            if (frm != null) return;
            ProgramController.Instance.LogOut();
            isLogin = false;
        }

        private void btTaoTaiKhoan_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //Xrpt_ResultTest2 report = new Xrpt_ResultTest2("001", "CSDL", 2);
            //ReportPrintTool reportPrintTool = new ReportPrintTool(report);
            //reportPrintTool.ShowPreviewDialog();
            Form frm = CheckExists(typeof(frmCreateAccount));
            if (frm != null) frm.Activate();
            else
            {
                frmCreateAccount f = new frmCreateAccount();
                f.MdiParent = this;
                f.Show();
            }
        }

        private void btResultTest_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Form frm = CheckExists(typeof(frm_PhieuNhapKetQuaThi));
            if (frm != null) frm.Activate();
            else
            {
                frm_PhieuNhapKetQuaThi f = new frm_PhieuNhapKetQuaThi();
                f.MdiParent = this;

                f.Show();
            }
        }

        private void barButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Form frm = CheckExists(typeof(frm_ScoreSubjectInput));
            if (frm != null) frm.Activate();
            else
            {
                frm_ScoreSubjectInput f = new frm_ScoreSubjectInput();
                f.MdiParent = this;

                f.Show();
            }
        }

        private void btRegisteredList_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Form frm = CheckExists(typeof(frm_RegesteredTestListInput));
            if (frm != null) frm.Activate();
            else
            {
                frm_RegesteredTestListInput f = new frm_RegesteredTestListInput();
                f.MdiParent = this;

                f.Show();
            }
        }

        private void barButtonItem1_ItemClick_1(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

        }

        private void ThemMHBT_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            NhapMon nhapMon = new NhapMon();
            nhapMon.MdiParent = this;
            nhapMon.Show();
        }

        private void barButtonItem1_ItemClick_2(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Form frm = CheckExists(typeof(frm_CBThi));
            if (frm != null) frm.Activate();
            else
            {
                frm_CBThi f = new frm_CBThi();
                f.MdiParent = this;

                f.Show();
            }
        }
    }
}
