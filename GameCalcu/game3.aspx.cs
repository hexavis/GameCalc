using System;
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
            //This function will automatically set points allowed to 100 due to splatoon scoring.
            //Also if you use the back button the user inputed data will be added back into the textboxes.

            TextBoxFScore.Text = "100";

            if (playerScore > 0)
            {
                TextBoxPScore.Text = playerScore.ToString();
                TextBoxOScore.Text = opponentScore.ToString();
                TextBoxFScore.Text = pointsAllowed.ToString();
                TextBoxSpec.Text = specNum.ToString();
                if (gameStatus == 1)
                {
                    status.SelectedValue = "win";
                }
                else
                {
                    status.SelectedValue = "lose";
                }
            }
        }

        protected void nextB_Click(object sender, EventArgs e)
        {
            //Force validation, set the game information to necessary variables and then go to next page
            Page.Validate();
            if (Page.IsValid)
            {
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

        protected void NotOver_ServerValidate(object source, ServerValidateEventArgs args)
        {
            //validates that player score and opponent scores do not exceed allowed scores
            decimal allowP = System.Convert.ToDecimal(TextBoxFScore.Text);
            decimal playS = System.Convert.ToDecimal(TextBoxPScore.Text);
            decimal oppS = System.Convert.ToDecimal(TextBoxOScore.Text);
            decimal total = playS + oppS;

            if (total > allowP)
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }

        }

        protected void backB_Click(object sender, EventArgs e)
        {
            //Allows the user to go back a page.
            Response.Redirect("game2.aspx");
           
        }


    }
}