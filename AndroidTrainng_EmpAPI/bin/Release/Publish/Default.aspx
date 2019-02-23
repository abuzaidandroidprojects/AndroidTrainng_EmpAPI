<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AndroidTrainng_EmpAPI.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            This Application Created to server Android Training Requests via RESTfull APIs
           <asp:GridView ID="GV_Emp" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" 
               AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource_Emps" AllowPaging="True" AllowSorting="True"
               >
               <AlternatingRowStyle BackColor="#DCDCDC"></AlternatingRowStyle>

               <Columns>
                   <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                   <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID"></asp:BoundField>
                   <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name"></asp:BoundField>
                   <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email"></asp:BoundField>
                   <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone"></asp:BoundField>
                   <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address"></asp:BoundField>
                   <asp:BoundField DataField="dept" HeaderText="Department" SortExpression="dept"></asp:BoundField>
                   <asp:BoundField DataField="picResPath" HeaderText="Photo Path" SortExpression="picResPath"></asp:BoundField>
                   <asp:BoundField DataField="hireDate" HeaderText="Hire Date" SortExpression="hireDate"></asp:BoundField>
               </Columns>

               <FooterStyle BackColor="#CCCCCC" ForeColor="Black"></FooterStyle>

               <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White"></HeaderStyle>

               <PagerStyle HorizontalAlign="Center" BackColor="#999999" ForeColor="Black"></PagerStyle>

               <RowStyle BackColor="#EEEEEE" ForeColor="Black"></RowStyle>

               <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

               <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

               <SortedAscendingHeaderStyle BackColor="#0000A9"></SortedAscendingHeaderStyle>

               <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

               <SortedDescendingHeaderStyle BackColor="#000065"></SortedDescendingHeaderStyle>
           </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource_Emps" ConnectionString='<%$ ConnectionStrings:AndroidTraining_EmpConnectionString %>' DeleteCommand="DELETE FROM [Employees] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Employees] ([ID], [name], [email], [phone], [address], [dept], [picResPath], [hireDate]) VALUES (@ID, @name, @email, @phone, @address, @dept, @picResPath, @hireDate)" SelectCommand="SELECT * FROM [Employees]" UpdateCommand="UPDATE [Employees] SET [name] = @name, [email] = @email, [phone] = @phone, [address] = @address, [dept] = @dept, [picResPath] = @picResPath, [hireDate] = @hireDate WHERE [ID] = @ID">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="name" Type="String"></asp:Parameter>
                    <asp:Parameter Name="email" Type="String"></asp:Parameter>
                    <asp:Parameter Name="phone" Type="String"></asp:Parameter>
                    <asp:Parameter Name="address" Type="String"></asp:Parameter>
                    <asp:Parameter Name="dept" Type="String"></asp:Parameter>
                    <asp:Parameter Name="picResPath" Type="String"></asp:Parameter>
                    <asp:Parameter Name="hireDate" Type="DateTime"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String"></asp:Parameter>
                    <asp:Parameter Name="email" Type="String"></asp:Parameter>
                    <asp:Parameter Name="phone" Type="String"></asp:Parameter>
                    <asp:Parameter Name="address" Type="String"></asp:Parameter>
                    <asp:Parameter Name="dept" Type="String"></asp:Parameter>
                    <asp:Parameter Name="picResPath" Type="String"></asp:Parameter>
                    <asp:Parameter Name="hireDate" Type="DateTime"></asp:Parameter>
                    <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
