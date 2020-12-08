<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AffichageFavoris.aspx" Inherits="SiteWeb.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container main-cover">
        <%--<asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Selected="True" Value="White"> White </asp:ListItem>
            <asp:ListItem Value="Silver"> Silver </asp:ListItem>
            <asp:ListItem Value="DarkGray"> Dark Gray </asp:ListItem>
            <asp:ListItem Value="Khaki"> Khaki </asp:ListItem>
            <asp:ListItem Value="DarkKhaki"> Dark Khaki </asp:ListItem>
        </asp:DropDownList>--%>
        <div class="row folders-row">
            <div class="col-12 col-lg-4">
                <a href="google.com" class="clickable-card">
                    <div class="card">
                        <img src="https://upload.wikimedia.org/wikipedia/commons/5/59/OneDrive_Folder_Icon.svg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-12 col-lg-4">
                <a href="google.com" class="clickable-card">
                    <div class="card">
                        <img src="https://upload.wikimedia.org/wikipedia/commons/5/59/OneDrive_Folder_Icon.svg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-12 col-lg-4">
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
        <div class="row">
            <div class="col-12 col-lg-4">
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
        <ul class="list-group list-group-horizontal">
            <li class="list-group-item ">
                <asp:CheckBox ID="CheckBox1" runat="server" />
            </li>
            <li class="list-group-item flex-fill">google</li>
            <li class="list-group-item flex-fill">
                <a href="https://www.google.com/"  target="_blank">
                    https://www.google.com/
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
                <a href="https://www.google.com/"  target="_blank">
                    https://www.google.com/
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
                <a href="https://www.google.com/"  target="_blank">
                    https://www.google.com/
                </a>
            </li>
            <li class="list-group-item">
                <button class="btn btn-danger btn-sm rounded-0" type="button" data-toggle="tooltip" data-placement="top" title="Delete"><i class="fa fa-trash"></i></button>
            </li>
        </ul>


    </div>
</asp:Content>
