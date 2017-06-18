<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="CharacterSheet_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>asdf</title>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    Character Name:<asp:TextBox ID="CharacterText" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Player Name:
    <asp:TextBox ID="PlayerText" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Level:
    <asp:TextBox ID="LevelText" runat="server"></asp:TextBox>
    <br />
    Class:
    <asp:TextBox ID="ClassText" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Class Level:&nbsp;
    <asp:TextBox ID="ClassLevelText" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Species:
    <asp:TextBox ID="SpeciesText" runat="server"></asp:TextBox>
    <br />
    Age:
    <asp:TextBox ID="AgeText" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Gender:
    <asp:TextBox ID="GenderText" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Height:
    <asp:TextBox ID="HeightText" runat="server"></asp:TextBox>
    <br />
    Weight:
    <asp:TextBox ID="WeightText" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Eyes:
    <asp:TextBox ID="EyesText" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hair:
    <asp:TextBox ID="HairText" runat="server"></asp:TextBox>
    <br />
    Skin:
    <asp:TextBox ID="SkinText" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Panel ID="DetailsViewPanel" runat="server" Visible="false">
        <asp:DetailsView ID="Game_Character_Details" runat="server" DataSourceID="Game_Character_Source" Height="50px" Width="125px" AutoGenerateRows="False">
            <Fields>
                <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                <asp:BoundField DataField="LEVEL" HeaderText="LEVEL" SortExpression="LEVEL" />
                <asp:BoundField DataField="NAME1" HeaderText="NAME1" SortExpression="NAME1" />
                <asp:BoundField DataField="USERNAME" HeaderText="USERNAME" SortExpression="USERNAME" />
                <asp:BoundField DataField="NAME2" HeaderText="NAME2" SortExpression="NAME2" />
            </Fields>
        </asp:DetailsView>
        <asp:DetailsView ID="User_Details" runat="server" DataSourceID="User_Source" Height="50px" Width="125px">
        </asp:DetailsView>
    </asp:Panel>
&nbsp;
    <asp:SqlDataSource ID="Game_Character_Source" runat="server" ConnectionString="<%$ ConnectionStrings:DNDConnectionString %>" ProviderName="<%$ ConnectionStrings:DNDConnectionString.ProviderName %>" SelectCommand="SELECT GAME_CHARACTER.NAME, GAME_CHARACTER.LEVEL, SPECIES.NAME, USER.USERNAME, CLASS.NAME FROM GAME_CHARACTER JOIN USER ON USER.USER_ID = GAME_CHARACTER.USER_ID JOIN CHARACTER_CLASS_R ON CHARACTER_CLASS_R.CHARACTER_ID = GAME_CHARACTER.CHARACTER_ID JOIN CLASS ON CLASS.CLASS_ID = CHARACTER_CLASS_R.CLASS_ID = CLASS.CLASS_ID JOIN SPECIES ON SPECIES.SPECIES_ID = GAME_CHARACTER.SPECIES_ID WHERE (GAME_CHARACTER.USER_ID = ?)">
        <SelectParameters>
            <asp:QueryStringParameter Name="USER_ID" QueryStringField="user" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="User_Source" runat="server" ConnectionString="<%$ ConnectionStrings:DNDConnectionString %>" ProviderName="<%$ ConnectionStrings:DNDConnectionString.ProviderName %>" SelectCommand="SELECT USERNAME FROM USER WHERE (USER_ID = ?)">
        <SelectParameters>
            <asp:QueryStringParameter Name="USER_ID" QueryStringField="user" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="Class_Source" runat="server" ConnectionString="<%$ ConnectionStrings:DNDConnectionString %>" ProviderName="<%$ ConnectionStrings:DNDConnectionString.ProviderName %>" SelectCommand="SELECT NAME FROM CLASS WHERE (CLASS_ID = ?)">
        <SelectParameters>
            <asp:Parameter DefaultValue="classID" Name="CLASS_ID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>


