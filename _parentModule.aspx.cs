using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net;
using System.Net.Mail;

namespace educationalProject
{
    public partial class _parentModule : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                MailMessage mm = new MailMessage("mahajanas.2k24@gmail.com", txtEmailId.Text);
                mm.Subject = txtTitle.Text;
                mm.Body = txtDesc.Text;

                mm.IsBodyHtml = false;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                smtp.UseDefaultCredentials = true;
                NetworkCredential NetworkCred = new NetworkCredential("mahajanas.2k24@gmail.com", "xbep jyjc xcpk vtzd");
                smtp.Credentials = NetworkCred;

                smtp.Port = 587;
                smtp.Send(mm);

                ClientScript.RegisterStartupScript(this.GetType(), "Key", "<Script>alert('Notifications Sent Successfully')</script>");
                txtEmailId.Text = string.Empty;
                txtTitle.Text = string.Empty;
                txtDesc.Text = string.Empty;
            }
            catch
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Key", "<Script>alert('Oops Something went wrong! Check Connection')</script>");
            }
        }
    }
}