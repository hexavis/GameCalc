using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace week5
{
    public partial class Default : System.Web.UI.Page
    {

        //set all the information
        decimal playerScore, opponentScore, pointsAllowed;
        int specNum, winCount, loseCount;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void beginB_Click(object sender, EventArgs e)
        {
            //switch to first game input page
            Server.Transfer("game1.aspx", true);
        }
        
    }
}