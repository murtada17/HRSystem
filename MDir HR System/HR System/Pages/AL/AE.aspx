<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MDirMaster.Master" AutoEventWireup="true" CodeBehind="AE.aspx.cs" Inherits="HR_Salaries.Pages.AE.AE" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
    <asp:Label ID="lblMessage" runat="server" style=" font-size:x-large;" ></asp:Label>
    <div class="content">
        <div class="container">
            <div class="col-lg-13">
                <div class="sub-content">
                    <div class="list-group">
                        <asp:Panel ID="Panel1" runat="server">


                        <asp:Panel ID="PalChose" runat="server">
                            <div class="row">
                                <div class="col-6 col-md-3" >
                                    <asp:Button ID="ButAdd" runat="server" Text="أضافة" OnClick="ButAdd_OnClick"/>
                                    </div>
                                <div class="col-6 col-md-3" >
                                    <asp:Button ID="ButUpdate" runat="server" Text="تعديل" OnClick="ButUpdate_OnClick"/>
                                    </div>
                                </div>
                            </asp:Panel>



                            <asp:Panel ID="PalUpdate" runat="server" Visible="false">

                                <div class="row">
                              <div class="col-6 col-md-3" ><asp:TextBox ID="txtUpdate" class="form-control" runat="server" placeholder="ID NUMBER"></asp:TextBox></div>
                              <div class="col-6 col-md-3" style="text-align: right;"><asp:Button style="font-size: unset;" ID="btnSerchUpdate" class="btn btn-primary" runat="server" Text="بحث" OnClick="btnSerchUpdate_Click" /> </div>
                              <div class="col-6 col-md-3"> <asp:Label ID="Label9" runat="server" Text="البحث و التعديل في ملف الـAE"></asp:Label> </div>
                              <div class="col-6 col-md-3"> </div>
                         </div>








                                                        <div class="row" style="padding: 0px 0px 0px 0px;">
                            <div class="col-md-1">  
                                    </div>
                              <div class="col-md-10">  
                     <asp:GridView ID="GVUpdate" runat="server" BackColor="White" BorderColor="#CCCCCC"
                     BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                    CssClass="table table-striped table-bordered table-condensed"
                     AutoGenerateColumns="False" AutoGenerateDeleteButton="False"
                     AutoGenerateSelectButton="True" OnSelectedIndexChanged="GVUpdate_PageIndexChanging" AllowSorting="True">
                    <EditRowStyle Wrap="false" />
                    <FooterStyle BackColor="White" ForeColor="#000066"></FooterStyle>
                    <HeaderStyle BackColor="#5f6b89" Font-Bold="True" ForeColor="White"></HeaderStyle>
                    <PagerStyle HorizontalAlign="Left" BackColor="White" ForeColor="#000066"></PagerStyle>
                    <RowStyle ForeColor="#000066"></RowStyle>
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White"></SelectedRowStyle>
                    <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>
                    <SortedAscendingHeaderStyle BackColor="#007DBB"></SortedAscendingHeaderStyle>
                    <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>
                    <SortedDescendingHeaderStyle BackColor="#00547E"></SortedDescendingHeaderStyle>
                </asp:GridView>
         </div>
                               <div class="col-md-1">  
                                    </div>
   </div>



                            </asp:Panel>









                            <asp:Panel ID="PalAdd" runat="server" Visible="false">

                            <div class="row">
                              <div class="col-6 col-md-3" ><asp:TextBox ID="txtSerch" class="form-control" runat="server" ></asp:TextBox></div>
                              <div class="col-6 col-md-3" style="text-align: right;"><asp:Button style="font-size: unset;" ID="btnSerch" class="btn btn-primary" runat="server" Text="بحث"  /> </div>
                              <div class="col-6 col-md-3"> <asp:Label ID="Label22" runat="server" Text="البحث في ملف الموظفين و اضافته الى ملف الـAL"></asp:Label> </div>
                              <div class="col-6 col-md-3"> </div>
                         </div>
                                </asp:Panel>
                 
                        <div class="row" style="padding: 0px 0px 0px 0px;">
                            <div class="col-md-1">  
                                    </div>
                              <div class="col-md-10">  
                     <asp:GridView ID="GriSerch" runat="server" BackColor="White" BorderColor="#CCCCCC"
                     BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                    CssClass="table table-striped table-bordered table-condensed"
                     AutoGenerateColumns="False" AutoGenerateDeleteButton="False"
                     AutoGenerateSelectButton="True"  AllowSorting="True">
                    <EditRowStyle Wrap="false" />
                    <FooterStyle BackColor="White" ForeColor="#000066"></FooterStyle>
                    <HeaderStyle BackColor="#5f6b89" Font-Bold="True" ForeColor="White"></HeaderStyle>
                    <PagerStyle HorizontalAlign="Left" BackColor="White" ForeColor="#000066"></PagerStyle>
                    <RowStyle ForeColor="#000066"></RowStyle>
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White"></SelectedRowStyle>
                    <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>
                    <SortedAscendingHeaderStyle BackColor="#007DBB"></SortedAscendingHeaderStyle>
                    <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>
                    <SortedDescendingHeaderStyle BackColor="#00547E"></SortedDescendingHeaderStyle>
                </asp:GridView>
         </div>
                               <div class="col-md-1">  
                                    </div>
   </div>

                          </asp:Panel>
                        <div dir="ltr">
                         <asp:Panel ID="Panel2" runat="server" Visible="false">
                        <div class="row">
                            <div class="col-6 col-md-3">
                                <asp:Label CssClass="lbl" ID="Label1" runat="server" Width="100%" Text="RECORD_DATE" ForeColor="Red"></asp:Label>
                            </div>
                            <div class="col-6 col-md-3">
                                <asp:TextBox CssClass="txt" ID="RECORD_DATE" runat="server" Width="100%"  required TabIndex="1" ></asp:TextBox>
 
                             <cc1:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="RECORD_DATE"
                                    Format="yyyy-MM-dd">
                                </cc1:CalendarExtender>

                               

                            </div>
                            <div class="col-6 col-md-3">
                                <asp:Label CssClass="lbl" Width="100%" ID="Label3" runat="server"  Text="INSTITUTION_NUMBER" ForeColor="Red"></asp:Label>
                            </div>
                            <div class="col-6 col-md-3">
                                <asp:TextBox CssClass="txt" Width="100%" ID="INSTITUTION_NUMBER" runat="server" MaxLength="8" Text="00000154" required TabIndex="1"></asp:TextBox>
                            
                            </div>
                        </div>


                             <!--Account_Number-->



                        <div class="row">
                       
                            <div class="col-6 col-md-3">
                                <asp:Label CssClass="lbl" Width="100%" ID="Label11" runat="server"  Text="ACCOUNT_NUMBER" ForeColor="Red"></asp:Label>
                            </div>
                            <div class="col-6 col-md-3">
                                <asp:TextBox CssClass="txt" Width="100%" ID="ACCOUNT_NUMBER" runat="server" MaxLength="11" Text="" required TabIndex="1"></asp:TextBox>
                            
                            </div>

                       </div>
                       





                        <div class="row">
                            <div class="col-6 col-md-3">
                                <asp:Label CssClass="lbl" ID="Label123" runat="server" Width="100%" Text="LAST_NAME" ForeColor="Red"></asp:Label>
                            </div>
                            <div class="col-6 col-md-3">
                                <asp:TextBox CssClass="txt" ID="LAST_NAME" runat="server" Width="100%" MaxLength="25" required TabIndex="1"></asp:TextBox>
                            </div>


                            <div class="col-6 col-md-3">
                                <asp:Label CssClass="lbl" ID="Label4" runat="server" Width="100%" Text="FIRST_NAME" ForeColor="Red"></asp:Label>
                            </div>
                            <div class="col-6 col-md-3">
                                <asp:TextBox CssClass="txt" ID="FIRST_NAME" runat="server" Width="100%" MaxLength="15" required TabIndex="1"></asp:TextBox>
                            </div>
                        </div>







                        <div class="row">
                            <div class="col-6 col-md-3">
                                <asp:Label CssClass="lbl" ID="Label6" runat="server" Width="100%" Text="FATHER_NAME"  ForeColor="Red"></asp:Label>
                            </div>
                            <div class="col-6 col-md-3">
                                <asp:TextBox CssClass="txt" ID="FATHER_NAME" runat="server" Width="100%" MaxLength="20" required AutoPostBack="true"></asp:TextBox>
                            </div>
                            <div class="col-6 col-md-3">
                                <asp:Label CssClass="lbl" ID="Label5" runat="server" Width="100%" Text="SHORT_NAME"  ForeColor="Red"></asp:Label>
                            </div>
                            <div class="col-6 col-md-3">
                                <asp:TextBox CssClass="txt" ID="SHORT_NAME" runat="server" Width="100%" MaxLength="20" required  AutoPostBack="true"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">    
                            <div class="col-6 col-md-3">
                                    <asp:Label CssClass="lbl" Width="100%" ID="Label54" runat="server" Text="COUNTER_BANK_ACCOUNT" ForeColor="Red"></asp:Label>
                                </div>
                                <div class="col-6 col-md-3">
                                  <asp:TextBox CssClass="txt" Width="100%" ID="COUNTER_BANK_ACCOUNT" runat="server" MaxLength="16" TabIndex="1"></asp:TextBox>
                                </div>

                             <div class="col-6 col-md-3">
                                    <asp:Label CssClass="lbl" ID="Label2" runat="server" Width="100%" Text="EMBOSS LINE 2"></asp:Label>
                             </div>
                                <div class="col-6 col-md-3">
                                    <asp:TextBox CssClass="txt" ID="EMBOSS_LINE_2" runat="server" Width="100%" MaxLength="24"></asp:TextBox>
                                </div>
                           </div>


                             <div class="row">
                             <div class="col-6 col-md-3">
                                <asp:Label CssClass="lbl" ID="Label13" runat="server" Width="100%" Text="TEL_PRIVATE" ForeColor="Red"></asp:Label>
                            </div>
                            <div class="col-6 col-md-3">
                                <asp:TextBox CssClass="txt" Width="100%" ID="TEL_PRIVATE" runat="server"  MaxLength="15" required TabIndex="1"></asp:TextBox>
                            </div>


                                 <div class="col-6 col-md-3">
                                <asp:Label CssClass="lbl" ID="Label99" runat="server" Width="100%" Text="PASSPORT_NUMBER" ForeColor="Red"></asp:Label>
                            </div>
                            <div class="col-6 col-md-3">
                                <asp:TextBox CssClass="txt" Width="100%" ID="PASSPORT_NUMBER" runat="server"  MaxLength="15" required TabIndex="1"></asp:TextBox>
                            </div>

                            </div>



                             <div class="row">
                             <div class="col-6 col-md-3">
                                <asp:Label CssClass="lbl" ID="Label100" runat="server" Width="100%" Text="DRIVING_LICENSE" ForeColor="Red"></asp:Label>
                            </div>
                            <div class="col-6 col-md-3">
                                <asp:TextBox CssClass="txt" Width="100%" ID="DRIVING_LICENSE" runat="server"  MaxLength="15" required TabIndex="1"></asp:TextBox>
                            </div>

                                <div class="col-6 col-md-3">
                                <asp:Label CssClass="lbl" ID="Label101" runat="server" Width="100%" Text="BIRTH_DATE" ForeColor="Red"></asp:Label>
                            </div>
                       
                            <div class="col-6 col-md-3">
                                <asp:TextBox CssClass="txt" ID="BIRTH_DATE" runat="server" Width="100%" required TabIndex="1"></asp:TextBox>
                                <cc1:CalendarExtender ID="CalendarExtender6" runat="server" TargetControlID="BIRTH_DATE"
                                    Format="yyyy-MM-dd">
                                </cc1:CalendarExtender>
                            </div> 

                            </div>



                             <div class="row">
                             <div class="col-6 col-md-3">
                                <asp:Label CssClass="lbl" ID="Label102" runat="server" Width="100%" Text="BIRTH_PLACE"></asp:Label>
                            </div>
                            <div class="col-6 col-md-3">
                                <asp:TextBox CssClass="txt" ID="BIRTH_PLACE" runat="server" Width="100%" MaxLength="15"></asp:TextBox>
                            </div>


                                    <div class="col-6 col-md-3">
                                <asp:Label CssClass="lbl" ID="Label103" runat="server" Width="100%" Text="CLIENT_COUNTRY" ForeColor="Red"></asp:Label>
                            </div>
                        
                            <div class="col-6 col-md-3">
                                <asp:DropDownList ID="CLIENT_COUNTRY_DDL" runat="server" CssClass="btn btn-secondary dropdown-toggle dropdown-toggle-split" Width="100%" TabIndex="1" AutoPostBack="false"></asp:DropDownList>
                            </div>

                            </div>

                             <div class="row">  
                            <div class="col-6 col-md-3">
                                <asp:Label CssClass="lbl" ID="Label104" runat="server" Width="100%" Text="CLIENT_CITY"></asp:Label>
                            </div>
                            <div class="col-6 col-md-3">
                                <asp:TextBox CssClass="txt" ID="CLIENT_CITY" runat="server" Width="100%" MaxLength="13"></asp:TextBox>
                            </div>

                                 <div class="col-6 col-md-3">
                                <asp:Label CssClass="lbl" Width="100%" ID="Label105" runat="server"  Text="NATIONALITY" ForeColor="Red"></asp:Label>
                            </div>
                            <div class="col-6 col-md-3">
                                <asp:DropDownList ID="NATIONALITY_DDL" runat="server" CssClass="btn btn-secondary dropdown-toggle dropdown-toggle-split" Width="100%" TabIndex="1" AutoPostBack="false"></asp:DropDownList>
                            </div>




                         </div>


                             <div class="row">
                             <div class="col-6 col-md-3">
                                    <asp:Label CssClass="lbl" Width="100%" ID="Label106" runat="server" Text="ADR1_NAME_OF_CLIE"></asp:Label>
                                </div>
                                <div class="col-6 col-md-3">
                                    <asp:TextBox CssClass="txt" ID="ADR1_NAME_OF_CLIENT" runat="server" Width="100%" MaxLength="35"></asp:TextBox>
                                </div>



                                 <div class="col-6 col-md-3">
                                    <asp:Label CssClass="lbl" Width="100%" ID="Label107" runat="server" Text="ADR 2 STREET 1" ForeColor="Red"></asp:Label>
                                </div>
                                <div class="col-6 col-md-3">
                                    <asp:TextBox CssClass="txt" ID="ADR2STREET1" runat="server" Width="100%" MaxLength="35"></asp:TextBox>
                                </div>


                            </div>


                            <div class="row">
                                <div class="col-6 col-md-3">
                                    <asp:Label CssClass="lbl" Width="100%" ID="Label108" runat="server" Text="ADR 3 STREET 2"></asp:Label>
                                </div>
                                <div class="col-6 col-md-3">
                                    <asp:TextBox CssClass="txt" ID="ADR3STREET2" runat="server" Width="100%" MaxLength="35"></asp:TextBox>
                                </div>


                                <div class="col-6 col-md-3">
                                    <asp:Label CssClass="lbl" Width="100%" ID="Label109" runat="server" Text="ADR 4 STATE"></asp:Label>
                                </div>
                                <div class="col-6 col-md-3">
                                    <asp:TextBox CssClass="txt" ID="ADR4_STATE" runat="server" Width="100%" MaxLength="35"></asp:TextBox>
                                </div>
                            </div>




                             <div class="row">
                                <div class="col-6 col-md-3">
                                    <asp:Label CssClass="lbl" Width="100%" ID="Label110" runat="server" Text="ADR5_OTHER"></asp:Label>
                                </div>
                                <div class="col-6 col-md-3">
                                    <asp:TextBox CssClass="txt" ID="ADR5_OTHER" runat="server" Width="100%" MaxLength="35"></asp:TextBox>
                                </div>

                                 <div class="col-6 col-md-3">
                                    <asp:Label CssClass="lbl" Width="100%" ID="Label111" runat="server" Text="POST_CODE1"></asp:Label>
                                </div>
                                <div class="col-6 col-md-3">
                                    <asp:TextBox CssClass="txt" ID="POST_CODE1" runat="server" Width="100%" MaxLength="20"></asp:TextBox>
                                </div>
                             </div>



                             <div class="row">
                                 <div class="col-6 col-md-3">
                                    <asp:Label CssClass="lbl" Width="100%" ID="Label112" runat="server" Text="ADDRESS CLIENT CITY 1"></asp:Label>
                                </div>
                                <div class="col-6 col-md-3">
                                    <asp:TextBox CssClass="txt" ID="ADDRESS_CLIENT_CITY1" runat="server" Width="100%" MaxLength="35"></asp:TextBox>
                                </div>

                                 <div class="col-6 col-md-3">
                                    <asp:Label CssClass="lbl" Width="100%" ID="Label113" runat="server" Text="EMAIL_ADDRESS"></asp:Label>
                                </div>
                                <div class="col-6 col-md-3">
                                    <asp:TextBox CssClass="txt" ID="EMAIL_ADDRESS1" runat="server" Width="100%" MaxLength="32"></asp:TextBox>
                                </div>
                             </div>






                             <div class="row">
                                 <div class="col-6 col-md-3">
                                    <asp:Label CssClass="lbl" Width="100%" ID="Label114" runat="server" Text="Address Category"></asp:Label>
                                </div>
                               
                                <div class="col-6 col-md-3">
                                <asp:DropDownList ID="Address_Category_DDL" runat="server" CssClass="btn btn-secondary dropdown-toggle dropdown-toggle-split" Width="100%" TabIndex="1" AutoPostBack="false"></asp:DropDownList>
                                </div>

                                 <div class="col-6 col-md-3">
                                <asp:Label CssClass="lbl" Width="100%" ID="Label115" runat="server" Text="RESIDENCE_STATUS" ForeColor="Red"></asp:Label></div>
                            <div class="col-6 col-md-3">
                                <asp:DropDownList ID="RESIDENCE_STATUS_DDL" runat="server"  CssClass="btn btn-secondary dropdown-toggle dropdown-toggle-split" Width="100%" TabIndex="1" AutoPostBack="false"></asp:DropDownList>

                            </div>


                             </div>

                             <div class="row">
                             <div class="col-6 col-md-3">
                                    <asp:Label CssClass="lbl" Width="100%" ID="Label78" runat="server" Text="DELIVERY_METHOD" ForeColor="Red"></asp:Label>
                                </div>
                                <div class="col-6 col-md-3">
                                    <asp:DropDownList ID="DELIVERY_METHOD_DDL" runat="server" CssClass="btn btn-secondary dropdown-toggle dropdown-toggle-split" Width="100%" TabIndex="1"  AutoPostBack="false"></asp:DropDownList>
                                </div>


                                 <div class="col-6 col-md-3">
                                <asp:Label CssClass="lbl" ID="Label130" runat="server" Width="100%" Text="TEL_WORK" ForeColor="Red"></asp:Label>
                            </div>
                        
                            <div class="col-6 col-md-3">
                                <asp:TextBox CssClass="txt" ID="TEL_WORK" runat="server" Width="100%" MaxLength="15" TabIndex="1"></asp:TextBox>
                            </div>

                                 </div>



                             <div class="row">

                                 <div class="col-6 col-md-3">
                                <asp:Label CssClass="lbl" ID="Label15" runat="server" Width="100%" Text="FAX_WORK"></asp:Label>
                            </div>
                        
                            <div class="col-6 col-md-3">
                                <asp:TextBox CssClass="txt" ID="FAX_WORK" runat="server" Width="100%" MaxLength="15"></asp:TextBox>
                            </div>

                                 <div class="col-6 col-md-3">
                                    <asp:Label CssClass="lbl" Width="100%" ID="Label40" runat="server" Text="MOBILE_NO2" ></asp:Label>
                                </div>
                                <div class="col-6 col-md-3">
                                  <asp:TextBox CssClass="txt" Width="100%" ID="MOBILE_NO2" runat="server" MaxLength="15"></asp:TextBox>
                                </div>


                                 </div>


                             <div class="row">
                                 <div class="col-6 col-md-3">
                                  <asp:Label CssClass="lbl" Width="100%" ID="Label87" runat="server" Text="EMAIL_ADDRESS2"></asp:Label>
                                </div>
                                <div class="col-6 col-md-3">
                                    <asp:TextBox CssClass="txt" ID="EMAIL_ADDRESS2" runat="server" Width="100%" MaxLength="60"></asp:TextBox>
                                </div>


                             <div class="col-6 col-md-3">
                                <asp:Label CssClass="lbl" ID="Label16" runat="server" Width="100%" Text="ID_NUMBER"></asp:Label>
                            </div>
                            <div class="col-6 col-md-3">
                                <asp:TextBox CssClass="txt" ID="ID_NUMBER" runat="server" Width="100%" MaxLength="15"></asp:TextBox>
                            </div>
                             </div>
                                 

                            




 <div class="row">
      <div class="col-6 col-md-3">
                                <asp:Label CssClass="lbl" ID="Label7" runat="server" Width="100%" Text="OUR_REFERENCE"></asp:Label>
                            </div>
                            <div class="col-6 col-md-3">
                                <asp:TextBox CssClass="txt" ID="OUR_REFERENCE" runat="server" Width="100%" MaxLength="20"></asp:TextBox>
                            </div>


     <div class="col-6 col-md-3">
                                <asp:Label CssClass="lbl" ID="Label8" runat="server" Width="100%" Text="EMBOSS LINE 3"></asp:Label>
                            </div>
                            <div class="col-6 col-md-3">
                                <asp:TextBox CssClass="txt" ID="EMBOSS_LINE_3" runat="server" Width="100%" MaxLength="26"></asp:TextBox>
                            </div>

</div>

                    <div class="row">

                            <div class="col-6 col-md-3">
                            <asp:Label CssClass="lbl" ID="Label10" runat="server" Width="100%" Text="Domiciliation"></asp:Label>
                            </div>
                            <div class="col-6 col-md-3">
                            <asp:TextBox CssClass="txt" ID="Domiciliation" runat="server" Width="100%" MaxLength="16"></asp:TextBox>
                            </div>

                            <div class="col-6 col-md-3">
                            <asp:Label CssClass="lbl" ID="Label12" runat="server" Width="100%" Text="Domiciliation Counter Bank Account 2"></asp:Label>
                            </div>
                            <div class="col-6 col-md-3">
                            <asp:TextBox CssClass="txt" ID="Domiciliation_2" runat="server" Width="100%" MaxLength="16"></asp:TextBox>
                            </div>

                    </div>

                        <div class="row">

                            <div class="col-6 col-md-3">
                            <asp:Label CssClass="lbl" ID="Label14" runat="server" Width="100%" Text="Settlement Bank Name"></asp:Label>
                            </div>
                            <div class="col-6 col-md-3">
                            <asp:TextBox CssClass="txt" ID="Settlement_Bank_Name" runat="server" Width="100%" MaxLength="16"></asp:TextBox>
                            </div>

                            <div class="col-6 col-md-3">
                            <asp:Label CssClass="lbl" ID="Label17" runat="server" Width="100%" Text="Mobile no 1"></asp:Label>
                            </div>
                            <div class="col-6 col-md-3">
                            <asp:TextBox CssClass="txt" ID="Mobile_no_1" runat="server" Width="100%" MaxLength="16"></asp:TextBox>
                            </div>

                    </div>









                        


<div class="row">
                                <div class="col-6 col-md-3">
                                    <asp:Label CssClass="lbl" Width="100%" ID="Label98" runat="server" Text="is send?"></asp:Label>
                                </div>
                                <div class="col-6 col-md-3">
                                    <asp:CheckBox ID="isSend" runat="server" />
                                </div>
                                <div class="col-6 col-md-3">
                                </div>
                                <div class="col-6 col-md-3">
                                </div>
    </div>



                                </div>



                            <div class="col-6 col-md-3">
                                <asp:Button style="font-size: unset;" ID="btnSend" runat="server" Text="التالي" width="100%" CssClass="btn btn-success" OnClick="btnSend_Click" />
                                <asp:Button style="font-size: unset;" ID="Button1" runat="server" Text="تجريبي" width="100%" CssClass="btn btn-success" OnClick="Button1_Click" Visible="false" />

                            </div>    
                            <div class="col-6 col-md-3">
                                <asp:Label ID="lblempid" runat="server" Text=""></asp:Label>
                            </div>
                            <div class="col-6 col-md-3">
                                <asp:Label ID="AddUpdate" runat="server" Text="Label"></asp:Label><asp:Label ID="ID_NUMBER_" runat="server" Text=""></asp:Label>
                                <asp:Label ID="lbl_id" runat="server" Text=""></asp:Label>
                            </div>
                            </div>
                             </asp:Panel>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
    

    </div>


</asp:Content>

