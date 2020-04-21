using Microsoft.SqlServer.Server;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace Clr
{
    public class IsRegexMatch
    {
       
        public static SqlBoolean MatchRegex(SqlString input, SqlString pattern)
        {
            SqlBoolean retval = SqlBoolean.Null;

            if (!input.IsNull && !pattern.IsNull)
            {
                bool result = Regex.IsMatch(input.Value, pattern.Value);
                retval = result ? new SqlBoolean(true) : new SqlBoolean(false);
            }

            return retval;
        }



        [SqlFunction(FillRowMethodName = "FillRow", TableDefinition = "compare nvarchar(500)")]
        public static IEnumerable InitMethod(string text, string pattern)
        {
            List<string> list = new List<string>();

            if (!string.IsNullOrEmpty(text) && !string.IsNullOrEmpty(pattern))
            {
                foreach (Match compare in Regex.Matches(text, pattern))
                {
                    list.Add(compare.Value);
                }
            }

            return list;
        }
        public static void FillRow(object obj, out SqlString compare)
        {
            compare = (SqlString)obj;
        }
    }
}
