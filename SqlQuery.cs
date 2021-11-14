using System;
using System.Collections.Generic;
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
    }
}
