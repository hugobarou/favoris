<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx" Inherits="SiteWeb.WebForm1" %>

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
                    
                    <label for="inputEmail" class="visually-hidden">Email address</label>
                    <input type="email" id="inputEmail" class="form-control" placeholder="Adresse courriel" required autofocus>
                    
                    <label for="inputPassword" class="visually-hidden">Password</label>
                    <input type="password" id="inputPassword" class="form-control" placeholder="Mot de passe" required>

                    <button class="w-100 btn btn-lg btn-primary" type="submit">Connexion</button>
                </form>
                    </main>
            </div>
        </div>
    </div>
</asp:Content>
