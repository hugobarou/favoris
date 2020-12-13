﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="SiteWeb.WebForm2" %>
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

                        <asp:TextBox ID="inputFirstName" class="form-control" placeholder="Prénom" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="inputFirstName" ErrorMessage="Veuillez entrer un prénom" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="inputLastName" class="form-control" placeholder="Nom" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="inputLastName" ErrorMessage="Veuillez entrer un nom" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="inputEmail" class="form-control" placeholder="Adresse courriel" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="inputEmail" ErrorMessage="Veuillez entrer une adresse courriel" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="inputPassword" class="form-control" placeholder="Mot de passe" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="inputPassword" ErrorMessage="Veuillez entrer un mot de passe" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:Button ID="btnCreateUser" runat="server" OnClick="createUser" Text="S'enregistrer" class="w-100 btn btn-lg btn-primary" />
                    </form>
                </main>
            </div>
        </div>
    </div>
</asp:Content>
