<%@ Page Language="C#" CodeBehind="~/Exercise2.aspx.cs" Inherits="Module1Exercise1.Exercise2" %>

<%-- Exercise 2: Exploring ASP.NET Form Controls --%>
<%-- Useful References: https://www.tutorialspoint.com/asp.net/index.htm --%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Malayan Music Festival Registration</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Malayan Music Festival Registration</h1>
        <div>
            <%-- TODO 3.1 Create two text boxes for the first name and last name --%>
            <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_basic_controls.htm#:~:text=Text%20Boxes%20and%20Labels --%>   
            <label>First Name: </label>
            <asp:TextBox ID="fname" runat="server"></asp:TextBox>
            <br>
            <label>Last Name: </label>
            <asp:TextBox ID="lname" runat="server"></asp:TextBox>
            <br>
            
            <%-- Todo 3.2 Create a text box for inputting the age of the user. Make sure to set the TextMode to the proper value--%>
            <label for="age">Age: </label>
            <asp:TextBox ID="age" runat="server" TextMode="Number"></asp:TextBox><br />
            
            <%-- TODO 3.3 Create a DropDownList for the ticket type. It must have the following options: Starter, General Admissions, Gold, VIP --%>
            <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_basic_controls.htm#:~:text=DropDownList --%>
            <label>Ticket Type:</label>
            <asp:DropDownList ID="ticket" runat="server">
                <asp:ListItem Text="Starter"></asp:ListItem>
                <asp:ListItem Text="General Admissions"></asp:ListItem>
                <asp:ListItem Text="Gold"></asp:ListItem>
                <asp:ListItem Text="VIP"></asp:ListItem>
            </asp:DropDownList>
            <br>
            
            <%-- TODO 3.4 Create a Radio Button List for selecing which days they are planning to attend. It must have following options: Day 1 Only, Day 2 Only, Both Day 1 and 2--%>
            <%-- Hint: https://learn.microsoft.com/en-us/dotnet/api/system.web.ui.webcontrols.radiobuttonlist?view=netframework-4.8.1#:~:text=RadioButtonList%20id=%22RadioButtonList1%22 --%>
            <label>Days Attending:</label>
            <asp:RadioButtonList ID="days" runat="server">
                <asp:ListItem Text="Day 1 Only"></asp:ListItem>
                <asp:ListItem Text="Day 2 Only"></asp:ListItem>
                <asp:ListItem Text="Both Day 1 and 2"></asp:ListItem>
            </asp:RadioButtonList>
            <br>
            
            <%-- TODO 3.5 Create a Checkbox List for the performances they are planning to attend. List down your favorite arists for the options. --%>
            <%-- It must look something like --%>
            <%-- Which performances are you planning to attend? --%>
            <%-- <Artist Name 1> - [ ] --%>
            <%-- <Artist Name 2> - [x] --%>
            <%-- <Artist Name 3> - [ ] --%>
            <%-- Hint: https://learn.microsoft.com/en-us/dotnet/api/system.web.ui.webcontrols.checkboxlist?view=netframework-4.8.1#:~:text=CheckBoxList%20id=%22checkboxlist1%22 --%>
            <label>Which performances are you planning to attend?: </label>
            <asp:CheckBoxList ID="artists" runat="server">
                <asp:ListItem Text="Air Supply" Value="AS"></asp:ListItem>
                <asp:ListItem Text="Queen" Value="Qn"></asp:ListItem>
                <asp:ListItem Text="The Beattles" Value="TB"></asp:ListItem>
                <asp:ListItem Text="Kiss" Value="Ks"></asp:ListItem>
            </asp:CheckBoxList>
            <br>
            
            <%-- TODO 3.6 Create a FileUpload for their proof of payment. It must only accept JPG and PNG files. --%>
            <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_file_uploading.htm#:~:text=%3Ch3%3E%20File%20Upload:%3C/h3%3E --%>
            <label>Proof of Payment: </label>
            <asp:FileUpload ID="payment" runat="server" Accept=".jpg,.png"/>
            <asp:Button ID="submitbtn" runat="server" Text="Pay" OnClick="submitbtn_Click" />
        </div>
    </form>
</body>
</html>