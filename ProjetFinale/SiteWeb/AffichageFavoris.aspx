<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AffichageFavoris.aspx.cs" Inherits="SiteWeb.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container main-cover">

        

        <div class="row btn-row">
            <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                <asp:Label ID="lblSelectedFolder" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lblWelcome" runat="server"></asp:Label>
                <asp:Button ID="btnAddFolder" OnClick="btnAddFolder_Click" type="button" class="btn btn-pill btn-success btn-lg btn-add" Text="+ Ajouter un dossier" runat="server" CausesValidation="False"/>
                <asp:Button ID="btnCxlFolderAdd" OnClick="btnCxlFolderAdd_Click" runat="server" type="button" class="btn btn-pill btn-danger btn-lg btn-add" Text="X Canceller l'ajout" Visible="false" CausesValidation="False" />

            </div>
        </div>

        <asp:Panel ID="panelAddFolder" runat="server" Visible="false">
            <form>
                <div class="row add-row">
                    <div class="col">
                        <asp:TextBox ID="folderName" class="form-control" placeholder="Nom du dossier" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="folderName" ErrorMessage="Veuillez entrer un nom pour le dossier" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col">
                        <asp:Button ID="btnMakeFolder" class="btn btn-pill btn-success btn-sm add-btn" runat="server" Text="Ajouter" OnClick="btnMakeFolder_Click" />
                    </div>
                </div>
            </form>
        </asp:Panel>

        <div class="row folders-row">
            <asp:Repeater ID="rpt" runat="server" OnItemCommand="rpt_ItemCommand">
                <ItemTemplate>
                    <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                        <div class="card">
                            <img src="https://upload.wikimedia.org/wikipedia/commons/5/59/OneDrive_Folder_Icon.svg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title"><%# Eval("name") %></h5>
                            </div>
                            <asp:Button ID="btnAfficher" commandname="afficher" runat="server" text="Afficher" class="w-100 btn btn-lg btn-primary" UseSubmitBehavior="false" CommandArgument='<%# Eval("id") %>' CausesValidation="False"/>
                            <asp:Button ID="btnDeleteDossier" commandname="deleteDossier" runat="server" text="Supprimer" class="w-100 btn btn-lg btn-primary" UseSubmitBehavior="false" CommandArgument='<%# Eval("id") %>' CausesValidation="False"/>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>

        <div class="row btn-row">
            <div class="col-12 col-sm-6 col-md-4 col-lg-3">

                <asp:Button ID="BtnMakeFav" OnClick="BtnMakeFav_Click" runat="server" type="button" class="btn btn-pill btn-success btn-lg btn-add" Text="+ Ajouter un favori" Visible="False" CausesValidation="False"/>
                <asp:Button ID="BtnCxlMakeFav" OnClick="BtnCxlMakeFav_Click" runat="server" type="button" class="btn btn-pill btn-danger btn-lg btn-add" Text="X Canceller l'ajout" Visible="false" CausesValidation="False"/>

            </div>
        </div>

        <asp:Panel ID="panelAddFav" runat="server" Visible="false">
            <form>
                <div class="row add-row">
                    <div class="col">
                        <asp:TextBox ID="favName" class="form-control" placeholder="Nom du favori" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="favName" Display="Dynamic" ErrorMessage="Veuillez entrer un nom pour le favoris" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col">
                        <asp:TextBox ID="favWebSite" class="form-control" placeholder="Site Web" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="favWebSite" Display="Dynamic" ErrorMessage="Veuillez entrer un l'url pour le favoris" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col">
                        <asp:Button ID="BtnAddFav" class="btn btn-pill btn-success btn-sm add-btn" runat="server" Text="Ajouter" OnClick="BtnAddFav_Click" />
                    </div>
                </div>
            </form>
        </asp:Panel>

        <asp:Repeater ID="rpt2" runat="server" OnItemCommand="rpt2_ItemCommand">
            <ItemTemplate>
                <ul class="list-group list-group-horizontal">
                    <li class="list-group-item ">
                        <asp:CheckBox ID="CheckBox4" runat="server" />
                    </li>
                    <li class="list-group-item flex-fill"><%# Eval("name") %></li>
                    <li class="list-group-item flex-fill">
                        <a href="<%# Eval("url") %>" target="_blank"><%# Eval("url") %>
                        </a>
                    </li>
                    <li class="list-group-item">
                        <asp:Button ID="btnDeleteFavoris" commandname="deleteFavorite" runat="server"  class="btn btn-danger" data-toggle="tooltip" data-placement="top" text="Delete" UseSubmitBehavior="false" CommandArgument='<%# Eval("id") %>' CausesValidation="False"/>
                        <asp:Button ID="btnUpdateFavoris" commandname="updateFavorite" runat="server"  class="w-100 btn btn-lg btn-primary" text="Update" UseSubmitBehavior="false" CommandArgument='<%# Eval("id") %>' CausesValidation="False"/>
                    </li>
                </ul>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
