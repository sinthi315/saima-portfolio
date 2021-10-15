using System;
using System.Net.Mail;

public partial class mail : System.Web.UI.Page
{
    public void Page_Load(object sender, EventArgs e)
    {
        string name = Request.Form["name"];
        string email = Request.Form["email"];
        string subject = Request.Form["subject"];
        string body = Request.Form["message"];
        try
        {
            MailMessage mailMessage = new MailMessage();
            mailMessage.To.Add("ss@saima-portfolio.somee.com");
            mailMessage.From = new MailAddress(email, name);
            mailMessage.Subject = subject;
            mailMessage.Body = body;
            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com");
            smtpClient.Send(mailMessage);
            Response.Write("E-mail sent!");
        }
        catch (Exception ex)
        {
            Response.Write("Could not send the e-mail - error: " + ex.Message);
        }
    }
}