using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace THITN
{
    public static class SqlQuery
    {
        public static int IsEnoughQuestion(String maMH, String level, int quantity)
        {
            int cauHoiThieu = 0;

            String query = "Exec sp_SLCauHoiThieu '" + maMH + "', '" + level + "', '" + quantity + "'";
            SqlDataReader reader = Program.ExecSqlDataReader(query);

            try
            {
                if (reader.Read())
                {
                    cauHoiThieu = reader.GetInt32(0);
                }
            }
            catch (Exception)
            {
                cauHoiThieu = -1;
            }

            reader.Close(); // <- too easy to forget
            reader.Dispose(); // <- too easy to forget

            return cauHoiThieu;
        }

        public static bool RegisterIsExists(String maLop, String maMH, int time)
        {
            String code = maLop + "', '" + maMH + "', '" + time;
            return CodeIsExist("sp_CheckRegisterIsExists", code);
        }
        private static bool CodeIsExist(String sp, String code)
        {
            String query = "Exec " + sp + " '" + code + "'";
            SqlDataReader reader = Program.ExecSqlDataReader(query);

            while (reader.Read())
            {
                int result = reader.GetInt32(0);

                if (result == 1)
                {
                    reader.Close(); // <- too easy to forget
                    reader.Dispose(); // <- too easy to forget
                    return true;
                }
            }
            reader.Close(); // <- too easy to forget
            reader.Dispose(); // <- too easy to forget
            return false;
        }

        public static List<String> getInfoSV(String maSV)
        {
            List<String> list = new List<String>();
            String query = "Exec sp_GetInfoSV '" + maSV+"'";
            SqlDataReader reader = Program.ExecSqlDataReader(query);
            try
            { 
                while(reader.Read())
                {
                    list.Add(reader.GetString(0));
                    list.Add(reader.GetString(1));
                    list.Add(reader.GetString(2));
                    list.Add(reader.GetString(3));
                    list.Add(reader.GetString(4));
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("lỗi"+ ex.Message);
            }
            reader.Close(); // <- too easy to forget
            reader.Dispose(); // <- too easy to forget
            return list;
        }

        public static DataTable getMH(String maLop)
        {
            DataTable table = new DataTable();
            String query = "Exec sp_GetMH '" + maLop + "'";
            table = Program.ExecSqlDataTable(query);
            return table;
        }

        public static DataTable getTableGVDK(String maSV,String maLop,String maMH,int lan, String ngayThi)
        {
            DataTable table = new DataTable();
            String query = "exec [dbo].[sp_GetGVDKtheoSV] '"+maSV+"','"+maLop+"','"+maMH+"',"+lan+",'"+ngayThi+"'";
            table = Program.ExecSqlDataTable(query);
            return table;
        }

        public static List<CauHoi> layCauHoi(String maMH, String trinhDo, int SL)
        {
            List<CauHoi> list = new List<CauHoi>();
            String query = "exec [dbo].[sp_GetQuestion] '"+maMH+"','"+trinhDo+"',"+SL;
            SqlDataReader reader = Program.ExecSqlDataReader(query);
            try
            {
                while (reader.Read())
                {
                    CauHoi cauhoi = new CauHoi();
                    cauhoi.maCauHoi = reader.GetInt32(0);
                    cauhoi.cauHoi = reader.GetString(1);
                    cauhoi.A = reader.GetString(2);
                    cauhoi.B = reader.GetString(3);
                    cauhoi.C = reader.GetString(4);
                    cauhoi.D = reader.GetString(5);
                    cauhoi.TrueAnswer = reader.GetString(6);
                    cauhoi.YourAnswer = "";
                    list.Add(cauhoi);
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("lỗi" + ex.Message);
            }
            reader.Close(); // <- too easy to forget
            reader.Dispose(); // <- too easy to forget
            return list;
        }

        public static int updateBangDiem(String maSV,String maMH,int lan,String ngayThi,String diem)
        {
            String query = "exec [dbo].[sp_UpdateBangDiem] '"+maSV+"','"+maMH+"',"+lan+",'"+ngayThi+"', "+diem;
            //Console.WriteLine(query);
            int value = Program.ExecSqlNonQuery(query);
            return value;
        }
        public static int getBaiThi(String maSV, String maMH, int lan)
        {
            int baiThi = 0;
            String query = "exec [dbo].[sp_GetBaiThi] '" + maSV + "','" + maMH + "'," + lan ;
            SqlDataReader reader = Program.ExecSqlDataReader(query);
            try
            {
                while (reader.Read())
                { 
                    baiThi = reader.GetInt32(0);
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return 0;
            }
            reader.Close(); // <- too easy to forget
            reader.Dispose(); // <- too easy to forget
            return baiThi;
        }
        public static int updateBaiThi(int baiThi, int maCH,String daChon, int STT)
        {
            String query = "exec [dbo].[sp_UpdateBaiThi] "+baiThi+","+maCH+","+daChon+", "+STT;
            //Console.WriteLine(query);
            int value = Program.ExecSqlNonQuery(query);
            return value;
        }

        //end class
    }
}
