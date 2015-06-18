﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GameCalcu
{
    public partial class game3 : System.Web.UI.Page
    {
        public static int specNum, gameStatus = 0;
        public static decimal playerScore, opponentScore, pointsAllowed;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void nextB_Click(object sender, EventArgs e)
        {
            //gather and validate the information for game 1

            if (status.SelectedValue == "win")
            {
                gameStatus = 1;
            }


            playerScore = System.Convert.ToDecimal(TextBoxPScore.Text);
            opponentScore = System.Convert.ToDecimal(TextBoxOScore.Text);
            pointsAllowed = System.Convert.ToInt32(TextBoxFScore.Text);
            specNum = System.Convert.ToInt32(TextBoxSpec.Text);


            Response.Redirect("game4.aspx");
        }
    }
}