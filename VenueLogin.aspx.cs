﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LoginButton_Click(object sender, EventArgs e)
    {
        VenueLogin();
    }

    protected void VenueLogin()
    {
        VenueLoginServiceReference.VenueLoginServiceClient vlc = new VenueLoginServiceReference.VenueLoginServiceClient();
        int key = vlc.VenueLogin(UserNameTextBox.Text, PasswordTextBox.Text);
        if (key != -1)
        {
            ErrorLabel.Text = "Welcome!";
            Session["VenueKey"] = key;
            Response.Redirect("AddShow.aspx");
        }
        else 
        {
            ErrorLabel.Text = "Login Failed";
        }
    }
}