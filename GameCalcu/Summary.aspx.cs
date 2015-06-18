using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GameCalcu
{
    public partial class Summary : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            decimal wins = game1.gameStatus + game2.gameStatus + game3.gameStatus + game4.gameStatus;
            nWins.Text = wins.ToString();

            decimal lose = 4 - wins;
            nLose.Text = lose.ToString();


            decimal per = Decimal.Divide(wins, 4);
            winPer.Text = per.ToString();

            decimal pscore = game1.playerScore + game2.playerScore + game3.playerScore + game4.playerScore;
            cpScore.Text = pscore.ToString();

            decimal oscore = game1.opponentScore + game2.opponentScore + game3.opponentScore + game4.opponentScore;
            coScore.Text = oscore.ToString();

            decimal allowscore = game1.pointsAllowed + game2.pointsAllowed + game3.pointsAllowed + game4.pointsAllowed;
            allowScore.Text = allowscore.ToString();

            decimal diff = pscore - oscore;
            scoreDif.Text = diff.ToString();

            decimal specNum = game1.specNum + game2.specNum + game3.specNum + game4.specNum;
            totalSpec.Text = specNum.ToString();

            decimal avg = specNum / 4;
            avgSpec.Text = avg.ToString();
        }

        protected void restart_Click(object sender, EventArgs e)
        {
            //Start the process over again. RESET ALL VARIABLES
            Server.Transfer("Default.aspx", true);
        }

    }
}