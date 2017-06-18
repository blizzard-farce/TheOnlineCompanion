<%@ Page Title="Login" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #login {
            margin: 0 auto 0 auto;
            width: 50%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <div id="login">
            <asp:Panel ID="loginPanel" runat="server">
                <asp:Label ID="Label1" runat="server" Text="Username:"></asp:Label>&nbsp;
                <asp:TextBox ID="UsernameBox" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>&nbsp;
                <asp:TextBox ID="PasswordBox" runat="server" TextMode="Password"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="LogIn" runat="server" Text="Log In" OnClick="LogIn_Click" />
                &nbsp;&nbsp;
                <asp:Button ID="AccountCreate" runat="server" OnClick="AccountCreate_Click" Text="Create Account" />
                <br />
                <br />
                <!--When cleaning up before deployment, DO NOT delete Label6, it will break the LoginTest() method-->
                <asp:Label ID="Label6" runat="server"></asp:Label>
            </asp:Panel>
            <br />
            <br />
            <asp:Panel ID="registerPanel" runat="server" Visible="False" Width="256px">
                <asp:DetailsView ID="registerView" runat="server" DataSourceID="AccountCreateSource" Height="50px" Width="125px" AutoGenerateRows="False" DefaultMode="Insert">
                    <Fields>
                        <asp:BoundField DataField="USERNAME" HeaderText="Username:" />
                        <asp:BoundField DataField="PASSWORD" HeaderText="Password:" />
                        <asp:BoundField DataField="EMAIL" HeaderText="Email:" />
                        <asp:CommandField InsertText="Create Account" ShowCancelButton="False" ShowInsertButton="True" />
                    </Fields>
                </asp:DetailsView>
                <!-- do not delete Label8, it is required for error reporting -->
                <!-- error reporting will be added eventually -->
                <asp:Label ID="Label8" runat="server"></asp:Label>
                <asp:SqlDataSource ID="AccountCreateSource" runat="server" ConnectionString="<%$ ConnectionStrings:DNDConnectionString %>" InsertCommand="INSERT INTO USER (USERNAME, PASSWORD, EMAIL) VALUES (?, ?, ?)" ProviderName="<%$ ConnectionStrings:DNDConnectionString.ProviderName %>" SelectCommand="SELECT * FROM USER" >
                    <DeleteParameters>
                        <asp:Parameter Name="USER_ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="USERNAME" Type="String" />
                        <asp:Parameter Name="PASSWORD" Type="String" />
                        <asp:Parameter Name="EMAIL" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
                <br />
                <br />
                <asp:Button ID="BackToLogin" runat="server" OnClick="BackToLogin_Click" Text="Back to Login" Width="108px" />
            </asp:Panel>
			<asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="SqlDataSource1" Height="50px" Width="125px" Visible="False">
            </asp:DetailsView>
			<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DNDConnectionString %>" ProviderName="<%$ ConnectionStrings:DNDConnectionString.ProviderName %>" SelectCommand="SELECT * FROM USER WHERE (USERNAME = ?)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="UsernameBox" Name="USER" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>

