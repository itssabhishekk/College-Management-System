<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Department.aspx.vb" Inherits="CwOne.Department" %>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>Department</title>
        <link href="style.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <a class="navbar-brand ps-3" href="dashboard.aspx">Berkley College</a>
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
                            <a class="nav-link active" href="department.aspx">
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
                    <h1 class="h3 mb-4 text-gray-800" style="text-align: center; margin-top: 15px;">Department Details</h1>
                        <form id="form1" runat="server">
                            <asp:GridView ID="GridView1" class="table table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="DEPARTMENTID" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns >
                                    <asp:BoundField DataField="DEPARTMENTID" HeaderText="Department ID" ReadOnly="True" SortExpression="DEPARTMENTID" />
                                    <asp:BoundField DataField="DEPARTMENTNAME" HeaderText="Department Name" SortExpression="DEPARTMENTNAME" />
                                    <asp:BoundField DataField="BLOCK" HeaderText="Block" SortExpression="BLOCK" />
                                    <asp:BoundField DataField="ROOM" HeaderText="Room" SortExpression="ROOM" />
                                    <asp:BoundField DataField="FIELD" HeaderText="Supervision Field" SortExpression="FIELD" />
                                     <asp:CommandField  ShowDeleteButton="True" ShowEditButton="True" />
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
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;DEPARTMENT&quot; WHERE &quot;DEPARTMENTID&quot; = :DEPARTMENTID" InsertCommand="INSERT INTO &quot;DEPARTMENT&quot; (&quot;DEPARTMENTID&quot;, &quot;DEPARTMENTNAME&quot;, &quot;BLOCK&quot;, &quot;ROOM&quot;, &quot;FIELD&quot;) VALUES (:DEPARTMENTID, :DEPARTMENTNAME, :BLOCK, :ROOM, :FIELD)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;DEPARTMENTID&quot;, &quot;DEPARTMENTNAME&quot;, &quot;BLOCK&quot;, &quot;ROOM&quot;, &quot;FIELD&quot; FROM &quot;DEPARTMENT&quot;" UpdateCommand="UPDATE &quot;DEPARTMENT&quot; SET &quot;DEPARTMENTNAME&quot; = :DEPARTMENTNAME, &quot;BLOCK&quot; = :BLOCK, &quot;ROOM&quot; = :ROOM, &quot;FIELD&quot; = :FIELD WHERE &quot;DEPARTMENTID&quot; = :DEPARTMENTID">
                                <DeleteParameters>
                                    <asp:Parameter Name="DEPARTMENTID" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="DEPARTMENTID" Type="String" />
                                    <asp:Parameter Name="DEPARTMENTNAME" Type="String" />
                                    <asp:Parameter Name="BLOCK" Type="String" />
                                    <asp:Parameter Name="ROOM" Type="String" />
                                    <asp:Parameter Name="FIELD" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="DEPARTMENTNAME" Type="String" />
                                    <asp:Parameter Name="BLOCK" Type="String" />
                                    <asp:Parameter Name="ROOM" Type="String" />
                                    <asp:Parameter Name="FIELD" Type="String" />
                                    <asp:Parameter Name="DEPARTMENTID" Type="String" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            <asp:FormView ID="FormView1" runat="server" DataKeyNames="DEPARTMENTID" DataSourceID="SqlDataSource1">
                                <InsertItemTemplate>
                                    <br />
                                    <h2>Add New Department</h2>
                                    <br />
                                    Department ID:
                                    <asp:TextBox ID="DEPARTMENTIDTextBox" runat="server" Text='<%# Bind("DEPARTMENTID") %>' />
                                    <br />
                                    <br />
                                    Department Name:
                                    <asp:TextBox ID="DEPARTMENTNAMETextBox" runat="server" Text='<%# Bind("DEPARTMENTNAME") %>' />
                                    <br />
                                    <br />
                                    Block:
                                    <asp:TextBox ID="BLOCKTextBox" runat="server" Text='<%# Bind("BLOCK") %>' />
                                    <br />
                                    <br />
                                    Room:
                                    <asp:TextBox ID="ROOMTextBox" runat="server" Text='<%# Bind("ROOM") %>' />
                                    <br />
                                    <br />
                                    Field:
                                    <asp:TextBox ID="FIELDTextBox" runat="server" Text='<%# Bind("FIELD") %>' />
                                    <br />
                                    <br />
                                    <asp:LinkButton ID="InsertButton"  class="btn btn-outline-success" style="margin-bottom: 30px;" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                    &nbsp;<asp:LinkButton ID="InsertCancelButton"  class="btn btn-outline-danger" style="margin-bottom: 30px;" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                </InsertItemTemplate>
                                <ItemTemplate>
                                   <asp:LinkButton ID="NewButton"  class="btn btn-outline-dark" style="margin-bottom: 30px;" runat="server" CausesValidation="False" CommandName="New" Text="Add New Department" />
                                </ItemTemplate>
                            </asp:FormView>
                        </form>


                </div>
            </div>
            <!-- End of Main Content -->
   
        </div>
    </body>
</html>