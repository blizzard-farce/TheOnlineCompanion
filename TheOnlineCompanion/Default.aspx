<%@ Page Title="Welcome" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <a href="pages/login.aspx"><img alt="TheOnlineCompanion.jpg" src="images/swdnd.jpg" /></a>
        <header>
            <h1>Landing Page for The Online Companion</h1>
        </header>
        <nav>
            <ul>
                <li><a href="pages/welcome.html">Welcome</a></li>
                <li><a href="pages/home.html">Star Trek DND Player's Database</a></li>
            </ul>
        </nav>
    </div>
</asp:Content>