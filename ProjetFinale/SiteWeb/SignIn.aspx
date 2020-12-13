<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="SiteWeb.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container signup-cover">
        <div class="row justify-content-md-center">
            <div class="col-lg-auto">
                <main class="form-signin">
                <form>
                    <img class="mb-4 sign-icon" src="https://www.pinclipart.com/picdir/middle/124-1244578_user-login-man-human-body-mobile-person-comments.png" >
                    <h1 class="h3 mb-3 fw-normal">Veuillez vous connecter</h1>
                    
                    <asp:TextBox ID="inputEmail" class="form-control" placeholder="Adresse courriel" runat="server"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="inputEmail" ErrorMessage="Veuillez entrer une adresse courriel" ForeColor="Red"></asp:RequiredFieldValidator>

                    <asp:TextBox ID="inputPassword" class="form-control" placeholder="Mot de passe" runat="server"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="inputPassword" ErrorMessage="Veuillez entrer un mot de passe" ForeColor="Red"></asp:RequiredFieldValidator>

                    <asp:Button ID="btnConnexion" runat="server" OnClick="connexionUser" Text="Connexion" class="w-100 btn btn-lg btn-primary"/>
                    <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                </form>
                </main>
            </div>
        </div>
    </div>
</asp:Content>
