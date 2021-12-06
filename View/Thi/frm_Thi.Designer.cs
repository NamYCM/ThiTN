
namespace THITN.View
{
    partial class frm_Thi
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
            this.txtCauHoi = new System.Windows.Forms.TextBox();
            this.radioGroup1 = new DevExpress.XtraEditors.RadioGroup();
            this.btnA = new System.Windows.Forms.RadioButton();
            this.btnB = new System.Windows.Forms.RadioButton();
            this.btnC = new System.Windows.Forms.RadioButton();
            this.btnD = new System.Windows.Forms.RadioButton();
            this.btnP = new System.Windows.Forms.Button();
            this.btnN = new System.Windows.Forms.Button();
            this.btnExit = new System.Windows.Forms.Button();
            this.lbPhut = new System.Windows.Forms.Label();
            this.lbHaiCham = new System.Windows.Forms.Label();
            this.lbGiay = new System.Windows.Forms.Label();
            this.lbCauA = new System.Windows.Forms.Label();
            this.lbCauB = new System.Windows.Forms.Label();
            this.lbCauD = new System.Windows.Forms.Label();
            this.lbCauC = new System.Windows.Forms.Label();
            this.txtSTT = new System.Windows.Forms.TextBox();
            this.lbT = new System.Windows.Forms.Label();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.radioGroup1.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(385, 31);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(74, 21);
            this.label1.TabIndex = 0;
            this.label1.Text = "Câu hỏi";
            // 
            // txtCauHoi
            // 
            this.txtCauHoi.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.txtCauHoi.Location = new System.Drawing.Point(147, 55);
            this.txtCauHoi.Multiline = true;
            this.txtCauHoi.Name = "txtCauHoi";
            this.txtCauHoi.ReadOnly = true;
            this.txtCauHoi.Size = new System.Drawing.Size(676, 164);
            this.txtCauHoi.TabIndex = 0;
            this.txtCauHoi.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // radioGroup1
            // 
            this.radioGroup1.Location = new System.Drawing.Point(147, 236);
            this.radioGroup1.Name = "radioGroup1";
            this.radioGroup1.Size = new System.Drawing.Size(676, 185);
            this.radioGroup1.TabIndex = 1;
            // 
            // btnA
            // 
            this.btnA.AutoSize = true;
            this.btnA.Location = new System.Drawing.Point(195, 275);
            this.btnA.Name = "btnA";
            this.btnA.Size = new System.Drawing.Size(37, 21);
            this.btnA.TabIndex = 2;
            this.btnA.TabStop = true;
            this.btnA.Text = "A";
            this.btnA.UseVisualStyleBackColor = true;
            this.btnA.Click += new System.EventHandler(this.btnA_Click);
            // 
            // btnB
            // 
            this.btnB.AutoSize = true;
            this.btnB.Location = new System.Drawing.Point(508, 275);
            this.btnB.Name = "btnB";
            this.btnB.Size = new System.Drawing.Size(37, 21);
            this.btnB.TabIndex = 3;
            this.btnB.TabStop = true;
            this.btnB.Text = "B";
            this.btnB.UseVisualStyleBackColor = true;
            this.btnB.Click += new System.EventHandler(this.btnB_Click);
            // 
            // btnC
            // 
            this.btnC.AutoSize = true;
            this.btnC.Location = new System.Drawing.Point(195, 350);
            this.btnC.Name = "btnC";
            this.btnC.Size = new System.Drawing.Size(38, 21);
            this.btnC.TabIndex = 4;
            this.btnC.TabStop = true;
            this.btnC.Text = "C";
            this.btnC.UseVisualStyleBackColor = true;
            this.btnC.Click += new System.EventHandler(this.btnC_Click);
            // 
            // btnD
            // 
            this.btnD.AutoSize = true;
            this.btnD.Location = new System.Drawing.Point(508, 350);
            this.btnD.Name = "btnD";
            this.btnD.Size = new System.Drawing.Size(39, 21);
            this.btnD.TabIndex = 5;
            this.btnD.TabStop = true;
            this.btnD.Text = "D";
            this.btnD.UseVisualStyleBackColor = true;
            this.btnD.Click += new System.EventHandler(this.btnD_Click);
            // 
            // btnP
            // 
            this.btnP.Location = new System.Drawing.Point(176, 439);
            this.btnP.Name = "btnP";
            this.btnP.Size = new System.Drawing.Size(118, 52);
            this.btnP.TabIndex = 6;
            this.btnP.Text = "Câu trước";
            this.btnP.UseVisualStyleBackColor = true;
            this.btnP.Click += new System.EventHandler(this.btnP_Click);
            // 
            // btnN
            // 
            this.btnN.Location = new System.Drawing.Point(673, 439);
            this.btnN.Name = "btnN";
            this.btnN.Size = new System.Drawing.Size(119, 52);
            this.btnN.TabIndex = 7;
            this.btnN.Text = "Câu sau";
            this.btnN.UseVisualStyleBackColor = true;
            this.btnN.Click += new System.EventHandler(this.btnN_Click);
            // 
            // btnExit
            // 
            this.btnExit.BackColor = System.Drawing.Color.Red;
            this.btnExit.Font = new System.Drawing.Font("Times New Roman", 10.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnExit.ForeColor = System.Drawing.Color.White;
            this.btnExit.Location = new System.Drawing.Point(870, 23);
            this.btnExit.Name = "btnExit";
            this.btnExit.Size = new System.Drawing.Size(154, 45);
            this.btnExit.TabIndex = 8;
            this.btnExit.Text = "Nộp bài/ Thoát";
            this.btnExit.UseVisualStyleBackColor = false;
            this.btnExit.Click += new System.EventHandler(this.btnExit_Click);
            // 
            // lbPhut
            // 
            this.lbPhut.AutoSize = true;
            this.lbPhut.Font = new System.Drawing.Font("Tahoma", 10.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbPhut.Location = new System.Drawing.Point(32, 9);
            this.lbPhut.Name = "lbPhut";
            this.lbPhut.Size = new System.Drawing.Size(34, 23);
            this.lbPhut.TabIndex = 9;
            this.lbPhut.Text = "....";
            // 
            // lbHaiCham
            // 
            this.lbHaiCham.AutoSize = true;
            this.lbHaiCham.Font = new System.Drawing.Font("Tahoma", 10.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbHaiCham.Location = new System.Drawing.Point(62, 9);
            this.lbHaiCham.Name = "lbHaiCham";
            this.lbHaiCham.Size = new System.Drawing.Size(17, 23);
            this.lbHaiCham.TabIndex = 10;
            this.lbHaiCham.Text = ":";
            // 
            // lbGiay
            // 
            this.lbGiay.AutoSize = true;
            this.lbGiay.Font = new System.Drawing.Font("Tahoma", 10.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbGiay.Location = new System.Drawing.Point(72, 9);
            this.lbGiay.Name = "lbGiay";
            this.lbGiay.Size = new System.Drawing.Size(34, 23);
            this.lbGiay.TabIndex = 11;
            this.lbGiay.Text = "....";
            // 
            // lbCauA
            // 
            this.lbCauA.AutoSize = true;
            this.lbCauA.Location = new System.Drawing.Point(239, 275);
            this.lbCauA.Name = "lbCauA";
            this.lbCauA.Size = new System.Drawing.Size(136, 17);
            this.lbCauA.TabIndex = 12;
            this.lbCauA.Text = "................................";
            // 
            // lbCauB
            // 
            this.lbCauB.AutoSize = true;
            this.lbCauB.Location = new System.Drawing.Point(551, 277);
            this.lbCauB.Name = "lbCauB";
            this.lbCauB.Size = new System.Drawing.Size(152, 17);
            this.lbCauB.TabIndex = 13;
            this.lbCauB.Text = "....................................";
            // 
            // lbCauD
            // 
            this.lbCauD.AutoSize = true;
            this.lbCauD.Location = new System.Drawing.Point(553, 352);
            this.lbCauD.Name = "lbCauD";
            this.lbCauD.Size = new System.Drawing.Size(148, 17);
            this.lbCauD.TabIndex = 14;
            this.lbCauD.Text = "...................................";
            // 
            // lbCauC
            // 
            this.lbCauC.AutoSize = true;
            this.lbCauC.Location = new System.Drawing.Point(239, 352);
            this.lbCauC.Name = "lbCauC";
            this.lbCauC.Size = new System.Drawing.Size(176, 17);
            this.lbCauC.TabIndex = 15;
            this.lbCauC.Text = "..........................................";
            // 
            // txtSTT
            // 
            this.txtSTT.Font = new System.Drawing.Font("Tahoma", 10.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtSTT.Location = new System.Drawing.Point(465, 23);
            this.txtSTT.Name = "txtSTT";
            this.txtSTT.ReadOnly = true;
            this.txtSTT.Size = new System.Drawing.Size(41, 29);
            this.txtSTT.TabIndex = 16;
            this.txtSTT.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // lbT
            // 
            this.lbT.AutoSize = true;
            this.lbT.Location = new System.Drawing.Point(888, 134);
            this.lbT.Name = "lbT";
            this.lbT.Size = new System.Drawing.Size(42, 17);
            this.lbT.TabIndex = 17;
            this.lbT.Text = "label2";
            // 
            // timer1
            // 
            this.timer1.Tick += new System.EventHandler(this.timer1_Tick);
            // 
            // frm_Thi
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1182, 568);
            this.Controls.Add(this.lbT);
            this.Controls.Add(this.txtSTT);
            this.Controls.Add(this.lbCauC);
            this.Controls.Add(this.lbCauD);
            this.Controls.Add(this.lbCauB);
            this.Controls.Add(this.lbCauA);
            this.Controls.Add(this.lbGiay);
            this.Controls.Add(this.lbHaiCham);
            this.Controls.Add(this.lbPhut);
            this.Controls.Add(this.btnExit);
            this.Controls.Add(this.btnN);
            this.Controls.Add(this.btnP);
            this.Controls.Add(this.btnD);
            this.Controls.Add(this.btnC);
            this.Controls.Add(this.btnB);
            this.Controls.Add(this.btnA);
            this.Controls.Add(this.radioGroup1);
            this.Controls.Add(this.txtCauHoi);
            this.Controls.Add(this.label1);
            this.Name = "frm_Thi";
            this.Text = "frm_Thi";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.frm_Thi_FormClosing);
            ((System.ComponentModel.ISupportInitialize)(this.radioGroup1.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtCauHoi;
        private DevExpress.XtraEditors.RadioGroup radioGroup1;
        private System.Windows.Forms.RadioButton btnA;
        private System.Windows.Forms.RadioButton btnB;
        private System.Windows.Forms.RadioButton btnC;
        private System.Windows.Forms.RadioButton btnD;
        private System.Windows.Forms.Button btnP;
        private System.Windows.Forms.Button btnN;
        private System.Windows.Forms.Button btnExit;
        private System.Windows.Forms.Label lbPhut;
        private System.Windows.Forms.Label lbHaiCham;
        private System.Windows.Forms.Label lbGiay;
        private System.Windows.Forms.Label lbCauA;
        private System.Windows.Forms.Label lbCauB;
        private System.Windows.Forms.Label lbCauD;
        private System.Windows.Forms.Label lbCauC;
        private System.Windows.Forms.TextBox txtSTT;
        private System.Windows.Forms.Label lbT;
        private System.Windows.Forms.Timer timer1;
    }
}