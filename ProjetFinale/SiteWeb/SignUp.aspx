<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx" Inherits="SiteWeb.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container signup-cover">
        <div class="row justify-content-md-center">
            <div class="col-lg-auto">
                <%--<h1>SIGNUP</h1>--%>
                <main class="form-signin">
                    <form>
                        <img class="mb-4 sign-icon" src="https://static.thenounproject.com/png/736670-200.png">
                        <h1 class="h3 mb-3 fw-normal">Veuillez vous enregistrer</h1>

                        <label for="inputFirstName" class="visually-hidden">First name</label>
                        <input id="inputFirstName" class="form-control" placeholder="Prénom" required>

                        <label for="inputLastName" class="visually-hidden">Last name</label>
                        <input id="inputLastName" class="form-control" placeholder="Nom" required>

                        <label for="inputEmail" class="visually-hidden">Email address</label>
                        <input type="email" id="inputEmail" class="form-control" placeholder="Adresse courriel" required>

                        <label for="inputPassword" class="visually-hidden">Password</label>
                        <input type="password" id="inputPassword" class="form-control" placeholder="Mot de passe" required>

                        <button class="w-100 btn btn-lg btn-primary" type="submit">S'enregistrer</button>
                    </form>
                </main>
            </div>
        </div>
    </div>
</asp:Content>
