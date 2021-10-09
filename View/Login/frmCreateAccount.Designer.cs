
namespace THITN.View.Login
{
    partial class frmCreateAccount
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
            this.btDangNhap = new System.Windows.Forms.Button();
            this.cbKindAccount = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.lbLoginName = new System.Windows.Forms.Label();
            this.lbPassword = new System.Windows.Forms.Label();
            this.tbLoginName = new System.Windows.Forms.TextBox();
            this.tbPassword = new System.Windows.Forms.TextBox();
            this.lbID = new System.Windows.Forms.Label();
            this.lbAddress = new System.Windows.Forms.Label();
            this.tbID = new System.Windows.Forms.TextBox();
            this.tbAddress = new System.Windows.Forms.TextBox();
            this.lbDepartment = new System.Windows.Forms.Label();
            this.lbLastName = new System.Windows.Forms.Label();
            this.lbFirstName = new System.Windows.Forms.Label();
            this.tbLastName = new System.Windows.Forms.TextBox();
            this.tbFirstName = new System.Windows.Forms.TextBox();
            this.cbDepartID = new System.Windows.Forms.ComboBox();
            this.dtpBirthday = new System.Windows.Forms.DateTimePicker();
            this.lbBirthday = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // btDangNhap
            // 
            this.btDangNhap.Location = new System.Drawing.Point(381, 273);
            this.btDangNhap.Name = "btDangNhap";
            this.btDangNhap.Size = new System.Drawing.Size(75, 23);
            this.btDangNhap.TabIndex = 37;
            this.btDangNhap.Text = "Tạo";
            this.btDangNhap.UseVisualStyleBackColor = true;
            this.btDangNhap.Click += new System.EventHandler(this.btDangNhap_Click);
            // 
            // cbKindAccount
            // 
            this.cbKindAccount.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbKindAccount.FormattingEnabled = true;
            this.cbKindAccount.Location = new System.Drawing.Point(317, 58);
            this.cbKindAccount.Name = "cbKindAccount";
            this.cbKindAccount.Size = new System.Drawing.Size(266, 21);
            this.cbKindAccount.TabIndex = 31;
            this.cbKindAccount.SelectedIndexChanged += new System.EventHandler(this.cbKindAccount_SelectedIndexChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(203, 59);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(108, 20);
            this.label1.TabIndex = 32;
            this.label1.Text = "Loại tài khoản";
            // 
            // lbLoginName
            // 
            this.lbLoginName.AutoSize = true;
            this.lbLoginName.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbLoginName.Location = new System.Drawing.Point(18, 222);
            this.lbLoginName.Name = "lbLoginName";
            this.lbLoginName.Size = new System.Drawing.Size(78, 20);
            this.lbLoginName.TabIndex = 33;
            this.lbLoginName.Text = "Tài khoản";
            // 
            // lbPassword
            // 
            this.lbPassword.AutoSize = true;
            this.lbPassword.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbPassword.Location = new System.Drawing.Point(21, 180);
            this.lbPassword.Name = "lbPassword";
            this.lbPassword.Size = new System.Drawing.Size(75, 20);
            this.lbPassword.TabIndex = 34;
            this.lbPassword.Text = "Mật khẩu";
            // 
            // tbLoginName
            // 
            this.tbLoginName.Location = new System.Drawing.Point(117, 224);
            this.tbLoginName.Name = "tbLoginName";
            this.tbLoginName.Size = new System.Drawing.Size(266, 20);
            this.tbLoginName.TabIndex = 35;
            // 
            // tbPassword
            // 
            this.tbPassword.Location = new System.Drawing.Point(117, 180);
            this.tbPassword.Name = "tbPassword";
            this.tbPassword.Size = new System.Drawing.Size(266, 20);
            this.tbPassword.TabIndex = 36;
            // 
            // lbID
            // 
            this.lbID.AutoSize = true;
            this.lbID.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbID.Location = new System.Drawing.Point(433, 139);
            this.lbID.Name = "lbID";
            this.lbID.Size = new System.Drawing.Size(162, 20);
            this.lbID.TabIndex = 38;
            this.lbID.Text = "Mã giáo viên/sinh viên";
            // 
            // lbAddress
            // 
            this.lbAddress.AutoSize = true;
            this.lbAddress.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbAddress.Location = new System.Drawing.Point(436, 180);
            this.lbAddress.Name = "lbAddress";
            this.lbAddress.Size = new System.Drawing.Size(57, 20);
            this.lbAddress.TabIndex = 39;
            this.lbAddress.Text = "Địa chỉ";
            // 
            // tbID
            // 
            this.tbID.Location = new System.Drawing.Point(532, 141);
            this.tbID.Name = "tbID";
            this.tbID.Size = new System.Drawing.Size(266, 20);
            this.tbID.TabIndex = 40;
            // 
            // tbAddress
            // 
            this.tbAddress.Location = new System.Drawing.Point(532, 180);
            this.tbAddress.Name = "tbAddress";
            this.tbAddress.Size = new System.Drawing.Size(266, 20);
            this.tbAddress.TabIndex = 41;
            // 
            // lbDepartment
            // 
            this.lbDepartment.AutoSize = true;
            this.lbDepartment.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbDepartment.Location = new System.Drawing.Point(433, 101);
            this.lbDepartment.Name = "lbDepartment";
            this.lbDepartment.Size = new System.Drawing.Size(125, 20);
            this.lbDepartment.TabIndex = 44;
            this.lbDepartment.Text = "Mã khoa/ mã lớp";
            // 
            // lbLastName
            // 
            this.lbLastName.AutoSize = true;
            this.lbLastName.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbLastName.Location = new System.Drawing.Point(36, 139);
            this.lbLastName.Name = "lbLastName";
            this.lbLastName.Size = new System.Drawing.Size(36, 20);
            this.lbLastName.TabIndex = 43;
            this.lbLastName.Text = "Tên";
            // 
            // lbFirstName
            // 
            this.lbFirstName.AutoSize = true;
            this.lbFirstName.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbFirstName.Location = new System.Drawing.Point(33, 98);
            this.lbFirstName.Name = "lbFirstName";
            this.lbFirstName.Size = new System.Drawing.Size(30, 20);
            this.lbFirstName.TabIndex = 42;
            this.lbFirstName.Text = "Họ";
            // 
            // tbLastName
            // 
            this.tbLastName.Location = new System.Drawing.Point(117, 137);
            this.tbLastName.Name = "tbLastName";
            this.tbLastName.Size = new System.Drawing.Size(266, 20);
            this.tbLastName.TabIndex = 47;
            // 
            // tbFirstName
            // 
            this.tbFirstName.Location = new System.Drawing.Point(117, 98);
            this.tbFirstName.Name = "tbFirstName";
            this.tbFirstName.Size = new System.Drawing.Size(266, 20);
            this.tbFirstName.TabIndex = 46;
            // 
            // cbDepartID
            // 
            this.cbDepartID.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbDepartID.FormattingEnabled = true;
            this.cbDepartID.Location = new System.Drawing.Point(532, 100);
            this.cbDepartID.Name = "cbDepartID";
            this.cbDepartID.Size = new System.Drawing.Size(266, 21);
            this.cbDepartID.TabIndex = 48;
            // 
            // dtpBirthday
            // 
            this.dtpBirthday.Location = new System.Drawing.Point(532, 224);
            this.dtpBirthday.Name = "dtpBirthday";
            this.dtpBirthday.Size = new System.Drawing.Size(266, 20);
            this.dtpBirthday.TabIndex = 49;
            // 
            // lbBirthday
            // 
            this.lbBirthday.AutoSize = true;
            this.lbBirthday.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbBirthday.Location = new System.Drawing.Point(436, 224);
            this.lbBirthday.Name = "lbBirthday";
            this.lbBirthday.Size = new System.Drawing.Size(78, 20);
            this.lbBirthday.TabIndex = 50;
            this.lbBirthday.Text = "Ngày sinh";
            // 
            // frmCreateAccount
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 332);
            this.Controls.Add(this.lbBirthday);
            this.Controls.Add(this.dtpBirthday);
            this.Controls.Add(this.cbDepartID);
            this.Controls.Add(this.tbLastName);
            this.Controls.Add(this.tbFirstName);
            this.Controls.Add(this.lbDepartment);
            this.Controls.Add(this.lbLastName);
            this.Controls.Add(this.lbFirstName);
            this.Controls.Add(this.tbAddress);
            this.Controls.Add(this.tbID);
            this.Controls.Add(this.lbAddress);
            this.Controls.Add(this.lbID);
            this.Controls.Add(this.btDangNhap);
            this.Controls.Add(this.tbPassword);
            this.Controls.Add(this.tbLoginName);
            this.Controls.Add(this.lbPassword);
            this.Controls.Add(this.lbLoginName);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.cbKindAccount);
            this.Name = "frmCreateAccount";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btDangNhap;
        private System.Windows.Forms.ComboBox cbKindAccount;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label lbLoginName;
        private System.Windows.Forms.Label lbPassword;
        private System.Windows.Forms.TextBox tbLoginName;
        private System.Windows.Forms.TextBox tbPassword;
        private System.Windows.Forms.Label lbID;
        private System.Windows.Forms.Label lbAddress;
        private System.Windows.Forms.TextBox tbID;
        private System.Windows.Forms.TextBox tbAddress;
        private System.Windows.Forms.Label lbDepartment;
        private System.Windows.Forms.Label lbLastName;
        private System.Windows.Forms.Label lbFirstName;
        private System.Windows.Forms.TextBox tbLastName;
        private System.Windows.Forms.TextBox tbFirstName;
        private System.Windows.Forms.ComboBox cbDepartID;
        private System.Windows.Forms.DateTimePicker dtpBirthday;
        private System.Windows.Forms.Label lbBirthday;
    }
}