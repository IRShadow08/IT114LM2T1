<%@ Page Language="C#" CodeBehind="~/Exercise5.aspx.cs" Inherits="Module1Exercise1.Exercise4" %>

<%-- Exercise 5: Creating reusable layouts using master pages--%>
<%-- TODO 5.1 Create a master page that contains a navigation bar, a main content, and a footer. --%>
<%-- The navigation bar should contain links to the other exercises --%>
<%-- The main content must include the content that the other pages will implement --%>
<%-- The footer should contain the copyright information of the page. I.e. it should display "Copyright <your name> 2024" --%>
<%-- Hint: https://www.c-sharpcorner.com/article/how-to-create-master-page-in-asp-net/ --%>

<%-- TODO 5.2 Make this page use the master page that you have created --%>
<%-- In the main content of this page, write your reflection about the following: --%>
<%-- * How would you compare plain HTML to ASP.NET WebForms --%>
<%-- * The code behind (C#) and JavaScript seem to share many use cases. When should you implement logic in the code behind and when should you implement logic in JavaScript? Provide examples. --%>
<%-- * Explain what post backs are. --%>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
    <div class="Reflectionbox">
        <div class="Reflection-Contents">
            <h1>How would you compare plain HTML to ASP.NET WebForms</h1>
            <h2>
                Personally, When comparing plain HTML to ASP.NET WebForms, they both indeed have their own unique approaches to web development. Where, HTML is great for building the basic structure of a webpage, while ASP.NET WebForms takes things a step further by providing a higher level of abstraction and speeding up development. However, it's important to note that while WebForms can make development faster, it might result in more extensive code and a closer tie to the server. So, while they both have their merits, it still comes down to the specific needs of the project
            </h2>
        </div>

        <div class="Reflection-Contents">
            <h1>The code behind (C#) and JavaScript seem to share many use cases. When should you implement logic in the code behind and when should you implement logic in JavaScript? Provide examples.</h1>
            <h2>
                Based on my understanding, when we are deciding where to put your logic, we should go for C# in the code behind for server-side stuff like checking passwords against a database. Meanwhile, JavaScript is for the user interface with things like form validation and dynamic updates, such as checking input length before hitting submit.
            </h2>
        </div>

        <div class="Reflection-Contents">
            <h1>Explain what post backs are.</h1>
            <h2>
                In ASP.NET WebForms, postbacks occur when the whole page goes back to the server for processing after a user does something, like selecting an option from a dropdown menu. It's like a round trip—sending data, doing stuff on the server, and then updating the page. Which, they help keep track of page state, but on the negative side it can also slow things down.
            </h2>
        </div>
    </div>
</asp:Content>