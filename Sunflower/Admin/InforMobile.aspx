<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="InforMobile.aspx.cs" Inherits="Sunflower.Admin.InforMobile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left: 10px; margin-top: 10px">
                <div id="width-dialog" class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                          
                            <h4 class="modal-title">Chi tiết điện thoại</h4>
                        </div>
                        <div class="modal-body">
                            <table id="show-detail-mobile" border="1">
                                <tr>
                                    <td><b>Mã DT:</b>
                                        <asp:Label ID="idMobile" runat="server">none</asp:Label></td>
                                    <td><b>Chipset:</b>
                                        <asp:Label ID="chipset" runat="server">none</asp:Label></td>
                                    <td><b>Màu màn hình:</b> &nbsp;<asp:Label ID="colorScreen" runat="server">none</asp:Label></td>
                                    <td><b>Music:</b> &nbsp;<asp:Label ID="music" runat="server">none</asp:Label></td>
                                </tr>
                                <tr>
                                    <td><b>Tên DT:</b> &nbsp;<asp:Label ID="mobileName" runat="server">none</asp:Label></td>
                                    <td><b>CPU:</b> &nbsp;<asp:Label ID="cpu" runat="server">none</asp:Label></td>
                                    <td><b>Chuẩn màn hình:</b> &nbsp;<asp:Label ID="standardScreen" runat="server">none</asp:Label></td>
                                    <td><b>Ghi âm:</b> &nbsp;<asp:Label ID="record" runat="server">none</asp:Label></td>
                                </tr>
                                <tr>
                                    <td><b>NSX:</b> &nbsp;<asp:Label ID="company" runat="server">none</asp:Label></td>
                                    <td><b>Đồ họa:</b> &nbsp;<asp:Label ID="graphics" runat="server">none</asp:Label></td>
                                    <td><b>Độ phân giải:</b> &nbsp;<asp:Label ID="resolution" runat="server">none</asp:Label></td>
                                    <td><b>Dung lượng pin (mAh):</b> &nbsp;<asp:Label ID="capacityPin" runat="server">none</asp:Label></td>
                                </tr>
                                <tr>

                                    <td><b>Ram:</b> &nbsp;<asp:Label ID="ram" runat="server">none</asp:Label></td>
                                    <td><b>Kích thước mh:</b> &nbsp;<asp:Label ID="sizeScreen" runat="server">none</asp:Label></td>
                                    <td><b>Loại mh:</b> &nbsp;<asp:Label ID="typeScreen" runat="server">none</asp:Label>
                                    </td>
                                    <td><b>Loại pin:</b> &nbsp;<asp:Label ID="typePin" runat="server">none</asp:Label></td>
                                </tr>
                                <tr>
                                    <td><b>Giá (VNĐ):</b> &nbsp;<asp:Label ID="money" runat="server">none</asp:Label></td>
                                    <td><b>HDH:</b> &nbsp;<asp:Label ID="os" runat="server">none</asp:Label></td>
                                    <td><b>Cảm ứng:</b> &nbsp;<asp:Label ID="induction" runat="server">none</asp:Label></td>
                                    <td><b>Bộ nhớ ngoài:</b> &nbsp;<asp:Label ID="exterCard" runat="server">none</asp:Label></td>
                                </tr>
                                <tr>
                                    <td><b>Bảo hành (tháng):</b> &nbsp;<asp:Label ID="guarantee" runat="server">none</asp:Label></td>
                                    <td><b>Camera sau:</b> &nbsp;<asp:Label ID="priCam" runat="server">none</asp:Label></td>
                                    <td><b>Loại sim:</b> &nbsp;<asp:Label ID="typeSim" runat="server">none</asp:Label></td>
                                    <td><b>Bộ nhớ trong:</b> &nbsp;<asp:Label ID="interMemory" runat="server">none</asp:Label></td>
                                </tr>
                                <tr>
                                    <td><b>Giảm giá (%):</b> &nbsp;<asp:Label ID="saleOff" runat="server">none</asp:Label></td>
                                    <td><b>Camera trước:</b> &nbsp;<asp:Label ID="secondCam" runat="server">none</asp:Label></td>
                                    <td><b>Số khe cắm sim:</b> &nbsp;<asp:Label ID="numberSim" runat="server">none</asp:Label></td>
                                    <td><b>Hỗ trợ bộ nhớ cao nhất:</b> &nbsp;<asp:Label ID="maxSupportMemory" runat="server">none</asp:Label></td>
                                </tr>
                                 <tr>
                                    <td><b>2G:</b> &nbsp;<asp:Label ID="c2G" runat="server">none</asp:Label></td>
                                    <td><b>3G:</b> &nbsp;<asp:Label ID="c3G" runat="server">none</asp:Label></td>
                                    <td><b>4G:</b> &nbsp;<asp:Label ID="c4G" runat="server">none</asp:Label></td>
                                    <td><b>Wifi:</b> &nbsp;<asp:Label ID="wifi" runat="server">none</asp:Label></td>
                                </tr>
                                <tr>
                                    <td><b>GPS:</b> &nbsp;<asp:Label ID="gps" runat="server">none</asp:Label></td>
                                    <td><b>Bluetooth:</b> &nbsp;<asp:Label ID="bluetooth" runat="server">none</asp:Label></td>
                                    <td><b>USB:</b> &nbsp;<asp:Label ID="usb" runat="server">none</asp:Label></td>
                                    <td><b>Video:</b> &nbsp;<asp:Label ID="video" runat="server">none</asp:Label></td>

                                </tr>
                                <tr>
                                    <td colspan="4">
                                         <b>Danh bạ:</b> &nbsp;<asp:Label ID="contact" runat="server">none</asp:Label>

                                    </td>
                                </tr>
                                <tr>
                                     <td colspan="2"><b>Số lượng:</b><br />
                                      
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
                                                        </td>
                                                    <td>
                                                        <div style="background-color: gold; height: 20px; width: 20px; float: left"></div>
                                                        <p>
                                                            &nbsp;<asp:Label ID="gold" runat="server">none</asp:Label>
                                                        </p>
                                                        </td>
                                                    <td>
                                                        <div style="background-color: silver; height: 20px; width: 20px; float: left"></div>
                                                        <p>
                                                            &nbsp;<asp:Label ID="silver" runat="server">none</asp:Label>
                                                        </p>
                                                        </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div style="background-color: green; height: 20px; width: 20px; float: left"></div>
                                                        <p>
                                                            &nbsp;<asp:Label ID="green" runat="server">none</asp:Label>
                                                        </p>
                                                        </td>
                                                    <td>
                                                        <div style="background-color: cyan; height: 20px; width: 20px; float: left"></div>
                                                        <p>
                                                            &nbsp;<asp:Label ID="cyan" runat="server">none</asp:Label>
                                                        </p>
                                                        </td>
                                                    <td>
                                                        <div style="background-color: orange; height: 20px; width: 20px; float: left"></div>
                                                        <p>
                                                            &nbsp;<asp:Label ID="orange" runat="server">none</asp:Label>
                                                        </p>
                                                        </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div style="background-color: grey; height: 20px; width: 20px; float: left"></div>
                                                        <p>
                                                            &nbsp;<asp:Label ID="grey" runat="server">none</asp:Label>
                                                        </p>
                                                        </td>
                                                    <td>
                                                        <div style="background-color: blue; height: 20px; width: 20px; float: left"></div>
                                                        <p>
                                                            &nbsp;<asp:Label ID="blue" runat="server">none</asp:Label>
                                                        </p>
                                                        </td>

                                                </tr>
                                            </table>
                                        
                                    </td>
                                    <td colspan="2"><b>Ảnh:</b><br />
                                        <table id="table-img-mobile">
                                            <tr>
                                                <td>
                                                    <asp:Image ID="img_mobile_1" ImageUrl="~/Resource/Admin icon/img-mobile-error.png" runat="server" Height="200" Width="200" AlternateText="img" /></td>
                                                <td>
                                                    <asp:Image ID="img_mobile_2" ImageUrl="~/Resource/Admin icon/img-mobile-error.png" runat="server" Height="200" Width="200" AlternateText="img" /></td>

                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Image ID="img_mobile_3" ImageUrl="~/Resource/Admin icon/img-mobile-error.png" runat="server" Height="200" Width="200" AlternateText="img" /></td>
                                                <td>
                                                    <asp:Image ID="img_mobile_4" ImageUrl="~/Resource/Admin icon/img-mobile-error.png" runat="server" Height="200" Width="200" AlternateText="img" /></td>
                                               
                                            </tr>
                                        </table>
                                    </td>


                                </tr>

                                <tr>
                                    <td colspan="4"><b>Giới thiệu:</b>
                                        <br />

                                        <asp:Image ID="imgIntro" CssClass="img-intro-mobile" ImageUrl="~/Resource/Admin icon/img-mobile-error.png" AlternateText="img" Height="250px" Width="250px" runat="server" /><br />
                                        <asp:Label ID="articleIntro" runat="server">none</asp:Label>

                                    </td>
                                </tr>
                            </table>

                        </div>
                      
                    </div>
                </div>
            </div>
</asp:Content>
