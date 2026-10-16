<%@ Page Title="Edit Customer" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditCustomer.aspx.cs" Inherits="Stock_Forgeeee.Customers.EditCustomer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="max-width: 1200px; margin: 0 auto;">
        <!-- Breadcrumb (Matching Figma) -->
        <div style="display: flex; align-items: center; gap: 6px; font-size: 12px; color: #6B7280; margin-bottom: 12px;">
            <a href="<%= ResolveUrl("~/Customers/CustomerList.aspx") %>" style="color: #6B7280; text-decoration: none;" onmouseover="this.style.color='#111827'" onmouseout="this.style.color='#6B7280'">Customers</a>
            <i class="bi bi-chevron-right" style="font-size: 10px; color: #9CA3AF;"></i>
            <a href="<%= ResolveUrl("~/Customers/CustomerDetails.aspx?id=101") %>" style="color: #6B7280; text-decoration: none;" onmouseover="this.style.color='#111827'" onmouseout="this.style.color='#6B7280'">Rajesh Patel</a>
            <i class="bi bi-chevron-right" style="font-size: 10px; color: #9CA3AF;"></i>
            <span style="color: #111827; font-weight: 600;">Edit</span>
        </div>

        <!-- Page Header (Matching Figma) -->
        <div style="display: flex; justify-content: space-between; align-items: flex-start; margin-bottom: 20px;">
            <div>
                <div style="display: flex; align-items: center; gap: 10px;">
                    <h1 style="font-size: 24px; font-weight: 700; color: #111827; margin: 0; letter-spacing: -0.02em;">Edit Customer</h1>
                    <span style="display: inline-flex; align-items: center; gap: 5px; padding: 2px 8px; background: #EAF8EF; border: 1px solid #BBF7D0; border-radius: 9999px; font-size: 11px; font-weight: 600; color: #15803D;">
                        <span style="width: 5px; height: 5px; border-radius: 50%; background: #15803D;"></span>
                        ACTIVE
                    </span>
                </div>
                <div style="font-size: 13.5px; color: #6B7280; margin-top: 4px;">Update customer information and account details.</div>
            </div>
            <div style="display: flex; align-items: center; gap: 10px;">
                <a href="<%= ResolveUrl("~/Customers/CustomerDetails.aspx?id=101") %>" style="display: inline-flex; align-items: center; justify-content: center; padding: 7px 18px; background: #FFFFFF; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; font-weight: 500; color: #374151; text-decoration: none; transition: background 0.15s ease;" onmouseover="this.style.background='#F9FAFB'" onmouseout="this.style.background='#FFFFFF'">
                    Cancel
                </a>
                <asp:LinkButton ID="btnSaveTop" runat="server" OnClick="btnSaveChanges_Click" style="display: inline-flex; align-items: center; gap: 7px; padding: 7px 18px; background: #006C44; color: #FFFFFF; font-size: 13px; font-weight: 600; border-radius: 6px; text-decoration: none; border: none; cursor: pointer; transition: background 0.15s ease;" onmouseover="this.style.background='#0B5C3B'" onmouseout="this.style.background='#006C44'">
                    <i class="bi bi-floppy" style="font-size: 14px;"></i>
                    <span>Save Changes</span>
                </asp:LinkButton>
            </div>
        </div>

        <!-- Alert Panel -->
        <asp:Panel ID="pnlAlert" runat="server" Visible="false" style="background: #FEE2E2; border: 1px solid #FCA5A5; color: #991B1B; padding: 12px 16px; border-radius: 6px; margin-bottom: 20px; font-size: 13px; display: flex; align-items: center; gap: 8px;">
            <i class="bi bi-exclamation-triangle-fill"></i>
            <asp:Label ID="lblAlertMessage" runat="server"></asp:Label>
        </asp:Panel>

        <!-- Main Form Card (Matching Figma) -->
        <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 24px; box-shadow: 0 1px 3px rgba(0,0,0,0.02); margin-bottom: 30px;">
            
            <!-- 2 Column Section: Customer Information (Left) & Address (Right) -->
            <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 32px; margin-bottom: 24px;">
                
                <!-- Left Column: Customer Information -->
                <div>
                    <div style="display: flex; align-items: center; gap: 8px; font-size: 14px; font-weight: 600; color: #111827; margin-bottom: 16px;">
                        <i class="bi bi-person" style="color: #6B7280; font-size: 16px;"></i>
                        <span>Customer Information</span>
                    </div>

                    <!-- Full Name -->
                    <div style="margin-bottom: 16px;">
                        <label style="display: block; font-size: 12px; font-weight: 600; color: #374151; margin-bottom: 6px;">
                            Full Name <span style="color: #DC2626;">*</span>
                        </label>
                        <asp:TextBox ID="txtFullName" runat="server" Text="Rajesh Patel" style="width: 100%; height: 38px; padding: 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #111827; background: #FFFFFF; outline: none; box-sizing: border-box; transition: border-color 0.15s ease;" onfocus="this.style.borderColor='#006C44'" onblur="this.style.borderColor='#D1D5DB'"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvFullName" runat="server" ControlToValidate="txtFullName" ErrorMessage="Full Name is required." EnableClientScript="false" ForeColor="#DC2626" Display="Dynamic" style="font-size: 11.5px; margin-top: 4px; display: block;"></asp:RequiredFieldValidator>
                    </div>

                    <!-- Email Address & Phone Number Row -->
                    <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 12px; margin-bottom: 16px;">
                        <div>
                            <label style="display: block; font-size: 12px; font-weight: 600; color: #374151; margin-bottom: 6px;">
                                Email Address
                            </label>
                            <asp:TextBox ID="txtEmail" runat="server" Text="rajesh@example.in" style="width: 100%; height: 38px; padding: 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #111827; background: #FFFFFF; outline: none; box-sizing: border-box; transition: border-color 0.15s ease;" onfocus="this.style.borderColor='#006C44'" onblur="this.style.borderColor='#D1D5DB'"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$" ErrorMessage="Enter a valid email address." EnableClientScript="false" ForeColor="#DC2626" Display="Dynamic" style="font-size: 11.5px; margin-top: 4px; display: block;"></asp:RegularExpressionValidator>
                        </div>
                        <div>
                            <label style="display: block; font-size: 12px; font-weight: 600; color: #374151; margin-bottom: 6px;">
                                Phone Number <span style="color: #DC2626;">*</span>
                            </label>
                            <asp:TextBox ID="txtPhone" runat="server" Text="+91 98765 43210" style="width: 100%; height: 38px; padding: 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #111827; background: #FFFFFF; outline: none; box-sizing: border-box; transition: border-color 0.15s ease;" onfocus="this.style.borderColor='#006C44'" onblur="this.style.borderColor='#D1D5DB'"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="Phone number is required." EnableClientScript="false" ForeColor="#DC2626" Display="Dynamic" style="font-size: 11.5px; margin-top: 4px; display: block;"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <!-- Customer Type -->
                    <div>
                        <label style="display: block; font-size: 12px; font-weight: 600; color: #374151; margin-bottom: 6px;">
                            Customer Type
                        </label>
                        <div style="position: relative;">
                            <asp:DropDownList ID="ddlCustomerType" runat="server" style="width: 100%; height: 38px; padding: 6px 32px 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #111827; background: #FFFFFF; outline: none; box-sizing: border-box; appearance: none; -webkit-appearance: none; cursor: pointer;">
                                <asp:ListItem Value="Business" Selected="True">Business</asp:ListItem>
                                <asp:ListItem Value="Individual">Individual</asp:ListItem>
                                <asp:ListItem Value="Contractor">Contractor</asp:ListItem>
                                <asp:ListItem Value="Wholesale">Wholesale</asp:ListItem>
                                <asp:ListItem Value="Retail">Retail</asp:ListItem>
                            </asp:DropDownList>
                            <i class="bi bi-chevron-down" style="position: absolute; right: 12px; top: 50%; transform: translateY(-50%); font-size: 11px; color: #6B7280; pointer-events: none;"></i>
                        </div>
                    </div>
                </div>

                <!-- Right Column: Address -->
                <div>
                    <div style="display: flex; align-items: center; gap: 8px; font-size: 14px; font-weight: 600; color: #111827; margin-bottom: 16px;">
                        <i class="bi bi-geo-alt" style="color: #6B7280; font-size: 16px;"></i>
                        <span>Address</span>
                    </div>

                    <!-- Street Address -->
                    <div style="margin-bottom: 16px;">
                        <label style="display: block; font-size: 12px; font-weight: 600; color: #374151; margin-bottom: 6px;">
                            Street Address
                        </label>
                        <asp:TextBox ID="txtStreetAddress" runat="server" Text="123 Industrial Estate, Vatva" style="width: 100%; height: 38px; padding: 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #111827; background: #FFFFFF; outline: none; box-sizing: border-box; transition: border-color 0.15s ease;" onfocus="this.style.borderColor='#006C44'" onblur="this.style.borderColor='#D1D5DB'"></asp:TextBox>
                    </div>

                    <!-- City & State Row -->
                    <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 12px; margin-bottom: 16px;">
                        <div>
                            <label style="display: block; font-size: 12px; font-weight: 600; color: #374151; margin-bottom: 6px;">
                                City
                            </label>
                            <asp:TextBox ID="txtCity" runat="server" Text="Ahmedabad" style="width: 100%; height: 38px; padding: 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #111827; background: #FFFFFF; outline: none; box-sizing: border-box; transition: border-color 0.15s ease;" onfocus="this.style.borderColor='#006C44'" onblur="this.style.borderColor='#D1D5DB'"></asp:TextBox>
                        </div>
                        <div>
                            <label style="display: block; font-size: 12px; font-weight: 600; color: #374151; margin-bottom: 6px;">
                                State
                            </label>
                            <asp:TextBox ID="txtState" runat="server" Text="Gujarat" style="width: 100%; height: 38px; padding: 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #111827; background: #FFFFFF; outline: none; box-sizing: border-box; transition: border-color 0.15s ease;" onfocus="this.style.borderColor='#006C44'" onblur="this.style.borderColor='#D1D5DB'"></asp:TextBox>
                        </div>
                    </div>

                    <!-- PIN Code & Country Row -->
                    <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 12px;">
                        <div>
                            <label style="display: block; font-size: 12px; font-weight: 600; color: #374151; margin-bottom: 6px;">
                                PIN Code
                            </label>
                            <asp:TextBox ID="txtPinCode" runat="server" Text="382445" style="width: 100%; height: 38px; padding: 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #111827; background: #FFFFFF; outline: none; box-sizing: border-box; transition: border-color 0.15s ease;" onfocus="this.style.borderColor='#006C44'" onblur="this.style.borderColor='#D1D5DB'"></asp:TextBox>
                        </div>
                        <div>
                            <label style="display: block; font-size: 12px; font-weight: 600; color: #374151; margin-bottom: 6px;">
                                Country
                            </label>
                            <div style="position: relative;">
                                <asp:DropDownList ID="ddlCountry" runat="server" style="width: 100%; height: 38px; padding: 6px 32px 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #111827; background: #FFFFFF; outline: none; box-sizing: border-box; appearance: none; -webkit-appearance: none; cursor: pointer;">
                                    <asp:ListItem Value="India" Selected="True">India</asp:ListItem>
                                    <asp:ListItem Value="United States">United States</asp:ListItem>
                                    <asp:ListItem Value="United Kingdom">United Kingdom</asp:ListItem>
                                    <asp:ListItem Value="United Arab Emirates">United Arab Emirates</asp:ListItem>
                                    <asp:ListItem Value="Singapore">Singapore</asp:ListItem>
                                </asp:DropDownList>
                                <i class="bi bi-chevron-down" style="position: absolute; right: 12px; top: 50%; transform: translateY(-50%); font-size: 11px; color: #6B7280; pointer-events: none;"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Section 2: Business Details (Matching Figma) -->
            <div style="border-top: 1px solid #E5E7EB; padding-top: 20px; margin-top: 24px; margin-bottom: 24px;">
                <div style="display: flex; align-items: center; gap: 8px; font-size: 14px; font-weight: 600; color: #111827; margin-bottom: 16px;">
                    <i class="bi bi-shop" style="color: #6B7280; font-size: 16px;"></i>
                    <span>Business Details</span>
                </div>

                <div style="display: grid; grid-template-columns: 1fr 1fr 1fr; gap: 16px;">
                    <div>
                        <label style="display: block; font-size: 12px; font-weight: 600; color: #374151; margin-bottom: 6px;">
                            Company Name
                        </label>
                        <asp:TextBox ID="txtCompanyName" runat="server" Text="Rajesh Hardware Works" style="width: 100%; height: 38px; padding: 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #111827; background: #FFFFFF; outline: none; box-sizing: border-box; transition: border-color 0.15s ease;" onfocus="this.style.borderColor='#006C44'" onblur="this.style.borderColor='#D1D5DB'"></asp:TextBox>
                    </div>

                    <div>
                        <label style="display: block; font-size: 12px; font-weight: 600; color: #374151; margin-bottom: 6px;">
                            GSTIN
                        </label>
                        <asp:TextBox ID="txtGst" runat="server" Text="24ABCDE1234F1Z5" style="width: 100%; height: 38px; padding: 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #111827; background: #FFFFFF; outline: none; box-sizing: border-box; transition: border-color 0.15s ease;" onfocus="this.style.borderColor='#006C44'" onblur="this.style.borderColor='#D1D5DB'"></asp:TextBox>
                    </div>

                    <div>
                        <label style="display: block; font-size: 12px; font-weight: 600; color: #374151; margin-bottom: 6px;">
                            Payment Terms
                        </label>
                        <div style="position: relative;">
                            <asp:DropDownList ID="ddlPaymentTerms" runat="server" style="width: 100%; height: 38px; padding: 6px 32px 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #111827; background: #FFFFFF; outline: none; box-sizing: border-box; appearance: none; -webkit-appearance: none; cursor: pointer;">
                                <asp:ListItem Value="15 Days">15 Days</asp:ListItem>
                                <asp:ListItem Value="30 Days" Selected="True">30 Days</asp:ListItem>
                                <asp:ListItem Value="45 Days">45 Days</asp:ListItem>
                                <asp:ListItem Value="60 Days">60 Days</asp:ListItem>
                                <asp:ListItem Value="Immediate">Immediate / Cash</asp:ListItem>
                            </asp:DropDownList>
                            <i class="bi bi-chevron-down" style="position: absolute; right: 12px; top: 50%; transform: translateY(-50%); font-size: 11px; color: #6B7280; pointer-events: none;"></i>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Section 3: Internal Notes (Matching Figma) -->
            <div style="border-top: 1px solid #E5E7EB; padding-top: 20px;">
                <label style="display: block; font-size: 12px; font-weight: 600; color: #374151; margin-bottom: 6px;">
                    Internal Notes
                </label>
                <asp:TextBox ID="txtNotes" runat="server" TextMode="MultiLine" Rows="4" Text="Regular customer for power tools and electrical hardware." style="width: 100%; padding: 10px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #111827; background: #FFFFFF; outline: none; box-sizing: border-box; font-family: inherit; line-height: 1.5; resize: vertical; transition: border-color 0.15s ease;" onfocus="this.style.borderColor='#006C44'" onblur="this.style.borderColor='#D1D5DB'"></asp:TextBox>
            </div>
        </div>
    </div>
</asp:Content>
