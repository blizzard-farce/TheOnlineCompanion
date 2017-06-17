<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="CharacterSheet_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>asdf</title>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    Character Name:<asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DNDConnectionString %>" DeleteCommand="DELETE FROM CHARACTER WHERE CHARACTER_ID = ?" InsertCommand="INSERT INTO CHARACTER (CHARACTER_ID, USER_ID, LEVEL, SPECIES_ID, NAME, EXPERIENCE, ARMOR_ID, FACTION_ID) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:DNDConnectionString.ProviderName %>" SelectCommand="SELECT * FROM CHARACTER WHERE (USER_ID = ?)" UpdateCommand="UPDATE CHARACTER SET USER_ID = ?, LEVEL = ?, SPECIES_ID = ?, NAME = ?, EXPERIENCE = ?, ARMOR_ID = ?, FACTION_ID = ? WHERE CHARACTER_ID = ?">
        <DeleteParameters>
            <asp:Parameter Name="CHARACTER_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CHARACTER_ID" Type="Int32" />
            <asp:Parameter Name="USER_ID" Type="Int32" />
            <asp:Parameter Name="LEVEL" Type="Int32" />
            <asp:Parameter Name="SPECIES_ID" Type="Int32" />
            <asp:Parameter Name="NAME" Type="String" />
            <asp:Parameter Name="EXPERIENCE" Type="String" />
            <asp:Parameter Name="ARMOR_ID" Type="Int32" />
            <asp:Parameter Name="FACTION_ID" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="USER_ID" QueryStringField="user" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="USER_ID" Type="Int32" />
            <asp:Parameter Name="LEVEL" Type="Int32" />
            <asp:Parameter Name="SPECIES_ID" Type="Int32" />
            <asp:Parameter Name="NAME" Type="String" />
            <asp:Parameter Name="EXPERIENCE" Type="String" />
            <asp:Parameter Name="ARMOR_ID" Type="Int32" />
            <asp:Parameter Name="FACTION_ID" Type="Int32" />
            <asp:Parameter Name="CHARACTER_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
&nbsp;
</asp:Content>


