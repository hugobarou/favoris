<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AffichageFavoris.aspx.cs" Inherits="SiteWeb.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container main-cover">
        
        <div class="row btn-row">
            <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                <asp:Label ID="lblWelcome" runat="server"></asp:Label>
                <button type="button" class="btn btn-pill btn-success btn-lg btn-add">
                    <i class="fas fa-plus"></i>
                    Ajouter un dossier
                </button>
            </div>
        </div>

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

        <%--</div>--%>        <%--<div class="row folders-row">--%>
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
                <button type="button" class="btn btn-pill btn-success btn-lg btn-add">
                    <i class="fas fa-plus"></i>
                    Ajouter un favoris
                </button>
            </div>
        </div>
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
