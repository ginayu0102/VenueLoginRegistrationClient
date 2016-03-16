using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FanRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        SubmitRegistration();
    }

    protected void SubmitRegistration()
    {
        VenueLoginServiceReference.VenueLoginServiceClient vrs = new VenueLoginServiceReference.VenueLoginServiceClient();

        VenueLoginServiceReference.FanLite fLite = new VenueLoginServiceReference.FanLite();

        fLite.FName = NameTextBox.Text;
        fLite.FEmail = EmailTextBox.Text;
        fLite.FUsername = UserNameTextBox.Text;
        fLite.FPassword = PasswordTextBox.Text;

        int result = vrs.FanRegistration(fLite);

        if (result != -1)
        {
            ResultLabel.Text = "Registration Complete";
            //Response.Redirect("FanFollowList.aspx");
        }
        else
        {
            ResultLabel.Text = "Registration Error";
        }
        
        Response.Redirect("FanFollowList.aspx");
    }
}