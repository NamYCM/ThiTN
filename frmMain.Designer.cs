
namespace THITN
{
    partial class frmMain
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmMain));
            this.ribbonControl1 = new DevExpress.XtraBars.Ribbon.RibbonControl();
            this.btDangNhap = new DevExpress.XtraBars.BarButtonItem();
            this.btTaoTaiKhoan = new DevExpress.XtraBars.BarButtonItem();
            this.btDangXuat = new DevExpress.XtraBars.BarButtonItem();
            this.btResultTest = new DevExpress.XtraBars.BarButtonItem();
            this.btScoreBoard = new DevExpress.XtraBars.BarButtonItem();
            this.btRegisteredList = new DevExpress.XtraBars.BarButtonItem();
            this.ribHeThong = new DevExpress.XtraBars.Ribbon.RibbonPage();
            this.ribbonPageGroup1 = new DevExpress.XtraBars.Ribbon.RibbonPageGroup();
            this.ribDanhMuc = new DevExpress.XtraBars.Ribbon.RibbonPage();
            this.ribbonPageGroup2 = new DevExpress.XtraBars.Ribbon.RibbonPageGroup();
            this.ribNghiepVu = new DevExpress.XtraBars.Ribbon.RibbonPage();
            this.ribbonPageGroup3 = new DevExpress.XtraBars.Ribbon.RibbonPageGroup();
            this.ribBaoCao = new DevExpress.XtraBars.Ribbon.RibbonPage();
            this.ribbonPageGroup4 = new DevExpress.XtraBars.Ribbon.RibbonPageGroup();
            this.statusStrip1 = new System.Windows.Forms.StatusStrip();
            this.MaGVSV = new System.Windows.Forms.ToolStripStatusLabel();
            this.HoTen = new System.Windows.Forms.ToolStripStatusLabel();
            this.Nhom = new System.Windows.Forms.ToolStripStatusLabel();
            this.xtraTabbedMdiManager1 = new DevExpress.XtraTabbedMdi.XtraTabbedMdiManager(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.ribbonControl1)).BeginInit();
            this.statusStrip1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.xtraTabbedMdiManager1)).BeginInit();
            this.SuspendLayout();
            // 
            // ribbonControl1
            // 
            this.ribbonControl1.ExpandCollapseItem.Id = 0;
            this.ribbonControl1.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.ribbonControl1.ExpandCollapseItem,
            this.ribbonControl1.SearchEditItem,
            this.btDangNhap,
            this.btTaoTaiKhoan,
            this.btDangXuat,
            this.btResultTest,
            this.btScoreBoard,
            this.btRegisteredList});
            this.ribbonControl1.Location = new System.Drawing.Point(0, 0);
            this.ribbonControl1.MaxItemId = 7;
            this.ribbonControl1.Name = "ribbonControl1";
            this.ribbonControl1.Pages.AddRange(new DevExpress.XtraBars.Ribbon.RibbonPage[] {
            this.ribHeThong,
            this.ribDanhMuc,
            this.ribNghiepVu,
            this.ribBaoCao});
            this.ribbonControl1.Size = new System.Drawing.Size(889, 158);
            // 
            // btDangNhap
            // 
            this.btDangNhap.Caption = "Đăng nhập";
            this.btDangNhap.Id = 1;
            this.btDangNhap.Name = "btDangNhap";
            this.btDangNhap.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btDangNhap_ItemClick);
            // 
            // btTaoTaiKhoan
            // 
            this.btTaoTaiKhoan.Caption = " Tạo tài khoản";
            this.btTaoTaiKhoan.Enabled = false;
            this.btTaoTaiKhoan.Id = 2;
            this.btTaoTaiKhoan.Name = "btTaoTaiKhoan";
            this.btTaoTaiKhoan.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btTaoTaiKhoan_ItemClick);
            // 
            // btDangXuat
            // 
            this.btDangXuat.Caption = "Đăng xuất";
            this.btDangXuat.Id = 3;
            this.btDangXuat.Name = "btDangXuat";
            this.btDangXuat.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btDangXuat_ItemClick);
            // 
            // btResultTest
            // 
            this.btResultTest.Caption = "Kết quả thi";
            this.btResultTest.Enabled = false;
            this.btResultTest.Id = 4;
            this.btResultTest.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("btResultTest.ImageOptions.Image")));
            this.btResultTest.ImageOptions.LargeImage = ((System.Drawing.Image)(resources.GetObject("btResultTest.ImageOptions.LargeImage")));
            this.btResultTest.Name = "btResultTest";
            this.btResultTest.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btResultTest_ItemClick);
            // 
            // btScoreBoard
            // 
            this.btScoreBoard.Caption = "Bảng điểm môn học";
            this.btScoreBoard.Enabled = false;
            this.btScoreBoard.Id = 5;
            this.btScoreBoard.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("btScoreBoard.ImageOptions.Image")));
            this.btScoreBoard.ImageOptions.LargeImage = ((System.Drawing.Image)(resources.GetObject("btScoreBoard.ImageOptions.LargeImage")));
            this.btScoreBoard.Name = "btScoreBoard";
            this.btScoreBoard.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItem1_ItemClick);
            // 
            // btRegisteredList
            // 
            this.btRegisteredList.Caption = "Danh sách đăng ký";
            this.btRegisteredList.Enabled = false;
            this.btRegisteredList.Id = 6;
            this.btRegisteredList.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("btRegisteredList.ImageOptions.Image")));
            this.btRegisteredList.ImageOptions.LargeImage = ((System.Drawing.Image)(resources.GetObject("btRegisteredList.ImageOptions.LargeImage")));
            this.btRegisteredList.Name = "btRegisteredList";
            this.btRegisteredList.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btRegisteredList_ItemClick);
            // 
            // ribHeThong
            // 
            this.ribHeThong.Groups.AddRange(new DevExpress.XtraBars.Ribbon.RibbonPageGroup[] {
            this.ribbonPageGroup1});
            this.ribHeThong.Name = "ribHeThong";
            this.ribHeThong.Text = "Hệ thống";
            // 
            // ribbonPageGroup1
            // 
            this.ribbonPageGroup1.ItemLinks.Add(this.btDangNhap);
            this.ribbonPageGroup1.ItemLinks.Add(this.btTaoTaiKhoan);
            this.ribbonPageGroup1.ItemLinks.Add(this.btDangXuat);
            this.ribbonPageGroup1.Name = "ribbonPageGroup1";
            // 
            // ribDanhMuc
            // 
            this.ribDanhMuc.Groups.AddRange(new DevExpress.XtraBars.Ribbon.RibbonPageGroup[] {
            this.ribbonPageGroup2});
            this.ribDanhMuc.Name = "ribDanhMuc";
            this.ribDanhMuc.Text = "Danh mục";
            this.ribDanhMuc.Visible = false;
            // 
            // ribbonPageGroup2
            // 
            this.ribbonPageGroup2.Name = "ribbonPageGroup2";
            this.ribbonPageGroup2.Text = "Tổ chức";
            // 
            // ribNghiepVu
            // 
            this.ribNghiepVu.Groups.AddRange(new DevExpress.XtraBars.Ribbon.RibbonPageGroup[] {
            this.ribbonPageGroup3});
            this.ribNghiepVu.Name = "ribNghiepVu";
            this.ribNghiepVu.Text = "Nghiệp vụ";
            this.ribNghiepVu.Visible = false;
            // 
            // ribbonPageGroup3
            // 
            this.ribbonPageGroup3.Name = "ribbonPageGroup3";
            this.ribbonPageGroup3.Text = "ribbonPageGroup3";
            // 
            // ribBaoCao
            // 
            this.ribBaoCao.Groups.AddRange(new DevExpress.XtraBars.Ribbon.RibbonPageGroup[] {
            this.ribbonPageGroup4});
            this.ribBaoCao.Name = "ribBaoCao";
            this.ribBaoCao.Text = "Báo cáo";
            this.ribBaoCao.Visible = false;
            // 
            // ribbonPageGroup4
            // 
            this.ribbonPageGroup4.ItemLinks.Add(this.btResultTest);
            this.ribbonPageGroup4.ItemLinks.Add(this.btScoreBoard);
            this.ribbonPageGroup4.ItemLinks.Add(this.btRegisteredList);
            this.ribbonPageGroup4.Name = "ribbonPageGroup4";
            // 
            // statusStrip1
            // 
            this.statusStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.MaGVSV,
            this.HoTen,
            this.Nhom});
            this.statusStrip1.Location = new System.Drawing.Point(0, 506);
            this.statusStrip1.Name = "statusStrip1";
            this.statusStrip1.Size = new System.Drawing.Size(889, 22);
            this.statusStrip1.TabIndex = 4;
            this.statusStrip1.Text = "statusStrip1";
            // 
            // MaGVSV
            // 
            this.MaGVSV.Name = "MaGVSV";
            this.MaGVSV.Size = new System.Drawing.Size(130, 17);
            this.MaGVSV.Text = "Mã giáo viên/ sinh viên";
            // 
            // HoTen
            // 
            this.HoTen.Name = "HoTen";
            this.HoTen.Size = new System.Drawing.Size(43, 17);
            this.HoTen.Text = "Họ tên";
            // 
            // Nhom
            // 
            this.Nhom.Name = "Nhom";
            this.Nhom.Size = new System.Drawing.Size(41, 17);
            this.Nhom.Text = "Nhóm";
            // 
            // xtraTabbedMdiManager1
            // 
            this.xtraTabbedMdiManager1.MdiParent = this;
            // 
            // frmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(889, 528);
            this.Controls.Add(this.statusStrip1);
            this.Controls.Add(this.ribbonControl1);
            this.IsMdiContainer = true;
            this.Name = "frmMain";
            this.Ribbon = this.ribbonControl1;
            this.Text = "Form Chính";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.frmMain_FormClosing);
            this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.frmMain_FormClosed);
            this.Load += new System.EventHandler(this.frmMain_Load);
            ((System.ComponentModel.ISupportInitialize)(this.ribbonControl1)).EndInit();
            this.statusStrip1.ResumeLayout(false);
            this.statusStrip1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.xtraTabbedMdiManager1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraBars.Ribbon.RibbonControl ribbonControl1;
        private DevExpress.XtraBars.Ribbon.RibbonPage ribHeThong;
        private DevExpress.XtraBars.Ribbon.RibbonPageGroup ribbonPageGroup1;
        private DevExpress.XtraBars.Ribbon.RibbonPage ribDanhMuc;
        private DevExpress.XtraBars.Ribbon.RibbonPageGroup ribbonPageGroup2;
        private DevExpress.XtraBars.Ribbon.RibbonPage ribNghiepVu;
        private DevExpress.XtraBars.Ribbon.RibbonPageGroup ribbonPageGroup3;
        private DevExpress.XtraBars.Ribbon.RibbonPage ribBaoCao;
        private DevExpress.XtraBars.Ribbon.RibbonPageGroup ribbonPageGroup4;
        private DevExpress.XtraBars.BarButtonItem btDangNhap;
        private DevExpress.XtraBars.BarButtonItem btTaoTaiKhoan;
        private DevExpress.XtraBars.BarButtonItem btDangXuat;
        private System.Windows.Forms.StatusStrip statusStrip1;
        public System.Windows.Forms.ToolStripStatusLabel MaGVSV;
        public System.Windows.Forms.ToolStripStatusLabel HoTen;
        public System.Windows.Forms.ToolStripStatusLabel Nhom;
        private DevExpress.XtraTabbedMdi.XtraTabbedMdiManager xtraTabbedMdiManager1;
        private DevExpress.XtraBars.BarButtonItem btResultTest;
        private DevExpress.XtraBars.BarButtonItem btScoreBoard;
        private DevExpress.XtraBars.BarButtonItem btRegisteredList;
    }
}

