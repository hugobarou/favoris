<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Acceuil.aspx" Inherits="SiteWeb.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--  <main class="px-3 acceuil-cover">
        <h1>Acceuil.</h1>
        <p class="lead">Bienvenu. Veuillez vous inscrire si vous n'avez pas de compte pour accèder aux fonctionnalités.</p>
        <p class="lead">
            <a href="#" class="btn btn-lg  btn-outline-primary">S'enregistrer</a>
        </p>
    </main>--%>
    

    <div class="container main-cover">
        <div class="row justify-content-md-center">
            <div class="col-md-auto">
                <h1>Acceuil.</h1>
                <p class="lead">Bienvenu. Veuillez vous inscrire si vous n'avez pas de compte pour accèder aux fonctionnalités.</p>
                <p class="lead">
                    <a href="SignUp.aspx" class="btn btn-lg  btn-outline-primary">S'enregistrer</a>
                </p>
            </div>
        </div>
    </div>
    

</asp:Content>
