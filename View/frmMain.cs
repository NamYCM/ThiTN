using DevExpress.XtraEditors;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using THITN.Control;

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
            ribBaoCao.Visible = ribDanhMuc.Visible = ribNghiepVu.Visible = true;
            //Tiep tuc if
        }

        public void HideMenu ()
        {
            //Phan quyen
            ribBaoCao.Visible = ribDanhMuc.Visible = ribNghiepVu.Visible = false;
        }

        private void btDangNhap_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
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
            ProgramController.Instance.LogOut();
            isLogin = false;
        }
    }
}
