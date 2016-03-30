<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="Sunflower.Admin.Main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="panel panel-primary" style="margin-left: 10px; margin-top: 10px; width: 1000px">
        <div class="panel-heading">
            Cập nhật điện thoại
        </div>
        <div class="panel-body">
            <asp:GridView CssClass="grid-view" RowStyle-CssClass ID="gr1" runat="server" Width="100%" HorizontalAlign="Center" AutoGenerateColumns="false" AllowPaging="true" OnPageIndexChanged="page_changed" OnPageIndexChanging="page_changing" PageSize="10" EditRowStyle-BorderStyle="NotSet">
                <Columns>
                    <asp:TemplateField ItemStyle-CssClass="item-gridview" HeaderStyle-CssClass="text-header-gridview" HeaderText="Xóa">
                        <ItemTemplate>
                            <asp:CheckBox ID="cb" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ItemStyle-CssClass="item-gridview" HeaderStyle-CssClass="text-header-gridview" HeaderText="Thông tin">
                        <ItemTemplate>

                            <button type="button" class="btn btn-info btn-xs" data-toggle="modal" data-target="#modal-show-detail">Chi tiết</button>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:ButtonField ItemStyle-CssClass="item-gridview" HeaderStyle-CssClass="text-header-gridview" CommandName="edit" ControlStyle-CssClass="btn btn-primary btn-xs" ButtonType="Button" Text="Sửa" HeaderText="Chỉnh sửa" />
                    <asp:BoundField HeaderStyle-CssClass="text-header-gridview" ItemStyle-CssClass="text-margin-in-cell" DataField="IdMobile" HeaderText="ID" />

                    <asp:TemplateField ItemStyle-CssClass="text-margin-in-cell" HeaderStyle-CssClass="text-header-gridview" HeaderText="Tên">
                        <ItemTemplate>
                            <asp:Label ID="col_name" runat="server" Text='<%#Eval("Name") %>'></asp:Label>
                            <div class="item inline" style="float: right; padding-right: 5px">
                                <img src="../Resource/Admin icon/preview.png" height="30" width="30" alt="preview" />
                            </div>
                            <div class="statusRollup">
                                <asp:Image ID="img" Width="250px" Height="220px" ImageUrl='<%#Eval("ImgPrimary") %>' runat="server" />
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField HeaderStyle-CssClass="text-header-gridview" ItemStyle-CssClass="text-margin-in-cell" DataField="Company" HeaderText="NSX" />

                    <asp:TemplateField HeaderStyle-CssClass="text-header-gridview" ItemStyle-CssClass="text-margin-in-cell" HeaderText="Giá (VNĐ)">
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%#Eval("Price", "{0:c}") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField HeaderStyle-CssClass="text-header-gridview" ItemStyle-CssClass="text-margin-in-cell" DataField="Guarantee" HeaderText="Bảo hành (tháng)" />
                    <asp:BoundField HeaderStyle-CssClass="text-header-gridview" ItemStyle-CssClass="text-margin-in-cell" DataField="SaleOff" HeaderText="Giảm giá (%)" />

                </Columns>
                <PagerSettings Mode="NextPreviousFirstLast" FirstPageText="Trang đầu" LastPageText="Trang cuối" NextPageText="=>>" PreviousPageText="<<=" />

            </asp:GridView>

            <div style="width: 100%; text-align: center; margin: 20px auto;">
                <asp:Button ID="btDel" runat="server" Text="Xóa mục đã chọn" Width="200px" CssClass="btn btn-success" />

                <asp:Button ID="btAdd" runat="server" Text="Thêm điện thoại mới" Width="200px" CssClass="btn btn-success" />

            </div>
        </div>
    </div>


    <!--Modal show detail mobile-->

    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <ContentTemplate>
            <div id="modal-show-detail" class="modal fade" role="dialog">
                <div id="width-dialog" class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Chi tiết điện thoại</h4>
                        </div>
                        <div class="modal-body">
                            <table id="show-detail-mobile" border="1">
                                <tr>
                                    <td>Mã DT:
                                        <asp:Label ID="idMobile" runat="server">none</asp:Label></td>
                                    <td>Chipset:
                                        <asp:Label ID="chipset" runat="server">none</asp:Label></td>
                                    <td>Màu màn hình: &nbsp;<asp:Label ID="colorScreen" runat="server">none</asp:Label></td>
                                    <td>Music: &nbsp;<asp:Label ID="music" runat="server">none</asp:Label></td>
                                </tr>
                                <tr>
                                    <td>Tên DT: &nbsp;<asp:Label ID="mobileName" runat="server">none</asp:Label></td>
                                    <td>CPU: &nbsp;<asp:Label ID="cpu" runat="server">none</asp:Label></td>
                                    <td>Chuẩn màn hình: &nbsp;<asp:Label ID="standardScreen" runat="server">none</asp:Label></td>
                                    <td>Ghi âm: &nbsp;<asp:Label ID="record" runat="server">none</asp:Label></td>
                                </tr>
                                <tr>
                                    <td>NSX: &nbsp;<asp:Label ID="company" runat="server">none</asp:Label></td>
                                    <td>Đồ họa: &nbsp;<asp:Label ID="graphics" runat="server">none</asp:Label></td>
                                    <td>Độ phân giải: &nbsp;<asp:Label ID="resolution" runat="server">none</asp:Label></td>
                                    <td>Dung lượng pin: &nbsp;<asp:Label ID="capacityPin" runat="server">none</asp:Label></td>
                                </tr>
                                <tr>
                                    <td>Ảnh:<br />
                                        <table id="table-img-mobile">
                                            <tr>
                                                <td>
                                                    <asp:Image ID="img_mobile_1" ImageUrl="~/Resource/Admin icon/img-mobile-error.png" runat="server" Height="100" Width="100" AlternateText="img" /></td>
                                                <td>
                                                    <asp:Image ID="img_mobile_2" ImageUrl="~/Resource/Admin icon/img-mobile-error.png" runat="server" Height="100" Width="100" AlternateText="img" /></td>

                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Image ID="img_mobile_3" ImageUrl="~/Resource/Admin icon/img-mobile-error.png" runat="server" Height="100" Width="100" AlternateText="img" /></td>
                                                <td>
                                                    <asp:Image ID="img_mobile_4" ImageUrl="~/Resource/Admin icon/img-mobile-error.png" runat="server" Height="100" Width="100" AlternateText="img" /></td>

                                            </tr>
                                        </table>
                                    </td>
                                    <td>Ram: &nbsp;<asp:Label ID="ram" runat="server">none</asp:Label></td>
                                    <td>Kích thước mh: &nbsp;<asp:Label ID="sizeScreen" runat="server">none</asp:Label></td>
                                    <td>Loại pin: &nbsp;<asp:Label ID="typePin" runat="server">none</asp:Label></td>
                                </tr>
                                <tr>
                                    <td>Giá: &nbsp;<asp:Label ID="money" runat="server">none</asp:Label></td>
                                    <td>HDH: &nbsp;<asp:Label ID="os" runat="server">none</asp:Label></td>
                                    <td>Cảm ứng: &nbsp;<asp:Label ID="induction" runat="server">none</asp:Label></td>
                                    <td>Danh bạ: &nbsp;<asp:Label ID="contact" runat="server">none</asp:Label></td>
                                </tr>
                                <tr>
                                    <td>Bảo hành: &nbsp;<asp:Label ID="guarantee" runat="server">none</asp:Label></td>
                                    <td>Camera sau: &nbsp;<asp:Label ID="priSim" runat="server">none</asp:Label></td>
                                    <td>Loại sim: &nbsp;<asp:Label ID="typeSim" runat="server">none</asp:Label></td>
                                    <td>Bộ nhớ trong: &nbsp;<asp:Label ID="interMemory" runat="server">none</asp:Label></td>
                                </tr>
                                <tr>
                                    <td>Giảm giá: &nbsp;<asp:Label ID="saleOff" runat="server">none</asp:Label></td>
                                    <td>Camera trước: &nbsp;<asp:Label ID="secondCam" runat="server">none</asp:Label></td>
                                    <td>Số khe cắm sim: &nbsp;<asp:Label ID="numberSim" runat="server">none</asp:Label></td>
                                    <td>Hỗ trợ bộ nhớ cao nhất: &nbsp;<asp:Label ID="maxSupportMemory" runat="server">none</asp:Label></td>
                                </tr>
                                <tr>
                                    <td>Số lượng:
                                        <br />
                                        <table id="number-mobile">
                                            <tr>
                                                <td>
                                                    <div style="background-color: white; height: 20px; width: 20px; float: left"></div>
                                                    <p>
                                                        &nbsp;<asp:Label ID="white" runat="server">none</asp:Label>
                                                    </p>
                                                </td>
                                                <td>
                                                    <div style="background-color: black; height: 20px; width: 20px; float: left"></div>
                                                    <p>
                                                        &nbsp;<asp:Label ID="black" runat="server">none</asp:Label>
                                                    </p>
                                                </td>
                                                <td>
                                                    <div style="background-color: pink; height: 20px; width: 20px; float: left"></div>
                                                    <p>
                                                        &nbsp;<asp:Label ID="pink" runat="server">none</asp:Label>
                                                    </p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div style="background-color: yellow; height: 20px; width: 20px; float: left"></div>
                                                    <p>
                                                        &nbsp;<asp:Label ID="yellow" runat="server">none</asp:Label>
                                                    </p>
                                                    </p>  </td>
                                                <td>
                                                    <div style="background-color: gold; height: 20px; width: 20px; float: left"></div>
                                                    <p>
                                                        &nbsp;<asp:Label ID="gold" runat="server">none</asp:Label>
                                                    </p>
                                                    </p> </td>
                                                <td>
                                                    <div style="background-color: silver; height: 20px; width: 20px; float: left"></div>
                                                    <p>
                                                        &nbsp;<asp:Label ID="silver" runat="server">none</asp:Label>
                                                    </p>
                                                    </p></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div style="background-color: green; height: 20px; width: 20px; float: left"></div>
                                                    <p>
                                                        &nbsp;<asp:Label ID="green" runat="server">none</asp:Label>
                                                    </p>
                                                    </p></td>
                                                <td>
                                                    <div style="background-color: cyan; height: 20px; width: 20px; float: left"></div>
                                                    <p>
                                                        &nbsp;<asp:Label ID="cyan" runat="server">none</asp:Label>
                                                    </p>
                                                    </p> </td>
                                                <td>
                                                    <div style="background-color: orange; height: 20px; width: 20px; float: left"></div>
                                                    <p>
                                                        &nbsp;<asp:Label ID="orange" runat="server">none</asp:Label>
                                                    </p>
                                                    </p></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div style="background-color: grey; height: 20px; width: 20px; float: left"></div>
                                                    <p>
                                                        &nbsp;<asp:Label ID="grey" runat="server">none</asp:Label>
                                                    </p>
                                                    </p></td>
                                                <td>
                                                    <div style="background-color: blue; height: 20px; width: 20px; float: left"></div>
                                                    <p>
                                                        &nbsp;<asp:Label ID="blue" runat="server">none</asp:Label>
                                                    </p>
                                                    </p></td>

                                            </tr>
                                        </table>
                                    </td>
                                    <td>Loại mh: &nbsp;<asp:Label ID="typeScreen" runat="server">none</asp:Label>
                                    </td>
                                    <td colspan="2">Video: &nbsp;<asp:Label ID="video" runat="server">none</asp:Label></td>

                                </tr>
                                <tr>
                                    <td colspan="4">Giới thiệu:
                                        <br />

                                        <asp:Image ID="imgIntro" CssClass="xxx" ImageUrl="~/Resource/Admin icon/img-mobile-error.png" AlternateText="img" Height="150px" Width="150px" runat="server" /><br />
                                        <asp:Label ID="articleIntro" runat="server">none</asp:Label>

                                    </td>
                                </tr>
                            </table>




                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>






</asp:Content>
