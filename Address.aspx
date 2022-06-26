<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Address.aspx.vb" Inherits="CwOne.Address" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>Address</title>
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
                            <a class="nav-link active" href="address.aspx">
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
                    <h1 class="h3 mb-4 text-gray-800" style="text-align: center; margin-top: 15px;">Address Details</h1>
                           <form id="form1" runat="server">
                                <asp:GridView ID="GridView1" class="table table-hover"  runat="server" AutoGenerateColumns="False" DataKeyNames="ADDRESSID" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <Columns>              
                                        <asp:BoundField DataField="ADDRESSID" HeaderText="Address ID" ReadOnly="True" SortExpression="ADDRESSID" />
                                        <asp:BoundField DataField="COUNTRY" HeaderText="Country" SortExpression="COUNTRY" />
                                        <asp:BoundField DataField="CITY" HeaderText="City" SortExpression="CITY" />
                                        <asp:BoundField DataField="STREET" HeaderText="Street" SortExpression="STREET" />
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
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;ADDRESS&quot; WHERE &quot;ADDRESSID&quot; = :ADDRESSID" InsertCommand="INSERT INTO &quot;ADDRESS&quot; (&quot;ADDRESSID&quot;, &quot;COUNTRY&quot;, &quot;CITY&quot;, &quot;STREET&quot;) VALUES (:ADDRESSID, :COUNTRY, :CITY, :STREET)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;ADDRESSID&quot;, &quot;COUNTRY&quot;, &quot;CITY&quot;, &quot;STREET&quot; FROM &quot;ADDRESS&quot;" UpdateCommand="UPDATE &quot;ADDRESS&quot; SET &quot;COUNTRY&quot; = :COUNTRY, &quot;CITY&quot; = :CITY, &quot;STREET&quot; = :STREET WHERE &quot;ADDRESSID&quot; = :ADDRESSID">
                                    <DeleteParameters>
                                        <asp:Parameter Name="ADDRESSID" Type="String" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="ADDRESSID" Type="String" />
                                        <asp:Parameter Name="COUNTRY" Type="String" />
                                        <asp:Parameter Name="CITY" Type="String" />
                                        <asp:Parameter Name="STREET" Type="String" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="COUNTRY" Type="String" />
                                        <asp:Parameter Name="CITY" Type="String" />
                                        <asp:Parameter Name="STREET" Type="String" />
                                        <asp:Parameter Name="ADDRESSID" Type="String" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                                <asp:FormView ID="FormView1" runat="server" DataKeyNames="ADDRESSID" DataSourceID="SqlDataSource1">
 
                                    <InsertItemTemplate>
                                        <br />
                                        <h2>Add New Address</h2>
                                        <br />
                                        Address ID:
                                        <asp:TextBox ID="ADDRESSIDTextBox" runat="server" Text='<%# Bind("ADDRESSID") %>' />
                                        <br />
                                        <br />
                                        Country:
                                        <asp:TextBox ID="COUNTRYTextBox" runat="server" Text='<%# Bind("COUNTRY") %>' />
                                        <br />
                                        <br />
                                        City:
                                        <asp:TextBox ID="CITYTextBox" runat="server" Text='<%# Bind("CITY") %>' />
                                        <br />
                                        <br />
                                        Street:
                                        <asp:TextBox ID="STREETTextBox" runat="server" Text='<%# Bind("STREET") %>' />
                                        <br />
                                        <br />
                                        <asp:LinkButton ID="InsertButton" class="btn btn-outline-success" style="margin-bottom: 30px;" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" class="btn btn-outline-danger" style="margin-bottom: 30px;" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="NewButton" class="btn btn-outline-dark" style="margin-bottom: 30px;" runat="server" CausesValidation="False" CommandName="New" Text="Add New Address" />
                                    </ItemTemplate>
                                </asp:FormView>
                            </form>

                </div>
            </div>
            <!-- End of Main Content -->
   
        </div>
    </body>
</html>
