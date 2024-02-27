using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Module1Exercise1
{
    public partial class Exercise3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // TODO 3.3 Set the text value of the finalGrade label to "Submit your grade percentage to see your final grade!". Watch out for post backs
            if (!IsPostBack)
            {
                Gradetxt.Text = "Submit your grade percentage to see your final grade!";
            }
        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            string percentage = percentageGrade.Text;
            if (int.TryParse(percentage, out int equi) && equi >= 0 && equi <= 100)
            {
                double[] gradeRanges = { 96.00, 91.51, 87.01, 82.51, 78.01, 73.51, 69.01, 64.51, 60.00 };
                string[] grades = { "1.00", "1.25", "1.50", "1.75", "2.00", "2.25", "2.50", "2.75", "3.00" };

                for (int i = 0; i < gradeRanges.Length; i++)
                {
                    if (equi >= gradeRanges[i])
                    {
                        finalGrade.Text = grades[i];
                        if (grades[i] == "1.00")
                        {
                            Response.Write($"<script>alert('Congratulations! Your Final grade is {finalGrade.Text}!')</script>");
                        }
                        return;
                    }
                }
                finalGrade.Text = "5.00";
            }
            else
            {finalGrade.Text = "Invalid Input";}
        }
    }
}