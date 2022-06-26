<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Teacher.aspx.vb" Inherits="CwOne.Teacher" %>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>Teacher</title>
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
                            <a class="nav-link active" href="teacher.aspx">
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
                    <h1 class="h3 mb-4 text-gray-800" style="text-align: center; margin-top: 15px;">Teacher Details</h1>
                        <form id="form1" runat="server">
                            <asp:GridView ID="GridView1"  class="table table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="TEACHERID" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField DataField="TEACHERID" HeaderText="Teacher ID" ReadOnly="True" SortExpression="TEACHERID" />
                                    <asp:BoundField DataField="STAFFID" HeaderText="Staff ID" SortExpression="STAFFID" />
                                    <asp:BoundField DataField="QUALIFICATION" HeaderText="Qualification" SortExpression="QUALIFICATION" />
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
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;TEACHER&quot; WHERE &quot;TEACHERID&quot; = :TEACHERID" InsertCommand="INSERT INTO &quot;TEACHER&quot; (&quot;TEACHERID&quot;, &quot;STAFFID&quot;, &quot;QUALIFICATION&quot;) VALUES (:TEACHERID, :STAFFID, :QUALIFICATION)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;TEACHERID&quot;, &quot;STAFFID&quot;, &quot;QUALIFICATION&quot; FROM &quot;TEACHER&quot;" UpdateCommand="UPDATE &quot;TEACHER&quot; SET &quot;STAFFID&quot; = :STAFFID, &quot;QUALIFICATION&quot; = :QUALIFICATION WHERE &quot;TEACHERID&quot; = :TEACHERID">
                                <DeleteParameters>
                                    <asp:Parameter Name="TEACHERID" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="TEACHERID" Type="String" />
                                    <asp:Parameter Name="STAFFID" Type="String" />
                                    <asp:Parameter Name="QUALIFICATION" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="STAFFID" Type="String" />
                                    <asp:Parameter Name="QUALIFICATION" Type="String" />
                                    <asp:Parameter Name="TEACHERID" Type="String" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            <asp:FormView ID="FormView1" runat="server" DataKeyNames="TEACHERID" DataSourceID="SqlDataSource1">
                                <InsertItemTemplate>
                                    <br />
                                    <h2>Add New Teacher</h2>
                                    <br />
                                    Teacher ID:
                                    <asp:TextBox ID="TEACHERIDTextBox" runat="server" Text='<%# Bind("TEACHERID") %>' />
                                    <br />
                                    <br />
                                    Staff Name:
                                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Full Name" DataValueField="STAFFID" SelectedValue='<%# Bind("STAFFID") %>' Width="176px">
                                    </asp:DropDownList>
                                    <br />
                                    <br />
                                    Qualification:
                                    <asp:TextBox ID="QUALIFICATIONTextBox" runat="server" Text='<%# Bind("QUALIFICATION") %>' />
                                    <br />
                                    <br />
                                    <asp:LinkButton ID="InsertButton"  class="btn btn-outline-success" style="margin-bottom: 30px;" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                    &nbsp;<asp:LinkButton ID="InsertCancelButton"  class="btn btn-outline-danger" style="margin-bottom: 30px;" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton ID="NewButton" runat="server"  class="btn btn-outline-dark" style="margin-bottom: 30px;" CausesValidation="False" CommandName="New" Text="Add New Teachers" />
                                </ItemTemplate>
                            </asp:FormView>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT p.FirstName||' '||p.LastName AS &quot;Full Name&quot;, s.PersonID, t.StaffID
FROM Teacher t
JOIN Staff s ON (s.StaffID = t.StaffID)
JOIN Person p ON (p.PersonID = s.PersonID)"></asp:SqlDataSource>
                        </form>


                </div>
            </div>
            <!-- End of Main Content -->
   
        </div>
    </body>
</html>