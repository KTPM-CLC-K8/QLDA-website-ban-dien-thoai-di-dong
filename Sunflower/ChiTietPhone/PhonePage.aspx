<%@ Page Title="" Language="C#" MasterPageFile="~/ChiTietPhone/PhonePage.Master" AutoEventWireup="true" CodeBehind="PhonePage.aspx.cs" Inherits="Sunflower.ChiTietPhone.PhonePage1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="PhoneHot">
       <h4><asp:Label ID="titlePhone" runat="server"></asp:Label></h4>
        <hr />
    </div>
    <div class="row">
        <div class="col-md-4">
            <asp:DataList ID="DataListPhone" runat="server" RepeatColumns="3">
                <ItemTemplate>
                    <a href="#">
                        <asp:Image ID="anhLabel" runat="server" ImageUrl='<%#Eval("Image") %>' /></a>
                    <br />
                    <asp:Label ID="NameLabel" runat="server" Text='<%#Eval("Name") %>' />
                    <br />
                    <asp:Label ID="PriceLabel" runat="server" Text='<%#Eval("Price", "{0:C}") %> ' />
                    <br />
                    
                </ItemTemplate>
            </asp:DataList>
        </div>
       

    </div>
     <div class="nextpage">
                <asp:Button ID="bttrangdau" runat="server" Text="Trang đầu" />
                <asp:Button ID="bttiep" runat="server"  Text="Trước"/>
                <asp:TextBox ID="txtchuyensang" runat="server" ></asp:TextBox>
                <asp:Button ID="btsau" runat="server"  Text="Sau"/>
                <asp:Button ID="bttrangcuoi" runat="server" Text="Trang cuối" />
            </div>

</asp:Content>
