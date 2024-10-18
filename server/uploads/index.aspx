<!DOCTYPE html
    PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head2">
    <title>
        Phần mềm quản lý đào tạo tín chỉ UniSoft - Thiên An
    </title>
    <meta id="Meta1" name="KEYWORDS" content="Phần mềm quản lý đào tạo tín chỉ" />
    <link href="/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <link href="/css/UniPortal.css" rel="stylesheet" />
    <link href="/css/bootstrap.css" rel="stylesheet" />
    <link href="/css/head.css" rel="stylesheet" />
    <script language="javascript">
        function OpenWindows() {
            var WinSettings = "'location=1, left=100,top=10,width=900,height=700,toolbar=1,resizable=0'"
            // ALTER BELOW LINE - supply correct URL for Child Form
            window.open("wfrmDangKyLopTinChiB3In.aspx", "KetQuaDangKy", WinSettings);
        }
        function Confirm() {
            var confirm_value = document.createElement("INPUT");
            confirm_value.type = "hidden";
            confirm_value.name = "confirm_value";
            if (confirm("Chắc chắn bạn muốn hủy lớp tín chỉ không?")) {
                confirm_value.value = "Yes";
            } else {
                confirm_value.value = "No";
            }
            document.forms[0].appendChild(confirm_value);
        }
    </script>
</head>

<body style="background-color:white">
    <form method="post" action="./wfrmDangKyLopTinChiB3.aspx" id="form2">
        <div class="aspNetHidden">
            <input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
            <input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
            <input type="hidden" name="__LASTFOCUS" id="__LASTFOCUS" value="" />
            <input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="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" />
        </div>

        <script type="text/javascript">
            //<![CDATA[
var theForm = document.forms['form2'];
if (!theForm) {
    theForm = document.form2;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
//]]>
        </script>


        <div class="aspNetHidden">

            <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="A8A7C799" />
            <input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEdAB6+U73s8qni985zRBhC4ypiVuRk9ONp5qeKHQpDMYbgH7zhGsZMyVjHmepwC8c6WgWUQGqV+6aS1v/R+1lxid4xq8r4h50IdfVJH4RjdDJnPZ+x3DxiT1V+AZt2lFprcj8KBf7D81sZ70wZ5dMVHwFGqbydlNMcxS5ZcHVP7Nv0VLTDUKWEmbqTSvc2VyCekCaXPzJ9I3RcnArfbSd2h2GvQbcfcCLSysg+O9bQLb0BlT0W3MTqG83bDavrRHWMZ94kO5bWVptvuBkGN1aZhqmmYGm279jbMN1RnIYX9ezYmWUBGTSmQQ7Q9foBeH1HPxfQe4tFVHkXrIhIJXl8GFFAE5GRadUMYnSpP9cIZPE2qQodLGEXDQpRpRbBSO8bK4FIwwgd5+jO9FxQV9TazhpUGD+mmNdFl0hMTTVv52b91svF8ZgIdsZ8DTVFjBPHrJYFeV68xLPszmmO2/PEhx6tvB00CMba9AHar5zuO9ZUEPtk26IOw8aDwZIxCISfsXPes+wr/X7Fs3PfZykcFefJccgOHWiIkPogtGH+j9XiuTpG7foXdD01OwdQzt9TtBx29IELYGivch59WzPfD87ifhVm5TipLKRsll+ez4nNGMqGi5qQHrFd47YgBPUz3LQkM6BynkYXa9Tb8EfZtyORhhYFeRkrvcEQvHVUBHmlog==" />
        </div>
        <div id="siteWrapper">
            <div class="row">





                <div class="row" style="height:50px">
                    <div id="navigation" style="height:50px">
                        <div class="col-md-2"><img style="height:50px; width:109%"  src="/Images/logo_left.png" /></div>
                        <div class="col-md-2">
                            <div class="profile-usermenu"
                                style="color:white; margin-left:10px; margin-top:15px; font-size:16px">
                                <i class="glyphicon glyphicon-menu-hamburger"></i>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="profile-usermenu"
                                style="color:white; text-align:right; margin-top:15px; font-size:14px">
                                <a href="/forum/MessageInbox.aspx"
                                    style="color:white; margin-right:15px; text-align:right; margin-top:15px; font-size:14px">
                                    <i class="glyphicon glyphicon-envelope"></i> <span>Tin nhắn</span>
                                </a>
                                <a href="/ChangePassword.aspx"
                                    style="color:white; margin-right:15px; text-align:right; margin-top:15px; font-size:14px">
                                    <i class="glyphicon glyphicon-lock"></i> <span>Đổi mật khẩu</span>
                                </a>
                                <a href="/LogOut.aspx"
                                    style="color:white; margin-right:15px; text-align:right; margin-top:15px; font-size:14px">
                                    <i class="glyphicon glyphicon-off"></i> <span>Đăng xuất</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
            <div class="row">
                <div class="col-md-2">

                    <style media="screen" type="text/css">
                        .thumbnail {
                            display: block;
                            padding: 2px;
                            margin-bottom: 5px;
                            line-height: 1.2;
                            text-align: left;
                            background-color: #fff;
                            border: 0px solid;
                            border-radius: 0px;
                            height: 100%;
                        }

                        body {
                            background-color: #f2f2f2;
                        }
                    </style>

                    <div class="thumbnail1">
                        <div class="row profile">
                            <div class="profile-sidebar">
                                <!-- SIDEBAR USERPIC -->
                                <div class="profile-userpic" style="text-align:center">
                                    <a
                                        href="/UpdateThongTinCaNhan.aspx"><img src="\Images\no_avatar.png" id="nav1_image_ulr" /></a>
                                </div>
                                <!-- END SIDEBAR USERPIC -->
                                <!-- SIDEBAR USER TITLE -->
                                <div class="profile-usertitle">
                                    <div class="profile-usertitle-job">
                                        <span id="nav1_lblHo_ten">Vũ Duy Quang</span>
                                    </div>
                                    <div class="profile-usertitle-job">
                                        <span id="nav1_lblMa_sv">20224035</span>
                                    </div>
                                </div>
                                <div class="profile-usermenu">
                                    <ul class="nav">
                                        <li id="nav1_ID8010">
                                            <a href="/wfrmHoSoSinhVien.aspx"
                                                id="A4"><i class="glyphicon glyphicon-user"></i>SƠ YẾU LÝ LỊCH</a>
                                        </li>
                                        <li id="nav1_ID8020">
                                            <a href="/ChuongTrinhDaoTaoSinhVien.aspx"
                                                id="CTDT"><i class="glyphicon glyphicon-list-alt"></i>CHƯƠNG TRÌNH
                                                ĐÀOTẠO</a>
                                        </li>
                                        <li id="nav1_ID8030">
                                            <a href="/KetQuaXulyHocvu.aspx"
                                                id="A2"><i class="glyphicon glyphicon-alert"></i>CẢNH BÁO HỌC VỤ</a>
                                        </li>
                                        <li id="nav1_ID8040" class="dropdown"><a class="dropdown-toggle"
                                                data-toggle="dropdown" href="/wfrmDangKyLopTinChiB1.aspx?Chuyen_nganh=1"
                                                id="DangKy"><i class="glyphicon glyphicon-tags"></i>ĐĂNG KÝ
                                                HỌC<span class="caret"></span></a>
                                            <ul class="nav1">
                                                <li id="nav1_ID8041"><a href="/wfrmDangKyLopTinChiB1.aspx"
                                                        id="A7"><i class="glyphicon glyphicon-plus"></i>Đăng ký môn học
                                                        tín chỉ</a></li>
                                                <li id="nav1_ID8042"><a
                                                        href="/wfrmDangKyLopTinChiB1.aspx?Dang_ky_hoc_lai_cai_thien_diem=1"
                                                        id="A12"><i class="glyphicon glyphicon-off"></i>Đ.Ký học lại &
                                                        cải thiện</a> </li>

                                                <li id="nav1_ID8044"><a href="/KetQuaDangKy.aspx"
                                                        id="A9"><i class="glyphicon glyphicon-th-list"></i>Lớp học phần
                                                        đã đ.ký</a></li>



                                            </ul>
                                        </li>
                                        <li id="nav1_ID8050" class="dropdown"><a class="dropdown-toggle"
                                                data-toggle="dropdown" href="/HocPhiThanhToanTrucTuyen.aspx"
                                                id="HOCPHI_THANHTOAN"><i class="glyphicon glyphicon-shopping-cart"></i>THANH
                                                TOÁN HỌC PHÍ<span class="caret"></span></a>
                                            <ul class="nav1">
                                                <li id="nav1_ID8051"><a href="/HocPhiThanhToanTrucTuyen.aspx"
                                                        id="HOCPHI_THANHTOAN2"><i class="glyphicon glyphicon-qrcode"></i>Thanh
                                                        toán Online</a></li>
                                                <li id="nav1_ID8052"><a href="/HocPhiLichSuGiaoDich.aspx"
                                                        id="HOCPHI_LICHSUGIAODICH"><i class="glyphicon glyphicon-dashboard"></i>Lịch
                                                        sử giao dịch</a></li>
                                            </ul>
                                        </li>
                                        <li id="nav1_ID8100">
                                            <a href="/KetQuaHocTap.aspx"
                                                id="A1"><i class="glyphicon glyphicon-heart"></i>XEM ĐIỂM HỌC TẬP</a>
                                        </li>
                                        <li id="nav1_ID8060">
                                            <a href="/ThongTinTaiChinh.aspx"
                                                id="A3"><i class="glyphicon glyphicon-usd"></i>XEM HỌC PHÍ</a>
                                        </li>
                                        <li id="nav1_ID8070">
                                            <a href="/wfrmDangKyLopTinChiB3.aspx"
                                                id="LichHoc"><i class="glyphicon glyphicon-calendar"></i>XEM LỊCH HỌC
                                                KỲ</a>
                                        </li>
                                        <li id="nav1_ID8080">
                                            <a href="/wfrmLichHocSinhVienTinChi.aspx"
                                                id="LichHocTuan"><i class="glyphicon glyphicon-calendar"></i>XEM LỊCH
                                                HỌC TUẦN</a>
                                        </li>


                                        <li id="nav1_ID8090">
                                            <a href="/ThongTinLichThi.aspx"
                                                id="LichThi"><i class="glyphicon glyphicon-file"></i>XEM LỊCH THI</a>
                                        </li>
                                        <li id="nav1_ID8110">
                                            <a href="/KetQuaRenLuyen.aspx"
                                                id="A5"><i class="glyphicon glyphicon-pencil"></i>XEM ĐIỂM RÈN LUYỆN</a>
                                        </li>
                                        <li id="nav1_ID8120">
                                            <a href="/ThongTinKhenThuongKyLuatHocBong.aspx"
                                                id="A15"><i class="glyphicon glyphicon-screenshot"></i>XEM KHEN THƯỞNG,
                                                KỶ LUẬT</a>
                                        </li>




                                        <li id="nav1_ID8170">
                                            <a href="/GuiYkien.aspx"
                                                id="A10"><i class="glyphicon glyphicon-send"></i>GỬI Ý KIẾN</a>
                                        </li>
                                        <li id="nav1_ID8180">
                                            <a href="/UpdateThongTinCaNhan.aspx"
                                                id="A13"><i class="glyphicon glyphicon-save"></i>SỬA TT CÁ NHÂN</a>
                                        </li>
                                    </ul>
                                </div>
                                <!-- END MENU -->
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-10" style="background-color:white;margin-left:-5px">
                    <table border="0" cellpadding="0" cellspacing="0" style="width: 100%; height: 100%">

                        <tr>
                            <td align="center" style="width: 100%; height: 25px">
                                <span id="lblHead" style="display:inline-block;color:#05233B;background-color:Transparent;border-color:Transparent;font-family:Arial;font-size:Medium;font-weight:bold;height:25px;width:100%;"></span>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="width: 100%; height: 22px">
                                <span style="font-family: Arial">
                    <span id="Label1">Học kỳ đăng ký:</span></span>
                                <select name="cmbKy_dang_ky" onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;cmbKy_dang_ky\&#39;,\&#39;\&#39;)&#39;, 0)" id="cmbKy_dang_ky" style="width:250px;">
	<option selected="selected" value="19">Đợt 1 Học kỳ 1 Năm học 2024-2025</option>
	<option value="20">Đợt 2 Học kỳ 1 Năm học 2024-2025</option>
	<option value="18">Đợt 1 Học kỳ 2 Năm học 2023-2024</option>
	<option value="15">Đợt 1 Học kỳ 1 Năm học 2023-2024</option>
	<option value="17">Đợt 2 Học kỳ 1 Năm học 2023-2024</option>
	<option value="14">Đợt 1 Học kỳ 2 Năm học 2022-2023</option>
	<option value="16">Đợt 2 Học kỳ 2 Năm học 2022-2023</option>
	<option value="13">Đợt 1 Học kỳ 1 Năm học 2022-2023</option>
	<option value="12">Đợt 1 Học kỳ 2 Năm học 2021-2022</option>
	<option value="11">Đợt 1 Học kỳ 1 Năm học 2021-2022</option>
	<option value="10">Đợt 1 Học kỳ 2 Năm học 2020-2021</option>
	<option value="9">Đợt 1 Học kỳ 1 Năm học 2020-2021</option>
	<option value="5">Đợt 1 Học kỳ 2 Năm học 2019-2020</option>
	<option value="7">Đợt 2 Học kỳ 2 Năm học 2019-2020</option>
	<option value="4">Đợt 1 Học kỳ 2 Năm học 2018-2019</option>
	<option value="3">Đợt 1 Học kỳ 1 Năm học 2018-2019</option>
	<option value="2">Đợt 1 Học kỳ 2 Năm học 2017-2018</option>
	<option value="1">Đợt 1 Học kỳ 1 Năm học 2017-2018</option>

</select>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 100%">
                                <table style="width: 100%" border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td style="width: 100%; height: 22px" colspan=2>
                                            <table border="0" cellpadding="1" cellspacing="1" style="width: 100%"
                                                bgcolor="#336699">
                                                <tr>
                                                    <td style="width: 30%; height: 19px" align="left">
                                                        <span id="Label2">Số học phần đã đăng ký:</span>&emsp;<span id="lblSo_mon" style="font-family:Arial;font-size:Small;font-weight:bold;">7</span><strong></strong>
                                                    </td>
                                                    <td style="width: 30%; height: 19px" align="center">
                                                        <span id="Label3">Tổng số tín chỉ đã đăng ký:</span>&emsp;<span id="lblSo_tin_chi" style="font-family:Arial;font-size:Small;font-weight:bold;">23</span><strong></strong>
                                                    </td>
                                                    <td style="width: 40%; height: 19px" align="right">
                                                        <span id="Label4">Tổng số tiền dự kiến nộp:</span>&emsp;<span id="lblSo_tien_nop" style="font-family:Arial;font-size:Small;font-weight:bold;">15,854,000</span>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100%; height: 22px" colspan=2>

                                            <div>
                                                <table class="GridViewStyle" cellspacing="0" cellpadding="4" rules="all"
                                                    border="1" id="grdViewLopDangKy"
                                                    style="width:100%;border-collapse:collapse;">
                                                    <tr class="HeaderStyle">
                                                        <th scope="col">T&#237;nh chất m&#244;n học</th>
                                                        <th scope="col">M&#227; học phần</th>
                                                        <th scope="col">T&#234;n học phần</th>
                                                        <th scope="col">Số t&#237;n chỉ</th>
                                                        <th scope="col">T&#234;n lớp t&#237;n chỉ</th>
                                                        <th scope="col">Ca học</th>
                                                        <th scope="col">Lịch học</th>
                                                        <th scope="col">Giáo viên</th>
                                                        <th scope="col">Phòng học</th>
                                                        <th scope="col">Đơn gi&#225;</th>
                                                        <th scope="col">Số tiền nộp</th>
                                                        <th scope="col">Cố vấn duyệt</th>
                                                    </tr>
                                                    <tr class="RowStyle">
                                                        <td align="center" valign="middle" rowspan="10"
                                                            style="width:6%;">Học b&#236;nh thường ng&#224;nh 1</td>
                                                        <td align="center" valign="middle" style="width:6%;">IT3214</td>
                                                        <td valign="middle" style="width:18%;">An to&#224;n bảo mật
                                                            th&#244;ng tin</td>
                                                        <td align="center" valign="middle" style="width:5%;">3</td>
                                                        <td valign="middle" style="width:12%;">
                                                            ATBMTT.03.K13.21.LH.C04.1_LT</td>
                                                        <td align="center" valign="bottom" style="width:4%;">Chiều <br> Chiều
                                                            <br> Chiều</td>
                                                        <td align="center" valign="middle" style="width:11%;">
                                                            26/08/24-29/09/24<br><b><i>Thứ 2(T10-12)</b></i><br>05/08/24-08/09/24<br><b><i>Thứ 4(T10-12)</b></i><br>05/08/24-01/09/24<br><b><i>Thứ 6(T10-12)</b></i><br>
                                                        </td>
                                                        <td valign="bottom" style="width:9%;">Nguyễn Anh Thơ <br> Nguyễn Anh Thơ
                                                            <br> Nguyễn Anh Thơ</td>
                                                        <td align="center" valign="bottom" style="width:8%;">Tòa nhà
                                                            Đinh Trọng Dật-301 <br> Tòa nhà Đinh Trọng Dật-701 <br> Tòa nhà Đinh Trọng Dật-701
                                                        </td>
                                                        <td align="right" valign="middle" style="width:4%;">711,000</td>
                                                        <td align="right" valign="middle" style="width:5%;">2,133,000
                                                        </td>
                                                        <td align="center" style="width:5%;">
                                                            <span class="aspNetDisabled"><input id="grdViewLopDangKy_ctl02_chk" type="checkbox" name="grdViewLopDangKy$ctl02$chk" checked="checked" disabled="disabled" /></span>

                                                        </td>
                                                    </tr>
                                                    <tr class="AltRowStyle">
                                                        <td align="center" valign="middle" style="width:6%;">IT3214</td>
                                                        <td valign="middle" style="width:18%;">An to&#224;n bảo mật
                                                            th&#244;ng tin</td>
                                                        <td align="center" valign="middle" style="width:5%;">0</td>
                                                        <td valign="middle" style="width:12%;">
                                                            ATBMTT.03.K13.21.LH.C04.1_LT.1_TH</td>
                                                        <td align="center" valign="bottom" style="width:4%;">Chiều</td>
                                                        <td align="center" valign="middle" style="width:11%;">
                                                            09/09/24-22/09/24<br><b><i>Thứ 4(T10-12)</b></i><br></td>
                                                        <td valign="bottom" style="width:9%;">Nguyễn Anh Thơ</td>
                                                        <td align="center" valign="bottom" style="width:8%;">Tòa nhà
                                                            Đinh Trọng Dật-701</td>
                                                        <td align="right" valign="middle" style="width:4%;">&nbsp;</td>
                                                        <td align="right" valign="middle" style="width:5%;">&nbsp;</td>
                                                        <td align="center" style="width:5%;">
                                                            <span class="aspNetDisabled"><input id="grdViewLopDangKy_ctl03_chk" type="checkbox" name="grdViewLopDangKy$ctl03$chk" checked="checked" disabled="disabled" /></span>

                                                        </td>
                                                    </tr>
                                                    <tr class="RowStyle">
                                                        <td align="center" valign="middle" style="width:6%;">IT3262</td>
                                                        <td valign="middle" style="width:18%;">Đồ &#225;n chuy&#234;n
                                                            ng&#224;nh</td>
                                                        <td align="center" valign="middle" style="width:5%;">5</td>
                                                        <td valign="middle" style="width:12%;">
                                                            ĐACN.03.K13.21.LH.C04.1_LT</td>
                                                        <td align="center" valign="bottom" style="width:4%;">Chiều <br> Chiều
                                                            <br> Chiều <br> Chiều <br> Chiều <br> Chiều <br> Chiều <br> Chiều
                                                        </td>
                                                        <td align="center" valign="middle" style="width:11%;">
                                                            21/10/24-03/11/24<br><b><i>Thứ 7(T7-9)</b></i><br>04/11/24-10/11/24<br><b><i>Thứ 7(T7-9)</b></i><br>11/11/24-24/11/24<br><b><i>Thứ 7(T7-9)</b></i><br>25/11/24-01/12/24<br><b><i>Thứ 7(T7-9)</b></i><br>14/10/24-24/11/24<br><b><i>Thứ 3(T7-9)</b></i><br>14/10/24-20/10/24<br><b><i>Thứ 7(T7-9)</b></i><br>14/10/24-24/11/24<br><b><i>Thứ 5(T7-9)</b></i><br>14/10/24-01/12/24<br><b><i>Thứ 4(T7-9)</b></i><br>
                                                        </td>
                                                        <td valign="bottom" style="width:9%;">Trần Xuân Thanh <br> Trần Xuân Thanh
                                                            <br> Trần Xuân Thanh <br> Trần Xuân Thanh <br> Trần Xuân Thanh
                                                            <br> Trần Xuân Thanh <br> Trần Xuân Thanh <br> Trần Xuân Thanh
                                                        </td>
                                                        <td align="center" valign="bottom" style="width:8%;">Tòa nhà
                                                            Đinh Trọng Dật-503 <br> Tòa nhà Đinh Trọng Dật-603 <br> Tòa nhà Đinh Trọng Dật-503
                                                        </td>
                                                        <td align="right" valign="middle" style="width:4%;">711,000</td>
                                                        <td align="right" valign="middle" style="width:5%;">3,555,000
                                                        </td>
                                                        <td align="center" style="width:5%;">
                                                            <span class="aspNetDisabled"><input id="grdViewLopDangKy_ctl04_chk" type="checkbox" name="grdViewLopDangKy$ctl04$chk" checked="checked" disabled="disabled" /></span>

                                                        </td>
                                                    </tr>
                                                    <tr class="AltRowStyle">
                                                        <td align="center" valign="middle" style="width:6%;">IT3264</td>
                                                        <td valign="middle" style="width:18%;">Lập tr&#236;nh hướng đối
                                                            tượng với Java</td>
                                                        <td align="center" valign="middle" style="width:5%;">3</td>
                                                        <td valign="middle" style="width:12%;">
                                                            LTHDJV.03.K13.21.LH.C04.1_LT</td>
                                                        <td align="center" valign="bottom" style="width:4%;">Chiều <br> Chiều
                                                            <br> Chiều</td>
                                                        <td align="center" valign="middle" style="width:11%;">
                                                            05/08/24-01/09/24<br><b><i>Thứ 3(T7-9)</b></i><br><b><i>Thứ 5(T7-9)</b></i><br><b><i>Thứ 7(T7-9)</b></i><br>
                                                        </td>
                                                        <td valign="bottom" style="width:9%;">Ngô Thuỳ Giang <br> Ngô Thuỳ Giang
                                                            <br> Ngô Thuỳ Giang</td>
                                                        <td align="center" valign="bottom" style="width:8%;">Tòa nhà
                                                            Đinh Trọng Dật-603 <br> Tòa nhà Đinh Trọng Dật-702 <br> Tòa nhà Đinh Trọng Dật-603
                                                        </td>
                                                        <td align="right" valign="middle" style="width:4%;">711,000</td>
                                                        <td align="right" valign="middle" style="width:5%;">2,133,000
                                                        </td>
                                                        <td align="center" style="width:5%;">
                                                            <span class="aspNetDisabled"><input id="grdViewLopDangKy_ctl05_chk" type="checkbox" name="grdViewLopDangKy$ctl05$chk" checked="checked" disabled="disabled" /></span>

                                                        </td>
                                                    </tr>
                                                    <tr class="RowStyle">
                                                        <td align="center" valign="middle" style="width:6%;">IT3264</td>
                                                        <td valign="middle" style="width:18%;">Lập tr&#236;nh hướng đối
                                                            tượng với Java</td>
                                                        <td align="center" valign="middle" style="width:5%;">0</td>
                                                        <td valign="middle" style="width:12%;">
                                                            LTHDJV.03.K13.21.LH.C04.1_LT.1_TH</td>
                                                        <td align="center" valign="bottom" style="width:4%;">Chiều <br> Chiều
                                                            <br> Chiều</td>
                                                        <td align="center" valign="middle" style="width:11%;">
                                                            02/09/24-15/09/24<br><b><i>Thứ 3(T7-9)</b></i><br><b><i>Thứ 5(T7-9)</b></i><br><b><i>Thứ 7(T7-9)</b></i><br>
                                                        </td>
                                                        <td valign="bottom" style="width:9%;">Ngô Thuỳ Giang <br> Ngô Thuỳ Giang
                                                            <br> Ngô Thuỳ Giang</td>
                                                        <td align="center" valign="bottom" style="width:8%;">Tòa nhà
                                                            Đinh Trọng Dật-603 <br> Tòa nhà Đinh Trọng Dật-702 <br> Tòa nhà Đinh Trọng Dật-603
                                                        </td>
                                                        <td align="right" valign="middle" style="width:4%;">&nbsp;</td>
                                                        <td align="right" valign="middle" style="width:5%;">&nbsp;</td>
                                                        <td align="center" style="width:5%;">
                                                            <span class="aspNetDisabled"><input id="grdViewLopDangKy_ctl06_chk" type="checkbox" name="grdViewLopDangKy$ctl06$chk" checked="checked" disabled="disabled" /></span>

                                                        </td>
                                                    </tr>
                                                    <tr class="AltRowStyle">
                                                        <td align="center" valign="middle" style="width:6%;">SSH1204
                                                        </td>
                                                        <td valign="middle" style="width:18%;">Lịch sử Đảng Cộng sản
                                                            Việt Nam</td>
                                                        <td align="center" valign="middle" style="width:5%;">2</td>
                                                        <td valign="middle" style="width:12%;">
                                                            LSĐCSVN.01.K13.02.LT.C01C04.1_LT</td>
                                                        <td align="center" valign="bottom" style="width:4%;">Chiều <br> Sáng
                                                        </td>
                                                        <td align="center" valign="middle" style="width:11%;">
                                                            05/08/24-08/09/24<br><b><i>Thứ 2(T7-9)</b></i><br><b><i>Thứ 4(T4-6)</b></i><br>
                                                        </td>
                                                        <td valign="bottom" style="width:9%;">Nguyễn Duy Thanh <br> Nguyễn Duy Thanh
                                                        </td>
                                                        <td align="center" valign="bottom" style="width:8%;">&nbsp;</td>
                                                        <td align="right" valign="middle" style="width:4%;">500,000</td>
                                                        <td align="right" valign="middle" style="width:5%;">1,000,000
                                                        </td>
                                                        <td align="center" style="width:5%;">
                                                            <span class="aspNetDisabled"><input id="grdViewLopDangKy_ctl07_chk" type="checkbox" name="grdViewLopDangKy$ctl07$chk" checked="checked" disabled="disabled" /></span>

                                                        </td>
                                                    </tr>
                                                    <tr class="RowStyle">
                                                        <td align="center" valign="middle" style="width:6%;">IT2205</td>
                                                        <td valign="middle" style="width:18%;">Ph&#225;t triển ứng dụng
                                                            cho thiết bị di động</td>
                                                        <td align="center" valign="middle" style="width:5%;">4</td>
                                                        <td valign="middle" style="width:12%;">
                                                            PTUTBD.03.K13.21.LH.C04.1_LT</td>
                                                        <td align="center" valign="bottom" style="width:4%;">Chiều <br> Chiều
                                                            <br> Chiều</td>
                                                        <td align="center" valign="middle" style="width:11%;">
                                                            14/10/24-24/11/24<br><b><i>Thứ 2(T10-12)</b></i><br>14/10/24-17/11/24<br><b><i>Thứ 6(T10-12)</b></i><br><b><i>Thứ 4(T10-12)</b></i><br>
                                                        </td>
                                                        <td valign="bottom" style="width:9%;">Phí Thị Hải Yến <br> Phí Thị Hải Yến
                                                            <br> Phí Thị Hải Yến</td>
                                                        <td align="center" valign="bottom" style="width:8%;">Tòa nhà
                                                            Đinh Trọng Dật-701 <br> Tòa nhà Đinh Trọng Dật-703</td>
                                                        <td align="right" valign="middle" style="width:4%;">700,000</td>
                                                        <td align="right" valign="middle" style="width:5%;">2,800,000
                                                        </td>
                                                        <td align="center" style="width:5%;">
                                                            <span class="aspNetDisabled"><input id="grdViewLopDangKy_ctl08_chk" type="checkbox" name="grdViewLopDangKy$ctl08$chk" checked="checked" disabled="disabled" /></span>

                                                        </td>
                                                    </tr>
                                                    <tr class="AltRowStyle">
                                                        <td align="center" valign="middle" style="width:6%;">IT2205</td>
                                                        <td valign="middle" style="width:18%;">Ph&#225;t triển ứng dụng
                                                            cho thiết bị di động</td>
                                                        <td align="center" valign="middle" style="width:5%;">0</td>
                                                        <td valign="middle" style="width:12%;">
                                                            PTUTBD.03.K13.21.LH.C04.1_LT.1_TH</td>
                                                        <td align="center" valign="bottom" style="width:4%;">Chiều <br> Chiều
                                                            <br> Chiều</td>
                                                        <td align="center" valign="middle" style="width:11%;">
                                                            25/11/24-08/12/24<br><b><i>Thứ 2(T10-12)</b></i><br>18/11/24-08/12/24<br><b><i>Thứ 6(T10-12)</b></i><br><b><i>Thứ 4(T10-12)</b></i><br>
                                                        </td>
                                                        <td valign="bottom" style="width:9%;">Phí Thị Hải Yến <br> Phí Thị Hải Yến
                                                            <br> Phí Thị Hải Yến</td>
                                                        <td align="center" valign="bottom" style="width:8%;">Tòa nhà
                                                            Đinh Trọng Dật-701 <br> Tòa nhà Đinh Trọng Dật-701 <br> Tòa nhà Đinh Trọng Dật-703
                                                        </td>
                                                        <td align="right" valign="middle" style="width:4%;">&nbsp;</td>
                                                        <td align="right" valign="middle" style="width:5%;">&nbsp;</td>
                                                        <td align="center" style="width:5%;">
                                                            <span class="aspNetDisabled"><input id="grdViewLopDangKy_ctl09_chk" type="checkbox" name="grdViewLopDangKy$ctl09$chk" checked="checked" disabled="disabled" /></span>

                                                        </td>
                                                    </tr>
                                                    <tr class="RowStyle">
                                                        <td align="center" valign="middle" style="width:6%;">IT3215</td>
                                                        <td valign="middle" style="width:18%;">Quản trị hệ thống Windows
                                                            Server 1</td>
                                                        <td align="center" valign="middle" style="width:5%;">3</td>
                                                        <td valign="middle" style="width:12%;">
                                                            QTHTW1.03.K13.21.LT.C04.1_LT</td>
                                                        <td align="center" valign="bottom" style="width:4%;">Chiều <br> Chiều
                                                            <br> Chiều</td>
                                                        <td align="center" valign="middle" style="width:11%;">
                                                            14/10/24-17/11/24<br><b><i>Thứ 3(T10-12)</b></i><br><b><i>Thứ 7(T10-12)</b></i><br><b><i>Thứ 5(T10-12)</b></i><br>
                                                        </td>
                                                        <td valign="bottom" style="width:9%;">Nguyễn Anh Thơ <br> Nguyễn Anh Thơ
                                                            <br> Nguyễn Anh Thơ</td>
                                                        <td align="center" valign="bottom" style="width:8%;">Tòa nhà
                                                            Đinh Trọng Dật-701</td>
                                                        <td align="right" valign="middle" style="width:4%;">711,000</td>
                                                        <td align="right" valign="middle" style="width:5%;">2,133,000
                                                        </td>
                                                        <td align="center" style="width:5%;">
                                                            <span class="aspNetDisabled"><input id="grdViewLopDangKy_ctl10_chk" type="checkbox" name="grdViewLopDangKy$ctl10$chk" checked="checked" disabled="disabled" /></span>

                                                        </td>
                                                    </tr>
                                                    <tr class="AltRowStyle">
                                                        <td align="center" valign="middle" style="width:6%;">IT2206</td>
                                                        <td valign="middle" style="width:18%;">Thương mại điện tử</td>
                                                        <td align="center" valign="middle" style="width:5%;">3</td>
                                                        <td valign="middle" style="width:12%;">
                                                            TMĐT.03.K13.21.LT.C04.1_LT</td>
                                                        <td align="center" valign="bottom" style="width:4%;">Chiều <br> Chiều
                                                            <br> Chiều</td>
                                                        <td align="center" valign="middle" style="width:11%;">
                                                            05/08/24-08/09/24<br><b><i>Thứ 3(T10-12)</b></i><br><b><i>Thứ 5(T10-12)</b></i><br><b><i>Thứ 7(T10-12)</b></i><br>
                                                        </td>
                                                        <td valign="bottom" style="width:9%;">Nguyễn Hữu Phương <br> Nguyễn Hữu Phương
                                                            <br> Nguyễn Hữu Phương</td>
                                                        <td align="center" valign="bottom" style="width:8%;">Tòa nhà
                                                            Đinh Trọng Dật-603 <br> Tòa nhà Đinh Trọng Dật-702 <br> Tòa nhà Đinh Trọng Dật-603
                                                        </td>
                                                        <td align="right" valign="middle" style="width:4%;">700,000</td>
                                                        <td align="right" valign="middle" style="width:5%;">2,100,000
                                                        </td>
                                                        <td align="center" style="width:5%;">
                                                            <span class="aspNetDisabled"><input id="grdViewLopDangKy_ctl11_chk" type="checkbox" name="grdViewLopDangKy$ctl11$chk" checked="checked" disabled="disabled" /></span>

                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" valign="bottom" colspan=2 style="height:30px">
                                            <div style="margin-top:7px">
                                                <BUTTON class="btn btn-success" onclick="OpenWindows()" type="button"><span id="Label5">In kết quả đăng ký</span></BUTTON>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" colspan="2">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" colspan="2" style="height: 19px">
                                            <span id="lblGhi_chu_noi_dung" style="font-family:Times New Roman;font-size:Medium;"></span>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>

                    </table>
                </div>
            </div>
            <div class="row">

                <div class="pageFooter">
                    <div class="row">
                        <div class="col-md-2" style="vertical-align:middle">
                            <a href="http://thienan.vn"
                                style="border-style:none;"><img src="/images/logo_thienan.jpg" border="0"/></a>
                        </div>
                        <div class="col-md-8">
                            <div class="col-xs-12 hidden visible-md visible-lg visible-xl">
                                Copyright ©2014 Trường Đại học Công Nghệ Đông Á<br />
                Phần mềm Quản lý đào tạo UniSoft 6.0 phát triển bởi <a href="http://thienan.vn"
                                    style=" border-style:none">Thiên An</a> </td>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="col-xs-12 hidden visible-md visible-lg visible-xl">
                                Sinh viên Online: 53<br />
                Khách Online: 38
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>

</html>