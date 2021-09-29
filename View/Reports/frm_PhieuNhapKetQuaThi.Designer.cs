
namespace THITN.View
{
    partial class frm_PhieuNhapKetQuaThi
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
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.cbSubjects = new System.Windows.Forms.ComboBox();
            this.sPGetSubjectOfStudentBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.tHITNDataSet = new THITN.THITNDataSet();
            this.mONHOCBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.cbTime = new System.Windows.Forms.ComboBox();
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.mONHOCTableAdapter = new THITN.THITNDataSetTableAdapters.MONHOCTableAdapter();
            this.sP_GetSubjectOfStudentTableAdapter = new THITN.THITNDataSetTableAdapters.SP_GetSubjectOfStudentTableAdapter();
            this.label4 = new System.Windows.Forms.Label();
            this.cbCoSo = new System.Windows.Forms.ComboBox();
            this.cbUsername = new System.Windows.Forms.ComboBox();
            ((System.ComponentModel.ISupportInitialize)(this.sPGetSubjectOfStudentBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.tHITNDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.mONHOCBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(232, 15);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(67, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Mã sinh viên";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(401, 15);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(49, 13);
            this.label2.TabIndex = 1;
            this.label2.Text = "Môn học";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(626, 15);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(39, 13);
            this.label3.TabIndex = 2;
            this.label3.Text = "Lần thi";
            // 
            // cbSubjects
            // 
            this.cbSubjects.DataSource = this.sPGetSubjectOfStudentBindingSource;
            this.cbSubjects.DisplayMember = "TENMH";
            this.cbSubjects.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbSubjects.FormattingEnabled = true;
            this.cbSubjects.Location = new System.Drawing.Point(456, 12);
            this.cbSubjects.Name = "cbSubjects";
            this.cbSubjects.Size = new System.Drawing.Size(164, 21);
            this.cbSubjects.TabIndex = 3;
            this.cbSubjects.ValueMember = "MAMH";
            this.cbSubjects.SelectedIndexChanged += new System.EventHandler(this.cbSubjects_SelectedIndexChanged);
            // 
            // sPGetSubjectOfStudentBindingSource
            // 
            this.sPGetSubjectOfStudentBindingSource.DataMember = "SP_GetSubjectOfStudent";
            this.sPGetSubjectOfStudentBindingSource.DataSource = this.tHITNDataSet;
            // 
            // tHITNDataSet
            // 
            this.tHITNDataSet.DataSetName = "THITNDataSet";
            this.tHITNDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // mONHOCBindingSource
            // 
            this.mONHOCBindingSource.DataMember = "MONHOC";
            this.mONHOCBindingSource.DataSource = this.tHITNDataSet;
            // 
            // cbTime
            // 
            this.cbTime.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbTime.FormattingEnabled = true;
            this.cbTime.Location = new System.Drawing.Point(671, 12);
            this.cbTime.Name = "cbTime";
            this.cbTime.Size = new System.Drawing.Size(61, 21);
            this.cbTime.TabIndex = 4;
            this.cbTime.SelectedIndexChanged += new System.EventHandler(this.comboBox2_SelectedIndexChanged);
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(287, 62);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(72, 20);
            this.button1.TabIndex = 5;
            this.button1.Text = "Xem";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(456, 62);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(72, 20);
            this.button2.TabIndex = 7;
            this.button2.Text = "Thoát";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // mONHOCTableAdapter
            // 
            this.mONHOCTableAdapter.ClearBeforeFill = true;
            // 
            // sP_GetSubjectOfStudentTableAdapter
            // 
            this.sP_GetSubjectOfStudentTableAdapter.ClearBeforeFill = true;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(13, 13);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(55, 13);
            this.label4.TabIndex = 8;
            this.label4.Text = "Chi nhánh";
            // 
            // cbCoSo
            // 
            this.cbCoSo.DisplayMember = "MAMH";
            this.cbCoSo.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbCoSo.FormattingEnabled = true;
            this.cbCoSo.Location = new System.Drawing.Point(74, 10);
            this.cbCoSo.Name = "cbCoSo";
            this.cbCoSo.Size = new System.Drawing.Size(152, 21);
            this.cbCoSo.TabIndex = 9;
            this.cbCoSo.ValueMember = "MAMH";
            this.cbCoSo.SelectedIndexChanged += new System.EventHandler(this.cbCoSo_SelectedIndexChanged);
            // 
            // cbUsername
            // 
            this.cbUsername.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbUsername.FormattingEnabled = true;
            this.cbUsername.Location = new System.Drawing.Point(305, 10);
            this.cbUsername.Name = "cbUsername";
            this.cbUsername.Size = new System.Drawing.Size(90, 21);
            this.cbUsername.TabIndex = 10;
            this.cbUsername.SelectedIndexChanged += new System.EventHandler(this.cbUsername_SelectedIndexChanged);
            // 
            // frm_PhieuNhapKetQuaThi
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 106);
            this.Controls.Add(this.cbUsername);
            this.Controls.Add(this.cbCoSo);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.cbTime);
            this.Controls.Add(this.cbSubjects);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "frm_PhieuNhapKetQuaThi";
            this.Text = "frm_PhieuNhapKetQuaThi";
            this.Load += new System.EventHandler(this.frm_PhieuNhapKetQuaThi_Load);
            ((System.ComponentModel.ISupportInitialize)(this.sPGetSubjectOfStudentBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.tHITNDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.mONHOCBindingSource)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.ComboBox cbSubjects;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.ComboBox cbTime;
        private THITNDataSet tHITNDataSet;
        private System.Windows.Forms.BindingSource mONHOCBindingSource;
        private THITNDataSetTableAdapters.MONHOCTableAdapter mONHOCTableAdapter;
        private System.Windows.Forms.BindingSource sPGetSubjectOfStudentBindingSource;
        private THITNDataSetTableAdapters.SP_GetSubjectOfStudentTableAdapter sP_GetSubjectOfStudentTableAdapter;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.ComboBox cbCoSo;
        private System.Windows.Forms.ComboBox cbUsername;
    }
}