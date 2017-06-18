using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CharacterSheet_Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        CharacterText.Text = Game_Character_Details.Rows[0].Cells[1].Text.ToString();
        PlayerText.Text = Game_Character_Details.Rows[3].Cells[1].Text.ToString();
        LevelText.Text = Game_Character_Details.Rows[1].Cells[1].Text.ToString();
        ClassText.Text = Game_Character_Details.Rows[4].Cells[1].Text.ToString();
        SpeciesText.Text = Game_Character_Details.Rows[2].Cells[1].Text.ToString();
    }
}