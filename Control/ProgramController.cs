using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace THITN.Control
{
    
    class ProgramController
    {
        private static ProgramController instance;

        public static ProgramController Instance
        {
            get
            {
                if (instance == null)
                    instance = new ProgramController();
                return instance;
            }
        }

        public void LogOut ()
        {
            //Program.mCoSo = 0;
            Program.loginDN = "";
            Program.passwordDN = "";
            Program.myReader = null;
            Program.mlogin = null;
            Program.password = null;
            Program.username = null;
            Program.mHoten = null;
            Program.mGroup = null;
            Program.servername = "";
            Program.frmMain.MaGVSV.Text = "Mã giáo viên/ sinh viên";
            Program.frmMain.HoTen.Text = "Họ tên";
            Program.frmMain.Nhom.Text = "Nhóm";
            Program.frmMain.HideMenu();
        }
    }
}
