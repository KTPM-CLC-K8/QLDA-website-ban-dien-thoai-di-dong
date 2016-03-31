<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="BTL.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Design/Css/trangchu.css" rel="stylesheet" />
    <link href="../Design/bootstrap-3.3.6-dist/css/bootstrap.css" rel="stylesheet" />
    <link href="../Design/bootstrap-3.3.6-dist/css/bootstrap-theme.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <img id="banner" src="../Resource/Trang chu/banner2.gif" />
                </div>
                <div class="col-md-12">
                    <ul class="nav nav-pills">
                        <li><a href="#">
                            <img class="anh" src="../Resource/Trang chu/home.png" />
                            TRANG CHỦ</a></li>
                        <li><a href="#">
                            <img class="anh" src="../Resource/Trang chu/gioithieu.png" />
                            GIỚI THIỆU</a></li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                <img class="anh" src="../Resource/Trang chu/mobile.png" />
                                ĐIỆN THOẠI
                          <span class="caret"></span></a>
                            <ul class="dropdown-menu multi-column columns-2">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <ul class="multi-column-dropdown">
                                            <li><a href="PhoneSamSung.aspx">Sam Sung</a></li>
                                            <li><a href="#">Apple</a></li>
                                            <li><a href="#">Sony</a></li>
                                            <li><a href="#">Nokia</a></li>
                                            <li><a href="#">Oppo </a></li>
                                            <li><a href="#">HTC</a></li>
                                            <li><a href="#">Viettel</a></li>
                                            <li><a href="#">Asus</a></li>
                                            <li><a href="#">Lenovo </a></li>
                                            <li><a href="#">LG </a></li>
                                        </ul>
                                    </div>
                                    <div class="col-sm-6">
                                        <ul class="multi-column-dropdown">
                                            <li><a href="#">Microsoft</a></li>
                                            <li><a href="#">Vivo</a></li>
                                            <li><a href="#">MobiiStar</a></li>
                                            <li><a href="#">WingCall</a></li>
                                            <li><a href="#">Archos </a></li>
                                            <li><a href="#">Philips</a></li>
                                            <li><a href="#">XPhone</a></li>
                                            <li><a href="#">Mastel</a></li>
                                            <li><a href="#">Huawei </a></li>
                                            <li><a href="#">Massgo </a></li>
                                        </ul>
                                    </div>
                                </div>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                <img class="anh" src="../Resource/Trang chu/headphone.png" />
                                PHỤ KIỆN
                          <span class="caret"></span></a>
                            <ul class="dropdown-menu phukien" id="phukien">
                                <li><a href="#">Thẻ nhớ</a></li>
                                <li><a href="#">Bao da/Ốp lưng</a></li>
                                <li><a href="#">Pin dự phòng</a></li>
                                <li><a href="#">Tai nghe</a></li>
                                <li><a href="#">Tấm dán</a></li>
                                <li><a href="#">Cáp/Sạc</a></li>
                                <li><a href="#">Loa</a></li>
                            </ul>
                        </li>
                        <li><a href="#">
                            <img class="anh" src="../Resource/Trang chu/cart.png" />
                            <asp:Label ID="giohang" runat="server">GIỎ HÀNG</asp:Label></a></li>
                        <li><a href="#">
                            <img class="anh" src="../Resource/Trang chu/sale.png" />
                            KHUYẾN MẠI </a></li>
                        <li><a href="TinTuc.aspx">
                            <img class="anh" src="../Resource/Trang chu/news.png" />
                            TIN TỨC</a></li>
                        <li><a href="#">
                            <img class="anh" src="../Resource/Trang chu/email.png" />
                            GÓP Ý </a></li>
                    </ul>
                </div>
                <div class="col-md-3">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Tìm kiếm </h3>
                        </div>
                        <div class="panel-body">
                            <input type="text" id="tkchung" placeholder="Tìm kiếm điện thoại, phụ kiện" />
                            <div class="ChonHang">
                                <span id="TKchonhang">Chọn hãng</span>
                                <select id="DropDownListChonHang" size="1">
                                    <option value="">Sam Sung</option>
                                    <option value="">Apple</option>
                                    <option value="">Sony</option>
                                    <option value="">Nokia</option>
                                    <option value="">Oppo</option>
                                    <option value="">HTC</option>
                                    <option value="">Viettel</option>
                                    <option value="">Asus</option>
                                    <option value="">Lenovo</option>
                                    <option value="">LG</option>
                                    <option value="">Microsoft</option>
                                    <option value="">Vivo</option>
                                    <option value="">MobiiStar</option>
                                    <option value="">WingCall</option>
                                    <option value="">Archos</option>
                                    <option value="">Philips</option>
                                    <option value="">XPhone</option>
                                    <option value="">Mastel</option>
                                    <option value="">Huawei</option>
                                    <option value="">Massgo</option>
                                </select>
                            </div>
                            <div class="GiaTu">
                                <span id="TKgiatu">Giá từ</span>
                                <select id="DropDownListGiaTu" size="1">
                                    <option value="">1.000.000</option>
                                    <option value="">2.000.000</option>
                                    <option value="">3.000.000</option>
                                    <option value="">4.000.000</option>
                                    <option value="">5.000.000</option>
                                    <option value="">6.000.000</option>
                                    <option value="">7.000.000</option>
                                    <option value="">8.000.000</option>
                                    <option value="">9.000.000</option>
                                    <option value="">10.000.000</option>
                                    <option value="">11.000.000</option>
                                    <option value="">12.000.000</option>
                                    <option value="">13.000.000</option>
                                    <option value="">14.000.000</option>
                                    <option value="">15.000.000</option>
                                    <option value="">16.000.000</option>
                                    <option value="">17.000.000</option>
                                    <option value="">18.000.000</option>
                                    <option value="">19.000.000</option>
                                    <option value="">20.000.000</option>
                                    <option value="">21.000.000</option>
                                    <option value="">22.000.000</option>
                                    <option value="">23.000.000</option>
                                    <option value="">24.000.000</option>
                                    <option value="">25.000.000</option>
                                </select>
                            </div>
                            <div class="GiaDen">
                                <span id="TKgiaden">Giá đến</span>
                                <select id="DropDownListGiaDen" size="1">
                                    <option value="">1.000.000</option>
                                    <option value="">2.000.000</option>
                                    <option value="">3.000.000</option>
                                    <option value="">4.000.000</option>
                                    <option value="">5.000.000</option>
                                    <option value="">6.000.000</option>
                                    <option value="">7.000.000</option>
                                    <option value="">8.000.000</option>
                                    <option value="">9.000.000</option>
                                    <option value="">10.000.000</option>
                                    <option value="">11.000.000</option>
                                    <option value="">12.000.000</option>
                                    <option value="">13.000.000</option>
                                    <option value="">14.000.000</option>
                                    <option value="">15.000.000</option>
                                    <option value="">16.000.000</option>
                                    <option value="">17.000.000</option>
                                    <option value="">18.000.000</option>
                                    <option value="">19.000.000</option>
                                    <option value="">20.000.000</option>
                                    <option value="">21.000.000</option>
                                    <option value="">22.000.000</option>
                                    <option value="">23.000.000</option>
                                    <option value="">24.000.000</option>
                                    <option value="">25.000.000</option>
                                </select>
                            </div>
                            <input id="CheckBoxGiamGia" type="checkbox" />
                            Giảm giá
                        <button type="button" class="btn btn-info" id="tkdt">Tìm kiếm</button>
                        </div>
                    </div>
                    <br />
                    <br />
                    <div class="panel panel-default khuyenmai">
                        <div class="panel-heading">
                            <h3 class="panel-title">Khuyến mại </h3>
                        </div>
                        <div class="panel-body">
                            <div class="khuyenmai">
                                <div class="km">
                                    <a href="#">
                                        <div>
                                            <img src="../Resource/Trang chu/ttuc1.jpg" />
                                        </div>
                                    </a>

                                    <a href="#">
                                        <div class="tieudekm">Đánh giá Mi Powerbank Pro: mỏng, hiệu suất cao, sạc siêu tốc </div>
                                    </a>

                                </div>
                                <br />
                                <div class="km">
                                    <a href="#">
                                        <div>
                                            <img src="../Resource/Trang chu/ttuc2.jpg" />
                                        </div>
                                    </a>
                                    <a href="#">
                                        <div class="tieudekm">Đánh giá Mi Powerbank Pro: mỏng, hiệu suất cao, sạc siêu tốc</div>
                                    </a>
                                </div>
                                <br />
                                <div class="km">
                                    <a href="#">
                                        <div>
                                            <img src="../Resource/Trang chu/ttuc3.jpg" />
                                        </div>
                                    </a>
                                    <a href="#">
                                        <div class="tieudekm">Đánh giá Mi Powerbank Pro: mỏng, hiệu suất cao, sạc siêu tốc</div>
                                    </a>
                                </div>
                                <br />
                                <div class="xemthem1">
                                    <a href="#">Xem thêm...</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br />
                    <br />
                    <div class="QuangCao1">
                        <img src="../Resource/Trang chu/quangcao1.png" />
                    </div>
                    <div class="QuangCao2">
                        <img src="../Resource/Trang chu/quangcao2.png" />
                    </div>
                </div>
                <div class="col-md-6">
                    <div id="Slide">
                        <div id="myCarousel" class="carousel slide" data-ride="carousel">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                <li data-target="#myCarousel" data-slide-to="1"></li>
                                <li data-target="#myCarousel" data-slide-to="2"></li>
                                <li data-target="#myCarousel" data-slide-to="3"></li>
                                <li data-target="#myCarousel" data-slide-to="4"></li>
                            </ol>

                            <!-- Wrapper for slides -->
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <img src="../Resource/Trang chu/slide1.png" alt="">
                                </div>

                                <div class="item">
                                    <img src="../Resource/Trang chu/slide2.png" alt="">
                                </div>

                                <div class="item">
                                    <img src="../Resource/Trang chu/slide3.png" alt="">
                                </div>

                                <div class="item">
                                    <img src="../Resource/Trang chu/slide4.png" alt="">
                                </div>
                                <div class="item">
                                    <img src="../Resource/Trang chu/slide5.png" alt="">
                                </div>
                            </div>

                            <!-- Left and right controls -->
                            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                    </div>
                    <div class="PhoneHot">
                        <h4>ĐIỆN THOẠI HOT</h4>
                        <hr />
                    </div>
                    <div class="row">
                        <div class="col-sm-4">
                            <img src="../Resource/Trang chu/anh1.png" />
                            Microsoft Lumia 950 XL<br />
                            <label>15.989.000 ₫</label>
                        </div>
                        <div class="col-sm-4">
                            <img src="../Resource/Trang chu/anh2.png" />
                            iPhone 6s Plus 16GB (Bản Quốc tế)<br />
                            <label>19.790.000 ₫ </label>
                        </div>
                        <div class="col-sm-4">
                            <img src="../Resource/Trang chu/anh3.jpg" />
                            Samsung Galaxy Note 4<br />
                            <label>10.489.000 ₫</label>
                        </div>
                        <div class="col-sm-4">
                            <img src="../Resource/Trang chu/anh4.jpg" />
                            Samsung Galaxy S6 G920F<br />
                            <label>14.490.000 ₫</label>
                        </div>
                        <div class="col-sm-4">
                            <img src="../Resource/Trang chu/anh5.jpg" />
                            Samsung Galaxy V Plus G318<br />
                            <label>1.589.000 ₫</label>
                        </div>
                        <div class="col-sm-4">
                            <img src="../Resource/Trang chu/anh6.png" />
                            iPhone 6s Plus 128GB (Bản Quốc tế)<br />
                            <label>27.490.000 ₫</label>
                        </div>
                        <div class="col-sm-4">
                            <img src="../Resource/Trang chu/anh7.png" />
                            iPhone 6s Plus 64GB (Bản Quốc tế)<br />
                            <label>22.690.000 ₫</label>
                        </div>
                        <div class="col-sm-4">
                            <img src="../Resource/Trang chu/anh8.png" />
                            iPhone 6s 16GB (Bản Quốc tế)<br />
                            <label>17.390.000 ₫</label>
                        </div>
                        <div class="col-sm-4">
                            <img src="../Resource/Trang chu/anh9.png" />
                            Oppo F1<br />
                            <label>5.990.000 ₫</label>
                        </div>
                    </div>
                    <br />
                    <div class="PhoneMoi">
                        <h4>ĐIỆN THOẠI MỚI</h4>
                        <hr />
                    </div>
                    <div class="row">
                        <div class="col-sm-4">
                            <img src="../Resource/Trang chu/anh1.png" />
                            Microsoft Lumia 950 XL<br />
                            <label>15.989.000 ₫</label>
                        </div>
                        <div class="col-sm-4">
                            <img src="../Resource/Trang chu/anh2.png" />
                            iPhone 6s Plus 16GB (Bản Quốc tế)<br />
                            <label>19.790.000 ₫ </label>
                        </div>
                        <div class="col-sm-4">
                            <img src="../Resource/Trang chu/anh3.jpg" />
                            Samsung Galaxy Note 4<br />
                            <label>10.489.000 ₫</label>
                        </div>
                        <div class="col-sm-4">
                            <img src="../Resource/Trang chu/anh4.jpg" />
                            Samsung Galaxy S6 G920F<br />
                            <label>14.490.000 ₫</label>
                        </div>
                        <div class="col-sm-4">
                            <img src="../Resource/Trang chu/anh5.jpg" />
                            Samsung Galaxy V Plus G318<br />
                            <label>1.589.000 ₫</label>
                        </div>
                        <div class="col-sm-4">
                            <img src="../Resource/Trang chu/anh6.png" />
                            iPhone 6s Plus 128GB (Bản Quốc tế)<br />
                            <label>27.490.000 ₫</label>
                        </div>
                    </div>
                    <br />
                    <div class="PhuKien">
                        <h4>PHỤ KIỆN</h4>
                        <hr />
                    </div>
                    <div class="row">
                        <div class="col-sm-4">
                            <img src="../Resource/Trang chu/pk1.jpg" />
                            Sạc nhanh Samsung Galaxy Note 5<br />
                            <label>1.190.000 ₫</label>
                        </div>
                        <div class="col-sm-4">
                            <img src="../Resource/Trang chu/pk2.jpg" />
                            Tai nghe Bluetooth Roman X3S<br />
                            <label>400.000 ₫</label>
                        </div>
                        <div class="col-sm-4">
                            <img src="../Resource/Trang chu/pk3.jpg" />
                            Loa Sennic SN467<br />
                            <label>250.000 ₫ </label>
                        </div>
                        <div class="col-sm-4">
                            <img src="../Resource/Trang chu/pk4.jpg" />
                            Sạc dự phòng SSK SRBC 525 6000mAh<br />
                            <label>300.000 ₫  </label>
                        </div>
                        <div class="col-sm-4">
                            <img src="../Resource/Trang chu/pk5.jpg" />
                            Thẻ nhớ SSK 8G MCSD004<br />
                            <label>80.000 ₫ </label>
                        </div>
                        <div class="col-sm-4">
                            <img src="../Resource/Trang chu/pk6.jpg" />
                            Bao da Baseus Terse iPhone 6/ 6s<br />
                            <label>260.000 ₫</label>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Hỗ trợ trực tuyến</h3>
                        </div>
                        <div class="panel-body">
                            <div class="LienHe">
                                <img src="../Resource/Trang chu/phone_lienhe.png" />
                                Mr.Sơn: 12345<br />
                                <img src="../Resource/Trang chu/phone_lienhe.png" />
                                Mr.Kiên: 12345<br />
                                <img src="../Resource/Trang chu/phone_lienhe.png" />
                                Ms.Dung: 12345
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Tin tức công nghệ </h3>
                        </div>
                        <div class="panel-body">
                            <div class="TinTuc">
                                <div class="tt1">
                                    <a href="#">
                                        <div>
                                            <img src="../Resource/Trang chu/ttuc1.jpg" />
                                        </div>
                                    </a>

                                    <a href="#">
                                        <div class="tieudett">Đánh giá Mi Powerbank Pro: mỏng, hiệu suất cao, sạc siêu tốc </div>
                                    </a>

                                </div>
                                <br />
                                <div class="tt1">
                                    <a href="#">
                                        <div>
                                            <img src="../Resource/Trang chu/ttuc2.jpg" />
                                        </div>
                                    </a>
                                    <a href="#">
                                        <div class="tieudett">Đánh giá Mi Powerbank Pro: mỏng, hiệu suất cao, sạc siêu tốc</div>
                                    </a>
                                </div>
                                <br />
                                <div class="tt1">
                                    <a href="#">
                                        <div>
                                            <img src="../Resource/Trang chu/ttuc3.jpg" />
                                        </div>
                                    </a>
                                    <a href="#">
                                        <div class="tieudett">Đánh giá Mi Powerbank Pro: mỏng, hiệu suất cao, sạc siêu tốc</div>
                                    </a>
                                </div>
                                <br />
                                <div class="xemthem2">
                                    <a href="TinTuc.aspx">Xem thêm...</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <footer>Nhóm 1 - Xây dựng website bán điện thoại</footer>
                </div>
            </div>
        </div>  
        <script src="../Design/bootstrap-3.3.6-dist/js/bootstrap.min.js"></script>
    </form>
</body>
</html>
