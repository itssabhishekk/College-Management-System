﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="StudentAssignment.aspx.vb" Inherits="CwOne.StudentAssignment" %>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>Student Assignment</title>
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
                            <a class="nav-link active" href="StudentAssignment.aspx">
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
                    <h1 class="h3 mb-4 text-gray-800" style="text-align: center; margin-top: 15px;">Student Assignment Details</h1>
                        <form id="form1" runat="server">
                            <div>
                                Select Student:  <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="STUDENTID" DataValueField="STUDENTID">
                                </asp:DropDownList>
                            </div>
                            <br />
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="STUDENTID,ASSIGNMENTID" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField DataField="STUDENTID" HeaderText="Student ID" ReadOnly="True" SortExpression="STUDENTID" />
                                    <asp:BoundField DataField="Student Name" HeaderText="Student Name" SortExpression="Student Name" />
                                    <asp:BoundField DataField="EMAIL" HeaderText="Email" SortExpression="EMAIL" />
                                    <asp:BoundField DataField="COURSENAME" HeaderText="Course" SortExpression="COURSENAME" />
                                    <asp:BoundField DataField="MODULENAME" HeaderText="Module" SortExpression="MODULENAME" />
                                    <asp:BoundField DataField="ASSIGNMENTID" HeaderText="Assignment ID" ReadOnly="True" SortExpression="ASSIGNMENTID" />
                                    <asp:BoundField DataField="TOTALWEIGHTAGE" HeaderText="Weightage" SortExpression="TOTALWEIGHTAGE" />
                                    <asp:BoundField DataField="ASSIGNMENTTYPE" HeaderText="Assignment Type" SortExpression="ASSIGNMENTTYPE" />
                                    <asp:BoundField DataField="DEADLINE" HeaderText="Deadline" SortExpression="DEADLINE" />
                                    <asp:BoundField DataField="GRADE" HeaderText="Grade" SortExpression="GRADE" />
                                    <asp:BoundField DataField="STATUS" HeaderText="Status" SortExpression="STATUS" />
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
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;STUDENTID&quot; FROM &quot;STUDENT&quot;"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT s.StudentID,  p.FirstName||' '||p.LastName AS &quot;Student Name&quot;, p.Email, c.CourseName, m.ModuleName, a.AssignmentID, a.TotalWeightage, a.AssignmentType, a.Deadline, r.Grade, g.status
                    FROM Student s
                    JOIN Person p ON (s.PersonID = p.PersonID)
                    JOIN Course c ON (c.CourseID = s.CourseID)
                    JOIN Module m ON (m.CourseID = c.CourseID)
                    JOIN Assignment a ON (a.ModuleCode = m.ModuleCode)
                    JOIN Result r ON (r.AssignmentID = a.AssignmentID)
                    JOIN Grade g ON (g.Grade = r.Grade) WHERE s.StudentID = :data">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownList1" DefaultValue="SD001" Name="data" PropertyName="SelectedValue" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </form>
                    <br />


                </div>
            </div>
            <!-- End of Main Content -->
   
        </div>
    </body>
</html>
