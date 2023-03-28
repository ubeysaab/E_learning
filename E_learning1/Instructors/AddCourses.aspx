<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddCourses.aspx.cs" Inherits="E_learning1.Instructors.AddCourses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3> Coursess </h3>
    
    <hr />
<%--    burada 2.view calismasi icin ben 1 koydom  active view indexte eger birinci view istiyorsan acive index sifira cevir .
Parameter name: value--%>


    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="3" >
          <asp:View ID="View1" runat="server">
              <h5>list of courses</h5>
            <br />

            <div style="float:right;">
              <asp:Button ID="Button1" runat="server" Text="Button" cssclass="btn btn-info"/>
           </div>
<%--         buralarda xd:apx:gridView diye bir sey eklemis o de https://www.devexpress.com/ dan getirmis yani odemeli bir sey dir normal bir sekilde yapabilirsek yapariz yapmazsak bakariz en son  o yuzden o sayfada farkli goreceksininz --%>
            <asp:GridView ID="GridView1" runat="server" Width="100%"></asp:GridView> <%--burada kurslar gosterilecek--%>
        </asp:View>


          <%--  add courses form here --%>
    <asp:View ID="View2" runat="server">
        <h5> Add a New Course</h5>
            <br />

        <div class="row">
            <div class="col-md-2" style="padding:5px;">
                 Course Title
            </div>
            <div class="col-md-10" style="padding:5px;">
                <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="col-md-2" style="padding:5px;">
                Course Content
            </div>
            <div classc="col-md-10" style="padding:5px;">
                burada bir kontrol kullanilacak bu kontrol bizi text ve image ve video eklememizi saglayabilir 
                --dev express te buluna adi aspxhtmlEditor  bizde yok onun yerinde baska bir sey kullanmamiz lazim 
                Omer gosterdigim fotograf
            </div>
            <div class="col-md-2" style="padding:5px;"></div>
             <div class="col-md-10" style="padding:5px;" >
                 <asp:Button ID="Button2" runat="server" CssClass="btn btn-lg btn-info" Text="Save and Continue " />
             </div>
        </div>
        
    </asp:View>


<%--       ucunc view indexi 2 dir --%>
        <asp:View ID="View3" runat="server">
            <h5>
                Add Quiz Questions
            </h5>
            <br />
            dxaspgridview bizde yok  bu veritabanina bagli olup buradan soru ekleyecegiz
            <asp:GridView ID="GridView2" runat="server"></asp:GridView>
            <asp:Button ID="Button4" runat="server" CssClass="btn btn-lg btn-info" Text="Save and Continue " />
        <%--    burada save ve continue bastigimiz zaman active view index bir arttiralacak--%>
        </asp:View>


        <%--4.view--%>
            <asp:View ID="View4" runat="server">
            <h5>
                Add Quiz Questions's answers
            </h5>
            <br />
            dxaspgridview bizde yok  bu veritabanina bagli olup buradan sorularin cevabi ekleyecegiz  ekleyecegiz 
             <asp:Button ID="Button3" runat="server" CssClass="btn btn-lg btn-info" Text="Save and Finish " />

        </asp:View>


    </asp:MultiView>
  


  
 </asp:Content>
