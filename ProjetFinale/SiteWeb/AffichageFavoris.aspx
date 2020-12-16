<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AffichageFavoris.aspx.cs" Inherits="SiteWeb.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container main-cover">

        

        <div class="row btn-row">
            <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                <asp:Label ID="lblWelcome" runat="server"></asp:Label>
                <asp:Button ID="btnAddFolder" OnClick="btnAddFolder_Click" type="button" class="btn btn-pill btn-success btn-lg btn-add" Text="+ Ajouter un dossier" runat="server"/>
                <asp:Button ID="btnCxlFolderAdd" OnClick="btnCxlFolderAdd_Click" runat="server" type="button" class="btn btn-pill btn-danger btn-lg btn-add" Text="X Canceller l'ajout" Visible="false" />

            </div>
        </div>

        <asp:Panel ID="panelAddFolder" runat="server" Visible="false">
            <form>
                <div class="row add-row">
                    <div class="col">
                        <input id="folderName" type="text" class="form-control" placeholder="Nom du dossier">
                    </div>
                    <div class="col">
                        <asp:Button ID="btnMakeFolder" class="btn btn-pill btn-success btn-sm add-btn" runat="server" Text="Ajouter" />
                    </div>
                </div>
            </form>
        </asp:Panel>

        <div class="row folders-row">
            <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                <a href="google.com" class="clickable-card">
                    <div class="card">
                        <img src="https://upload.wikimedia.org/wikipedia/commons/5/59/OneDrive_Folder_Icon.svg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                <a href="google.com" class="clickable-card">
                    <div class="card">
                        <img src="https://upload.wikimedia.org/wikipedia/commons/5/59/OneDrive_Folder_Icon.svg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                <a href="google.com" class="clickable-card">
                    <div class="card">
                        <img src="https://upload.wikimedia.org/wikipedia/commons/5/59/OneDrive_Folder_Icon.svg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                <a href="google.com" class="clickable-card">
                    <div class="card">
                        <img src="https://upload.wikimedia.org/wikipedia/commons/5/59/OneDrive_Folder_Icon.svg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                <a href="google.com" class="clickable-card">
                    <div class="card">
                        <img src="https://upload.wikimedia.org/wikipedia/commons/5/59/OneDrive_Folder_Icon.svg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                <a href="google.com" class="clickable-card">
                    <div class="card">
                        <img src="https://upload.wikimedia.org/wikipedia/commons/5/59/OneDrive_Folder_Icon.svg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                        </div>
                    </div>
                </a>
            </div>
        </div>

        <div class="row btn-row">
            <div class="col-12 col-sm-6 col-md-4 col-lg-3">

                <asp:Button ID="BtnMakeFav" OnClick="BtnMakeFav_Click" runat="server" type="button" class="btn btn-pill btn-success btn-lg btn-add" Text="+ Ajouter un favori" Visible="true" />
                <asp:Button ID="BtnCxlMakeFav" OnClick="BtnCxlMakeFav_Click" runat="server" type="button" class="btn btn-pill btn-danger btn-lg btn-add" Text="X Canceller l'ajout" Visible="false" />

            </div>
        </div>

        <asp:Panel ID="panelAddFav" runat="server" Visible="false">
            <form>
                <div class="row add-row">
                    <div class="col">
                        <input id="favWebSite" type="text" class="form-control" placeholder="Site web">
                    </div>
                    <div class="col">
                        <input id="favName" type="text" class="form-control" placeholder="Nom du favori">
                    </div>
                    <div class="col">
                        <asp:Button ID="BtnAddFav" class="btn btn-pill btn-success btn-sm add-btn" runat="server" Text="Ajouter" />
                    </div>
                </div>
            </form>
        </asp:Panel>

        <ul class="list-group list-group-horizontal">
            <li class="list-group-item ">
                <asp:CheckBox ID="CheckBox1" runat="server" />
            </li>
            <li class="list-group-item flex-fill">google</li>
            <li class="list-group-item flex-fill">
                <a href="https://www.google.com/" target="_blank">https://www.google.com/
                </a>
            </li>
            <li class="list-group-item">
                <button class="btn btn-danger btn-sm rounded-0" type="button" data-toggle="tooltip" data-placement="top" title="Delete"><i class="fa fa-trash"></i></button>
            </li>
        </ul>
        <ul class="list-group list-group-horizontal">
            <li class="list-group-item ">
                <asp:CheckBox ID="CheckBox2" runat="server" />
            </li>
            <li class="list-group-item flex-fill">google</li>
            <li class="list-group-item flex-fill">
                <a href="https://www.google.com/" target="_blank">https://www.google.com/
                </a>
            </li>
            <li class="list-group-item">
                <button class="btn btn-danger btn-sm rounded-0" type="button" data-toggle="tooltip" data-placement="top" title="Delete"><i class="fa fa-trash"></i></button>
            </li>
        </ul>
        <ul class="list-group list-group-horizontal">
            <li class="list-group-item ">
                <asp:CheckBox ID="CheckBox3" runat="server" />
            </li>
            <li class="list-group-item flex-fill">google</li>
            <li class="list-group-item flex-fill">
                <a href="https://www.google.com/" target="_blank">https://www.google.com/
                </a>
            </li>
            <li class="list-group-item">
                <button class="btn btn-danger btn-sm rounded-0" type="button" data-toggle="tooltip" data-placement="top" title="Delete"><i class="fa fa-trash"></i></button>
            </li>
        </ul>
    </div>
</asp:Content>
