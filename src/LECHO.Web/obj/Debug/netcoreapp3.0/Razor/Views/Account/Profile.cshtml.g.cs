#pragma checksum "D:\GitHub\LECHO\src\LECHO.Web\Views\Account\Profile.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "30dc0178cc71acc2e4df599311bb9391608598c5"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Account_Profile), @"mvc.1.0.view", @"/Views/Account/Profile.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "D:\GitHub\LECHO\src\LECHO.Web\Views\_ViewImports.cshtml"
using LECHO.Web;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "D:\GitHub\LECHO\src\LECHO.Web\Views\_ViewImports.cshtml"
using LECHO.Web.Models;

#line default
#line hidden
#nullable disable
#nullable restore
#line 1 "D:\GitHub\LECHO\src\LECHO.Web\Views\Account\Profile.cshtml"
using LECHO.Infrastructure;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "D:\GitHub\LECHO\src\LECHO.Web\Views\Account\Profile.cshtml"
using LECHO.Core;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"30dc0178cc71acc2e4df599311bb9391608598c5", @"/Views/Account/Profile.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"2fc4ef5490508005dada146d90cd85af2b8fee19", @"/Views/_ViewImports.cshtml")]
    public class Views_Account_Profile : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("src", new global::Microsoft.AspNetCore.Html.HtmlString("~/img/profile.png"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-controller", "Subjects", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "SubjectInfo", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        #pragma warning restore 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 5 "D:\GitHub\LECHO\src\LECHO.Web\Views\Account\Profile.cshtml"
  
    ViewData["Title"] = "Profile";
    if (User.IsInRole("1"))
    {
        Layout = "_LayoutAdmin";
    }
    else if (User.IsInRole("2"))
    {
        Layout = "_LayoutLecturer";
    }
    else if (User.IsInRole("3"))
    {
        Layout = "_LayoutStudent";
    }

#line default
#line hidden
#nullable disable
            WriteLiteral("\n\n<div class=\"profile\">\n    ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("img", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.SelfClosing, "30dc0178cc71acc2e4df599311bb9391608598c54904", async() => {
            }
            );
            __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_0);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\n    <h1>");
#nullable restore
#line 24 "D:\GitHub\LECHO\src\LECHO.Web\Views\Account\Profile.cshtml"
   Write(ViewData["Role"]);

#line default
#line hidden
#nullable disable
            WriteLiteral("</h1>\n    <h2>Прізвище: ");
#nullable restore
#line 25 "D:\GitHub\LECHO\src\LECHO.Web\Views\Account\Profile.cshtml"
             Write(ViewData["LastName"]);

#line default
#line hidden
#nullable disable
            WriteLiteral("</h2>\n    <h2>Ім\'я: ");
#nullable restore
#line 26 "D:\GitHub\LECHO\src\LECHO.Web\Views\Account\Profile.cshtml"
         Write(ViewData["FirstName"]);

#line default
#line hidden
#nullable disable
            WriteLiteral("</h2>\n    <h2>По-батькові: ");
#nullable restore
#line 27 "D:\GitHub\LECHO\src\LECHO.Web\Views\Account\Profile.cshtml"
                Write(ViewData["MiddleName"]);

#line default
#line hidden
#nullable disable
            WriteLiteral("</h2>\n</div>\n\n");
#nullable restore
#line 30 "D:\GitHub\LECHO\src\LECHO.Web\Views\Account\Profile.cshtml"
 foreach (var subject in Model)
{
    Faculties faculty = subjectManagement.GetFaculty(subject.FacultyId);
    Users lecturer = accountManagement.GetLecturer(subject.LecturerId);

#line default
#line hidden
#nullable disable
            WriteLiteral("    <p>Для ");
#nullable restore
#line 34 "D:\GitHub\LECHO\src\LECHO.Web\Views\Account\Profile.cshtml"
      Write(subject.Semester);

#line default
#line hidden
#nullable disable
            WriteLiteral(" семестру:</p>\n    <div class=\"subjects row\">\n        <div class=\"col-md-8 all-subjects-info\">\n            <h1>");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "30dc0178cc71acc2e4df599311bb9391608598c57558", async() => {
#nullable restore
#line 37 "D:\GitHub\LECHO\src\LECHO.Web\Views\Account\Profile.cshtml"
                                                                                                   Write(subject.Name);

#line default
#line hidden
#nullable disable
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Controller = (string)__tagHelperAttribute_1.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_1);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_2.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_2);
            if (__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues == null)
            {
                throw new InvalidOperationException(InvalidTagHelperIndexerAssignment("asp-route-id", "Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper", "RouteValues"));
            }
            BeginWriteTagHelperAttribute();
#nullable restore
#line 37 "D:\GitHub\LECHO\src\LECHO.Web\Views\Account\Profile.cshtml"
                                                                        WriteLiteral(subject.SubjectId);

#line default
#line hidden
#nullable disable
            __tagHelperStringValueBuffer = EndWriteTagHelperAttribute();
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["id"] = __tagHelperStringValueBuffer;
            __tagHelperExecutionContext.AddTagHelperAttribute("asp-route-id", __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["id"], global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("</h1>\n            <p>Кількість студентів, які обрали дисципліну: ");
#nullable restore
#line 38 "D:\GitHub\LECHO\src\LECHO.Web\Views\Account\Profile.cshtml"
                                                      Write(subject.NumberOfStudents);

#line default
#line hidden
#nullable disable
            WriteLiteral("</p>\n        </div>\n        <div class=\"col-md-4 all-subjects-lecture-info\">\n            <h1>");
#nullable restore
#line 41 "D:\GitHub\LECHO\src\LECHO.Web\Views\Account\Profile.cshtml"
           Write(lecturer.LastName);

#line default
#line hidden
#nullable disable
            WriteLiteral(" ");
#nullable restore
#line 41 "D:\GitHub\LECHO\src\LECHO.Web\Views\Account\Profile.cshtml"
                              Write(lecturer.FirstName[0]);

#line default
#line hidden
#nullable disable
            WriteLiteral(". ");
#nullable restore
#line 41 "D:\GitHub\LECHO\src\LECHO.Web\Views\Account\Profile.cshtml"
                                                      Write(lecturer.MiddleName[0]);

#line default
#line hidden
#nullable disable
            WriteLiteral(".</h1>\n            <h6>");
#nullable restore
#line 42 "D:\GitHub\LECHO\src\LECHO.Web\Views\Account\Profile.cshtml"
           Write(faculty.Name);

#line default
#line hidden
#nullable disable
            WriteLiteral("</h6>\n        </div>\n    </div>\n");
#nullable restore
#line 45 "D:\GitHub\LECHO\src\LECHO.Web\Views\Account\Profile.cshtml"
}

#line default
#line hidden
#nullable disable
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public ISubjectManagement subjectManagement { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public IAccountManagement accountManagement { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<dynamic> Html { get; private set; }
    }
}
#pragma warning restore 1591
