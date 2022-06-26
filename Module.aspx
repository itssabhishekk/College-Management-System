<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Module.aspx.vb" Inherits="CwOne._Module" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>Module</title>
        <link href="style.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="dashboard.aspx">Berkley College</a>
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
                            <a class="nav-link active" href="module.aspx">
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
                    <h1 class="h3 mb-4 text-gray-800" style="text-align: center; margin-top: 15px;">Module Details</h1>
                        <form id="form1" runat="server">
    
                    <asp:GridView ID="GridView1" runat="server" class="table table-hover" AutoGenerateColumns="False" DataKeyNames="MODULECODE" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="MODULECODE" HeaderText="Module Code" ReadOnly="True" SortExpression="MODULECODE" />
                            <asp:BoundField DataField="MODULENAME" HeaderText="Module Name" SortExpression="MODULENAME" />
                            <asp:BoundField DataField="CREDITHOUR" HeaderText="Credit Hour" SortExpression="CREDITHOUR" />
                            <asp:BoundField DataField="COURSEID" HeaderText="Course ID" SortExpression="COURSEID" />
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;MODULE&quot; WHERE &quot;MODULECODE&quot; = :MODULECODE" InsertCommand="INSERT INTO &quot;MODULE&quot; (&quot;MODULECODE&quot;, &quot;MODULENAME&quot;, &quot;CREDITHOUR&quot;, &quot;COURSEID&quot;) VALUES (:MODULECODE, :MODULENAME, :CREDITHOUR, :COURSEID)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;MODULECODE&quot;, &quot;MODULENAME&quot;, &quot;CREDITHOUR&quot;, &quot;COURSEID&quot; FROM &quot;MODULE&quot;" UpdateCommand="UPDATE &quot;MODULE&quot; SET &quot;MODULENAME&quot; = :MODULENAME, &quot;CREDITHOUR&quot; = :CREDITHOUR, &quot;COURSEID&quot; = :COURSEID WHERE &quot;MODULECODE&quot; = :MODULECODE">
                        <DeleteParameters>
                            <asp:Parameter Name="MODULECODE" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="MODULECODE" Type="String" />
                            <asp:Parameter Name="MODULENAME" Type="String" />
                            <asp:Parameter Name="CREDITHOUR" Type="Decimal" />
                            <asp:Parameter Name="COURSEID" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="MODULENAME" Type="String" />
                            <asp:Parameter Name="CREDITHOUR" Type="Decimal" />
                            <asp:Parameter Name="COURSEID" Type="String" />
                            <asp:Parameter Name="MODULECODE" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="MODULECODE" DataSourceID="SqlDataSource1">
                        <InsertItemTemplate >
                            <br />
                            <h2 style=""text-align: center;">Add New Module</h2>
                            <br />
                            Module Code:
                            <asp:TextBox ID="MODULECODETextBox"  runat="server" Text='<%# Bind("MODULECODE") %>' />
                            <br />
                            <br />
                            Module Name:
                            <asp:TextBox ID="MODULENAMETextBox" runat="server" Text='<%# Bind("MODULENAME") %>' />
                            <br />
                            <br />
                            Credit Hour:
                            <asp:TextBox ID="CREDITHOURTextBox" runat="server" Text='<%# Bind("CREDITHOUR") %>' />
                            <br />
                            <br />
                            Course:
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="COURSENAME" DataValueField="COURSEID" SelectedValue='<%# Bind("COURSEID") %>'>
                            </asp:DropDownList>
                            <br />
                            <br />
                            <asp:LinkButton ID="InsertButton" class="btn btn-outline-success" style="margin-bottom: 30px;" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" class="btn btn-outline-danger" style="margin-bottom: 30px;" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="NewButton" class="btn btn-outline-dark" style="margin-bottom: 30px;" runat="server" CausesValidation="False" CommandName="New" Text="Add New Module" />
                        </ItemTemplate>
                    </asp:FormView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;COURSEID&quot;, &quot;COURSENAME&quot; FROM &quot;COURSE&quot;"></asp:SqlDataSource>
                </form>
                </div>
                <!-- /.container-fluid -->
            </div>
            <!-- End of Main Content -->


   
        </div>
        
    </body>

</html>