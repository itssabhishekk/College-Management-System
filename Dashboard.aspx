<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Dashboard.aspx.vb" Inherits="CwOne.Dashboard" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>Dashboard</title>
        <link href="style.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3 active" href="dashboard.aspx">Berkley College</a>
            <!-- Sidebar Toggle-->

            <!-- Navbar-->
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">SIMPLE FORM</div>
                            <a class="nav-link" href="Student.aspx">
                                <div class="sb-nav-link-icon"><i class="fas fa-users"></i></div>
                                Student
                            </a>
                            <a class="nav-link" href="teacher.aspx">
                                <div class="sb-nav-link-icon"><i class="fas fa-user"></i></div>
                                Teacher
                            </a>
                            <a class="nav-link" href="module.aspx">
                                <div class="sb-nav-link-icon"><i class="fas fa-book"></i></div>
                                Module
                            </a>
                            <a class="nav-link" href="address.aspx">
                                <div class="sb-nav-link-icon"><i class="fas fa-map"></i></div>
                                Address
                            </a>
                            <a class="nav-link" href="department.aspx">
                                <div class="sb-nav-link-icon"><i class="fas fa-building"></i></div>
                                Department
                            </a>
                            <div class="sb-sidenav-menu-heading">COMPLEX FORM </div>
                            <a class="nav-link" href="TeacherModule.aspx">
                                <div class="sb-nav-link-icon"><i class="fas fa-chalkboard"></i></div>
                                Teacher-Module
                            </a>
                            <a class="nav-link" href="StudentFee.aspx">
                                <div class="sb-nav-link-icon"><i class="fas fa-coins"></i></div>
                                Student-Fee
                            </a>
                            <a class="nav-link" href="StudentAssignment.aspx">
                                <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                                Student-Assignment
                            </a>


                        </div>
                    </div>
                </nav>
            </div>

            <div id="layoutSidenav_content">
                <!-- Begin Page Content -->
                <div class="container-fluid">
                    <!-- Page Heading -->
                 
                        <form id="form1" runat="server">
                    <h1 class="h3 mb-4 text-gray-800" style="text-align: center; margin-top: 15px;">
                          
                        Welcome to Berkley College Dashboard</h1><br />
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="select count(modulecode) as &quot;TOTAL MODULES&quot; from module
"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="select count(CourseID) as &quot;Total Course&quot; from course
"></asp:SqlDataSource>
                       <div>
                        <table>
                        <td ><asp:GridView ID="GridView2" Class="table table-primary" style="margin-left: 50px;" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource5" Height="80px" Width="120px">
                            <Columns>
                                <asp:BoundField DataField="Total Course" HeaderText="Total Course" SortExpression="Total Course" />
                            </Columns>

                        </asp:GridView>
                        </td>                
                            <td><asp:GridView ID="GridView3" Class="table table-primary" style="margin-left: 20px;" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" Height="80px" Width="130px">
                                <Columns>
                                    <asp:BoundField DataField="TOTAL MODULES" HeaderText="Total Modules" SortExpression="TOTAL MODULES" />
                                </Columns>
                            </asp:GridView>
                                </td>
                            <td>
                            <asp:GridView ID="GridView4"  Class="table table-primary" style="margin-left: 20px;" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource6" Height="80px" Width="120px">
                                <Columns>
                                    <asp:BoundField DataField="Total Staff" HeaderText="Total Staff" SortExpression="Total Staff" />
                                </Columns>
                            </asp:GridView>
                            </td>
                            <td>
                            <asp:GridView ID="GridView5"  Class="table table-primary" style="margin-left: 20px;" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource7" Height="80px" Width="120px">
                                <Columns>
                                    <asp:BoundField DataField="Total Teacher" HeaderText="Total Teacher" SortExpression="Total Teacher" />
                                </Columns>
                            </asp:GridView>
                            </td>
                            <td>
                            <asp:GridView ID="GridView6"  Class="table table-primary" style="margin-left: 20px;" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource8" Height="80px" Width="120px">
                                <Columns>
                                    <asp:BoundField DataField="Total Student" HeaderText="Total Student" SortExpression="Total Student" />
                                </Columns>
                            </asp:GridView>
                            </td>

                            <td>
                            <asp:GridView ID="GridView7"  Class="table table-primary" style="margin-left: 20px;" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource9" Height="80px" Width="160px">
                                <Columns>
                                    <asp:BoundField DataField="Total Department" HeaderText="Total Department" SortExpression="Total Department" />
                                </Columns>
                            </asp:GridView>

                            </td>
                       </table>
                     </div>
                    <br />

                    <div>
                        <table>
                            <td >
                                <h4 style="margin-left: 130px;">
                                    Fee structure of Courses
                                </h4>
                            </td>
                             <td >
                                <h4 style="margin-left: 210px;">
                                    Salary structure of Staffs
                                </h4>
                            </td>
                        </table>
                    </div>





                            <asp:Chart ID="Chart1" runat="server" style="margin-left:20px;" DataSourceID="SqlDataSource2" Height="266px" Width="435px">
                                <series>
                                    <asp:Series Name="Series1" XValueMember="COURSENAME" YValueMembers="COURSEFEE">
                                    </asp:Series>
                                </series>
                                <chartareas>
                                    <asp:ChartArea Name="ChartArea1">
                                    </asp:ChartArea>
                                </chartareas>
                            </asp:Chart>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;STAFFID&quot;, &quot;SALARY&quot; FROM &quot;STAFF&quot;"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="select count(TeacherID) as &quot;Total Teacher&quot; from Teacher
"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="select count(DepartmentID) as &quot;Total Department&quot; from department
"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="select count(StudentID) as &quot;Total Student&quot; from student
"></asp:SqlDataSource>
                            <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource1" Height="260px" Width="487px">
                                <series>
                                    <asp:Series Name="Series1" XValueMember="STAFFID" YValueMembers="SALARY">
                                    </asp:Series>
                                </series>
                                <chartareas>
                                    <asp:ChartArea Name="ChartArea1">
                                    </asp:ChartArea>
                                </chartareas>
                            </asp:Chart>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;COURSEFEE&quot;, &quot;COURSENAME&quot; FROM &quot;COURSE&quot;"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="select count(StaffID) as &quot;Total Staff&quot; from staff
"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="select count(modulecode) as &quot;TOTAL MODULES&quot; from module
"></asp:SqlDataSource>
                   </form>
                </div>
                <!-- /.container-fluid -->
            </div>
            <!-- End of Main Content -->


   
        </div>
        
    </body>

</html>