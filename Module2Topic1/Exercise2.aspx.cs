using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Module1Exercise1
{
    public partial class Exercise2 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitbtn_Click(object sender, EventArgs e)
        {
            string Fname = fname.Text;
            string Lname = lname.Text;
            int Age = Convert.ToInt32(age.Text);
            string Tix = ticket.SelectedValue;
            string Days = days.SelectedItem.Text;
            string[] Artists = new string[artists.Items.Count];
            for (int i = 0; i < artists.Items.Count; i++)
            {
                if (artists.Items[i].Selected)
                {
                    Artists[i] = artists.Items[i].Text;
                }
            }
            if (payment.HasFile)
            {
                string fileName = payment.FileName;
                string fileExtension = System.IO.Path.GetExtension(fileName).ToLower();
                if (fileExtension == ".jpg" || fileExtension == ".png")
                {
                    Response.Write("<script>alert('Successful');</script>");
                    payment.SaveAs(Server.MapPath("~/ProofOfPayment/" + fileName));
                }
                else {
                    Response.Write("<script>alert('Unsuccessful');</script>");
                }
            }
        }
    }
}