<%@ Page Title="" Language="C#" MasterPageFile="~/ToDoMasterpage.Master" AutoEventWireup="true" CodeBehind="NewTask.aspx.cs" Inherits="ToDoWebApp.NewTask" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceholder" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="300" src="images/tasks.jpg" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>New task</h4>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <hr />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TaskName" runat="server" placeholder="Task Name"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TaskDescription" runat="server" placeholder="Task description"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="username" DataValueField="username"></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:todoDBConnectionString %>" SelectCommand="SELECT [username] FROM [users]"></asp:SqlDataSource>
                                </div>
                                <div class="form-group">
                                    <asp:DropDownList CssClass="form-control" ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="type" DataValueField="type"></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:todoDBConnectionString %>" SelectCommand="SELECT [type] FROM [task_type]"></asp:SqlDataSource>

                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <hr />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:Button CssClass="btn btn-success btn-block" ID="SaveTask" runat="server" Text="Save" OnClick="SaveTask_Click"></asp:Button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
