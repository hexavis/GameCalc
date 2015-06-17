using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GameCalcu
{
    public partial class game4 : System.Web.UI.Page
    {

        public static int specNum, gameStatus = 0;
        public static decimal playerScore, opponentScore, pointsAllowed;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitB_Click(object sender, EventArgs e)
        {
            //gather and validate the information for game 4
            if (status.SelectedValue == "Win")
            {
                gameStatus++;
            }
           

            playerScore = playerScore + System.Convert.ToDecimal(TextBoxPScore.Text);
            opponentScore = opponentScore + System.Convert.ToDecimal(TextBoxOScore.Text);
            pointsAllowed = pointsAllowed + System.Convert.ToInt32(TextBoxFScore.Text);
            specNum = specNum + System.Convert.ToInt32(TextBoxSpec.Text);

            Server.Transfer("Summary.aspx", true);

           
        }
    }
}