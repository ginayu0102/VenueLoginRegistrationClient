using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FanLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LoginButton_Click(object sender, EventArgs e)
    {
        FanLogins();
    }
    protected void FanLogins()
    {
        VenueLoginServiceReference.VenueLoginServiceClient vlc = new VenueLoginServiceReference.VenueLoginServiceClient();
        int key = vlc.FanLogin(UserNameTextBox.Text, PasswordTextBox.Text);
        if (key != -1)
        {

            Session["FanKey"] = key;
            Response.Redirect("FanFollowList.aspx");
        }
        else
        {
            ErrorLabel.Text = "Login Failed";
        }
    }
}