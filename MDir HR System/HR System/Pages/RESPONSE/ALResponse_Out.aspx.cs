using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HR_Salaries.Pages.RESPONSE
{
    public partial class ALResponse_Out : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string csvPath = Server.MapPath("~/Files/") + Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(csvPath);

                //Create a DataTable.  
                DataTable dt = new DataTable();
                dt.Columns.Add("RECORD_DATE", typeof(string));
                dt.Columns.Add("INSTITUTION_NUMBER", typeof(string));
                dt.Columns.Add("Account_Number", typeof(string));
                dt.Columns.Add("LAST_NAME", typeof(string));
                dt.Columns.Add("FIRST_NAME", typeof(string));
                dt.Columns.Add("FATHER_NAME", typeof(string));
                dt.Columns.Add("SHORT_NAME", typeof(string));
                dt.Columns.Add("COUNTER_BANK_ACCOUNT", typeof(string));
                dt.Columns.Add("EMBOSS_LINE_2", typeof(string));
                dt.Columns.Add("TEL_PRIVATE", typeof(string));
                dt.Columns.Add("PASSPORT_NUMBER", typeof(string));
                dt.Columns.Add("DRIVING_LICENSE", typeof(string));
                dt.Columns.Add("BIRTH_DATE", typeof(string));
                dt.Columns.Add("BIRTH_PLACE", typeof(string));
                dt.Columns.Add("CLIENT_COUNTRY", typeof(string));
                dt.Columns.Add("CLIENT_CITY", typeof(string));
                dt.Columns.Add("NATIONALITY", typeof(string));
                dt.Columns.Add("ADR1_NAME_OF_CLIENT", typeof(string));
                dt.Columns.Add("ADR2STREET1", typeof(string));
                dt.Columns.Add("ADR3STREET2", typeof(string));
                dt.Columns.Add("ADR4_STATE", typeof(string));
                dt.Columns.Add("ADR5_OTHER", typeof(string));
                dt.Columns.Add("POST_CODE1", typeof(string));
                dt.Columns.Add("ADDRESS_CLIENT_CITY1", typeof(string));
                dt.Columns.Add("EMAIL_ADDRESS1", typeof(string));
                dt.Columns.Add("Address_Category", typeof(string));
                dt.Columns.Add("DELIVERY_METHOD", typeof(string));
                dt.Columns.Add("TEL_WORK", typeof(string));
                dt.Columns.Add("FAX_WORK", typeof(string));
                dt.Columns.Add("MOBILE_NO2", typeof(string));
                dt.Columns.Add("EMAIL_ADDRESS2", typeof(string));
                dt.Columns.Add("ID_NUMBER", typeof(string));
                dt.Columns.Add("OUR_REFERENCE", typeof(string));
                dt.Columns.Add("EMBOSS_LINE_3", typeof(string));
                dt.Columns.Add("Domiciliation", typeof(string));
                dt.Columns.Add("Settlement_Bank_Name", typeof(string));

                //Read the contents of CSV file.  
                string csvData = File.ReadAllText(csvPath);

                //Execute a loop over the rows.  
                int j = 0;
                foreach (string row in csvData.Split('\n'))
                {
                    if (!string.IsNullOrEmpty(row))
                    {
                        int i = 0;
                        //Execute a loop over the columns names.
                        if (j == 0)
                        {
                            ///////////////////////////////
                                    //foreach (string cell in row.Split(new string[] { "<!>" }, StringSplitOptions.None))
                                    //{
                                    //    try
                                    //    {
                                    //        Convert.ToDouble(cell);
                                    //        dt.Columns.Add(cell, typeof(Double));
                                    //    }
                                    //    catch
                                    //    {
                                    //        dt.Columns.Add(cell, typeof(String));
                                    //    }
                                    //    i++;
                                    //}
                            /////////////////////////////////
                        }
                        else
                        {
                            dt.Rows.Add();
                            foreach (string cell in row.Split(new string[] { "<!>" }, StringSplitOptions.None))
                            {
                                if (cell == "")
                                {
                                    dt.Rows[dt.Rows.Count - 1][i] = 0;
                                }
                                else
                                {
                                    dt.Rows[dt.Rows.Count - 1][i] = cell.Trim();
                                }
                                i++;
                            }
                        }
                        j++;
                    }
                }

                SqlConnection con = MDirMaster.con;
                SqlBulkCopy bulkCopy = new SqlBulkCopy(con);

                bulkCopy.DestinationTableName = "Response_Out_New";

                try
                {
                    con.Open();
                    foreach (DataColumn c in dt.Columns)
                        bulkCopy.ColumnMappings.Add(c.ColumnName, c.ColumnName);
                    bulkCopy.WriteToServer(dt);
                }
                catch (Exception ex)
                {
                    lblMessage.Text = ex.Message;
                }
                finally
                {
                    con.Close();
                }
            }
            else
            {
                lblMessage.Text = "يرجى تحديد الملف!";
            }
        }
    }
}