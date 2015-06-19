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
            //Does all the calculations for the summary pages.

            //Calculates amount of wins
            decimal wins = game1.gameStatus + game2.gameStatus + game3.gameStatus + game4.gameStatus;
            nWins.Text = wins.ToString();

            //Calculates the amount of loses
            decimal lose = 4 - wins;
            nLose.Text = lose.ToString();

            //Calculates the win percentage
            decimal per = Decimal.Divide(wins, 4);
            winPer.Text = per.ToString();

            //Calculates the total player score
            decimal pscore = game1.playerScore + game2.playerScore + game3.playerScore + game4.playerScore;
            cpScore.Text = pscore.ToString();

            //Calculates the total opponent score
            decimal oscore = game1.opponentScore + game2.opponentScore + game3.opponentScore + game4.opponentScore;
            coScore.Text = oscore.ToString();

            //Calculates the total allowed score
            decimal allowscore = game1.pointsAllowed + game2.pointsAllowed + game3.pointsAllowed + game4.pointsAllowed;
            allowScore.Text = allowscore.ToString();

            //Calculates the score differential
            decimal diff = pscore - allowscore;
            scoreDif.Text = diff.ToString();

            //Calculates the total number of spectators
            decimal specNum = game1.specNum + game2.specNum + game3.specNum + game4.specNum;
            totalSpec.Text = specNum.ToString();

            //Calculates the average number of spectators
            decimal avg = specNum / 4;
            avgSpec.Text = avg.ToString();
        }

        protected void restart_Click(object sender, EventArgs e)
        {
            //Start the process over again. RESET All.
            game1.playerScore = -1;
            game1.opponentScore = -1;
            game1.gameStatus = -1;
            game1.pointsAllowed = -1;
            game1.specNum = -1;

            game2.playerScore =-1;
            game2.opponentScore = -1;
            game2.gameStatus = -1;
            game2.pointsAllowed = -1;
            game2.specNum = -1;

            game3.playerScore = -1;
            game3.opponentScore = -1;
            game3.gameStatus = -1;
            game3.pointsAllowed = -1;
            game3.specNum = -1;

            game4.playerScore = -1;
            game4.playerScore = -1;
            game4.opponentScore = -1;
            game4.gameStatus = -1;
            game4.pointsAllowed = -1;
            game4.specNum = -1;


            Server.Transfer("Default.aspx", true);

            


        }

    }
}