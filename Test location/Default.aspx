<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Test_location.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row" style="border:2px solid black;height:500px;border-radius:15px">
            <br />
            <div class="row">
                <div class="col-md-1"></div>
            <div class="col-md-5">
                <label>Name *</label>
                <asp:TextBox runat="server" class="form-control" ID="txtName" placeholder="User Name"></asp:TextBox>
            </div>
            <div class="col-md-5">
                <label>Email ID</label>
      <asp:TextBox runat="server" CssClass="form-control" ID="txtEmail" placeholder="Email ID"></asp:TextBox>
<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail"
    ForeColor="Red" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
    Display = "Dynamic" ErrorMessage = "Invalid email address"/>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail"
    ForeColor="Red" Display = "Dynamic" ErrorMessage = "Required" />
            </div>
                 <div class="col-md-1"></div>
                </div>
            <br />
            <div class="row">
                <div class="col-md-1"></div>
            <div class="col-md-5">
                <label>Mobile No *</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtMob" TextMode="Number"></asp:TextBox>
            </div>
            <div class="col-md-5">
                <label>Gender</label>
<asp:DropDownList runat="server" ID="ddlGender" CssClass="form-control">
    <asp:ListItem>Select</asp:ListItem>
    <asp:ListItem>Male</asp:ListItem>
    <asp:ListItem>Female</asp:ListItem>
</asp:DropDownList>
            </div>
                <div class="col-md-1"></div>
            </div>
           
            <br />
            <div class="row">
                <div class="col-md-1"></div>
            <div class="col-md-10">
                <label>Message *</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtmsg" TextMode="MultiLine"></asp:TextBox>
            </div>
                <div class="col-md-1"></div>
                </div>
            <br />

            <div class="row">
            <div class="col-md-12">
                
          <center><asp:LinkButton runat="server" Text="Save" OnClick="Unnamed_Click" CssClass="btn btn-success"></asp:LinkButton>
               </center>  
              </div>
                </div>
        </div>
    </div>
</asp:Content>
