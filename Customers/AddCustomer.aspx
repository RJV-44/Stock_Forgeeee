<%@ Page Title="Add Customer" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddCustomer.aspx.cs" Inherits="Stock_Forgeeee.Customers.AddCustomer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="max-width: 1200px; margin: 0 auto;">
        <!-- Breadcrumb (Matching Figma) -->
        <div style="display: flex; align-items: center; gap: 6px; font-size: 12px; color: #6B7280; margin-bottom: 12px;">
            <a href="<%= ResolveUrl("~/Customers/CustomerList.aspx") %>" style="color: #6B7280; text-decoration: none;" onmouseover="this.style.color='#111827'" onmouseout="this.style.color='#6B7280'">Customers</a>
            <i class="bi bi-chevron-right" style="font-size: 10px; color: #9CA3AF;"></i>
            <span style="color: #111827; font-weight: 600;">Add Customer</span>
        </div>

        <!-- Page Header (Matching Figma) -->
        <div style="display: flex; justify-content: space-between; align-items: flex-start; margin-bottom: 20px;">
            <div>
                <h1 style="font-size: 24px; font-weight: 700; color: #111827; margin: 0 0 4px 0; letter-spacing: -0.02em;">Add Customer</h1>
                <div style="font-size: 13.5px; color: #6B7280;">Add a customer to start recording sales and transaction history.</div>
            </div>
            <div style="display: flex; align-items: center; gap: 10px;">
                <a href="<%= ResolveUrl("~/Customers/CustomerList.aspx") %>" style="display: inline-flex; align-items: center; justify-content: center; padding: 7px 18px; background: #FFFFFF; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; font-weight: 500; color: #374151; text-decoration: none; transition: background 0.15s ease;" onmouseover="this.style.background='#F9FAFB'" onmouseout="this.style.background='#FFFFFF'">
                    Cancel
                </a>
                <asp:LinkButton ID="btnSaveCustomerTop" runat="server" OnClick="btnSaveCustomer_Click" style="display: inline-flex; align-items: center; gap: 7px; padding: 7px 18px; background: #006C44; color: #FFFFFF; font-size: 13px; font-weight: 600; border-radius: 6px; text-decoration: none; border: none; cursor: pointer; transition: background 0.15s ease;" onmouseover="this.style.background='#0B5C3B'" onmouseout="this.style.background='#006C44'">
                    <i class="bi bi-floppy" style="font-size: 14px;"></i>
                    <span>Save Customer</span>
                </asp:LinkButton>
            </div>
        </div>

        <!-- Alert Panel -->
        <asp:Panel ID="pnlAlert" runat="server" Visible="false" style="background: #FEE2E2; border: 1px solid #FCA5A5; color: #991B1B; padding: 12px 16px; border-radius: 6px; margin-bottom: 20px; font-size: 13px; display: flex; align-items: center; gap: 8px;">
            <i class="bi bi-exclamation-triangle-fill"></i>
            <asp:Label ID="lblAlertMessage" runat="server"></asp:Label>
        </asp:Panel>

        <!-- Main Form Card (Matching Figma) -->
        <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 24px; box-shadow: 0 1px 3px rgba(0,0,0,0.02); margin-bottom: 24px;">
            
            <!-- 2 Column Section: Customer Information & Address Details -->
            <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 32px; margin-bottom: 24px;">
                
                <!-- Left Column: Customer Information -->
                <div>
                    <h2 style="font-size: 14px; font-weight: 700; color: #111827; margin: 0 0 18px 0;">Customer Information</h2>
                    
                    <!-- Customer Name -->
                    <div style="margin-bottom: 16px;">
                        <label style="display: block; font-size: 12px; font-weight: 600; color: #374151; margin-bottom: 6px;">
                            Customer Name <span style="color: #DC2626;">*</span>
                        </label>
                        <asp:TextBox ID="txtCustomerName" runat="server" placeholder="Enter customer name" style="width: 100%; height: 38px; padding: 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #111827; background: #FFFFFF; outline: none; box-sizing: border-box; transition: border-color 0.15s ease;" onfocus="this.style.borderColor='#006C44'" onblur="this.style.borderColor='#D1D5DB'"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvCustomerName" runat="server" ControlToValidate="txtCustomerName" ErrorMessage="Customer name is required." EnableClientScript="false" ForeColor="#DC2626" Display="Dynamic" style="font-size: 11.5px; margin-top: 4px; display: block;"></asp:RequiredFieldValidator>
                    </div>

                    <!-- Customer Type -->
                    <div style="margin-bottom: 16px;">
                        <label style="display: block; font-size: 12px; font-weight: 600; color: #374151; margin-bottom: 6px;">
                            Customer Type
                        </label>
                        <div style="position: relative;">
                            <asp:DropDownList ID="ddlCustomerType" runat="server" style="width: 100%; height: 38px; padding: 6px 32px 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #111827; background: #FFFFFF; outline: none; box-sizing: border-box; appearance: none; -webkit-appearance: none; cursor: pointer;">
                                <asp:ListItem Value="Individual" Selected="True">Individual</asp:ListItem>
                                <asp:ListItem Value="Business">Business</asp:ListItem>
                                <asp:ListItem Value="Contractor">Contractor</asp:ListItem>
                                <asp:ListItem Value="Wholesale">Wholesale</asp:ListItem>
                                <asp:ListItem Value="Retail">Retail</asp:ListItem>
                            </asp:DropDownList>
                            <i class="bi bi-chevron-down" style="position: absolute; right: 12px; top: 50%; transform: translateY(-50%); font-size: 11px; color: #6B7280; pointer-events: none;"></i>
                        </div>
                    </div>

                    <!-- Phone -->
                    <div style="margin-bottom: 16px;">
                        <label style="display: block; font-size: 12px; font-weight: 600; color: #374151; margin-bottom: 6px;">
                            Phone <span style="color: #DC2626;">*</span>
                        </label>
                        <asp:TextBox ID="txtPhone" runat="server" placeholder="+91 98765 43210" style="width: 100%; height: 38px; padding: 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #111827; background: #FFFFFF; outline: none; box-sizing: border-box; transition: border-color 0.15s ease;" onfocus="this.style.borderColor='#006C44'" onblur="this.style.borderColor='#D1D5DB'"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="Phone number is required." EnableClientScript="false" ForeColor="#DC2626" Display="Dynamic" style="font-size: 11.5px; margin-top: 4px; display: block;"></asp:RequiredFieldValidator>
                    </div>

                    <!-- Email -->
                    <div>
                        <label style="display: block; font-size: 12px; font-weight: 600; color: #374151; margin-bottom: 6px;">
                            Email
                        </label>
                        <asp:TextBox ID="txtEmail" runat="server" placeholder="customer@example.in" style="width: 100%; height: 38px; padding: 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #111827; background: #FFFFFF; outline: none; box-sizing: border-box; transition: border-color 0.15s ease;" onfocus="this.style.borderColor='#006C44'" onblur="this.style.borderColor='#D1D5DB'"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$" ErrorMessage="Enter a valid email address." EnableClientScript="false" ForeColor="#DC2626" Display="Dynamic" style="font-size: 11.5px; margin-top: 4px; display: block;"></asp:RegularExpressionValidator>
                    </div>
                </div>

                <!-- Right Column: Address Details -->
                <div>
                    <h2 style="font-size: 14px; font-weight: 700; color: #111827; margin: 0 0 18px 0;">Address Details</h2>

                    <!-- Address -->
                    <div style="margin-bottom: 16px;">
                        <label style="display: block; font-size: 12px; font-weight: 600; color: #374151; margin-bottom: 6px;">
                            Address
                        </label>
                        <asp:TextBox ID="txtAddress" runat="server" placeholder="Enter full address line" style="width: 100%; height: 38px; padding: 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #111827; background: #FFFFFF; outline: none; box-sizing: border-box; transition: border-color 0.15s ease;" onfocus="this.style.borderColor='#006C44'" onblur="this.style.borderColor='#D1D5DB'"></asp:TextBox>
                    </div>

                    <!-- City, State, PIN Code Row -->
                    <div style="display: grid; grid-template-columns: 1fr 1fr 1fr; gap: 12px;">
                        <div>
                            <label style="display: block; font-size: 12px; font-weight: 600; color: #374151; margin-bottom: 6px;">
                                City <span style="color: #DC2626;">*</span>
                            </label>
                            <asp:TextBox ID="txtCity" runat="server" Text="Ahmedabad" placeholder="Ahmedabad" style="width: 100%; height: 38px; padding: 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #111827; background: #FFFFFF; outline: none; box-sizing: border-box; transition: border-color 0.15s ease;" onfocus="this.style.borderColor='#006C44'" onblur="this.style.borderColor='#D1D5DB'"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvCity" runat="server" ControlToValidate="txtCity" ErrorMessage="City is required." EnableClientScript="false" ForeColor="#DC2626" Display="Dynamic" style="font-size: 11.5px; margin-top: 4px; display: block;"></asp:RequiredFieldValidator>
                        </div>

                        <div>
                            <label style="display: block; font-size: 12px; font-weight: 600; color: #374151; margin-bottom: 6px;">
                                State <span style="color: #DC2626;">*</span>
                            </label>
                            <div style="position: relative;">
                                <asp:DropDownList ID="ddlState" runat="server" style="width: 100%; height: 38px; padding: 6px 28px 6px 10px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #111827; background: #FFFFFF; outline: none; box-sizing: border-box; appearance: none; -webkit-appearance: none; cursor: pointer;">
                                    <asp:ListItem Value="">Select State</asp:ListItem>
                                    <asp:ListItem Value="Gujarat" Selected="True">Gujarat</asp:ListItem>
                                    <asp:ListItem Value="Maharashtra">Maharashtra</asp:ListItem>
                                    <asp:ListItem Value="Rajasthan">Rajasthan</asp:ListItem>
                                    <asp:ListItem Value="Karnataka">Karnataka</asp:ListItem>
                                    <asp:ListItem Value="Delhi">Delhi</asp:ListItem>
                                    <asp:ListItem Value="Tamil Nadu">Tamil Nadu</asp:ListItem>
                                    <asp:ListItem Value="Telangana">Telangana</asp:ListItem>
                                    <asp:ListItem Value="Uttar Pradesh">Uttar Pradesh</asp:ListItem>
                                    <asp:ListItem Value="Madhya Pradesh">Madhya Pradesh</asp:ListItem>
                                </asp:DropDownList>
                                <i class="bi bi-chevron-down" style="position: absolute; right: 8px; top: 50%; transform: translateY(-50%); font-size: 10px; color: #6B7280; pointer-events: none;"></i>
                            </div>
                        </div>

                        <div>
                            <label style="display: block; font-size: 12px; font-weight: 600; color: #374151; margin-bottom: 6px;">
                                PIN Code <span style="color: #DC2626;">*</span>
                            </label>
                            <asp:TextBox ID="txtPinCode" runat="server" Text="380001" placeholder="380001" style="width: 100%; height: 38px; padding: 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #111827; background: #FFFFFF; outline: none; box-sizing: border-box; transition: border-color 0.15s ease;" onfocus="this.style.borderColor='#006C44'" onblur="this.style.borderColor='#D1D5DB'"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvPinCode" runat="server" ControlToValidate="txtPinCode" ErrorMessage="PIN Code is required." EnableClientScript="false" ForeColor="#DC2626" Display="Dynamic" style="font-size: 11.5px; margin-top: 4px; display: block;"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Full Width Row: Internal Notes (Matching Figma) -->
            <div style="margin-top: 20px;">
                <label style="display: block; font-size: 12px; font-weight: 600; color: #374151; margin-bottom: 6px;">
                    Internal Notes
                </label>
                <asp:TextBox ID="txtNotes" runat="server" TextMode="MultiLine" Rows="4" placeholder="Add any specific notes or instructions regarding this customer..." style="width: 100%; padding: 10px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #111827; background: #FFFFFF; outline: none; box-sizing: border-box; font-family: inherit; line-height: 1.5; resize: vertical; transition: border-color 0.15s ease;" onfocus="this.style.borderColor='#006C44'" onblur="this.style.borderColor='#D1D5DB'"></asp:TextBox>
            </div>
        </div>

        <!-- Bottom Action Bar (Matching Figma) -->
        <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 14px 24px; display: flex; justify-content: space-between; align-items: center; box-shadow: 0 1px 3px rgba(0,0,0,0.02); margin-bottom: 30px;">
            <div>
                <button type="button" onclick="clearCustomerForm()" style="background: none; border: none; color: #374151; font-size: 13px; font-weight: 500; cursor: pointer; padding: 6px 8px; transition: color 0.15s ease;" onmouseover="this.style.color='#006C44'" onmouseout="this.style.color='#374151'">
                    Clear Form
                </button>
            </div>
            <div style="display: flex; align-items: center; gap: 10px;">
                <a href="<%= ResolveUrl("~/Customers/CustomerList.aspx") %>" style="display: inline-flex; align-items: center; justify-content: center; padding: 8px 20px; background: #FFFFFF; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; font-weight: 500; color: #374151; text-decoration: none; transition: background 0.15s ease;" onmouseover="this.style.background='#F9FAFB'" onmouseout="this.style.background='#FFFFFF'">
                    Cancel
                </a>
                <asp:Button ID="btnSaveCustomer" runat="server" Text="Save Customer" OnClick="btnSaveCustomer_Click" style="display: inline-flex; align-items: center; justify-content: center; padding: 8px 22px; background: #006C44; color: #FFFFFF; font-size: 13px; font-weight: 600; border-radius: 6px; border: none; cursor: pointer; transition: background 0.15s ease;" onmouseover="this.style.background='#0B5C3B'" onmouseout="this.style.background='#006C44'" />
            </div>
        </div>
    </div>

    <script>
        function clearCustomerForm() {
            var name = document.getElementById('<%= txtCustomerName.ClientID %>');
            var phone = document.getElementById('<%= txtPhone.ClientID %>');
            var email = document.getElementById('<%= txtEmail.ClientID %>');
            var address = document.getElementById('<%= txtAddress.ClientID %>');
            var city = document.getElementById('<%= txtCity.ClientID %>');
            var pin = document.getElementById('<%= txtPinCode.ClientID %>');
            var notes = document.getElementById('<%= txtNotes.ClientID %>');

            if (name) name.value = '';
            if (phone) phone.value = '';
            if (email) email.value = '';
            if (address) address.value = '';
            if (city) city.value = '';
            if (pin) pin.value = '';
            if (notes) notes.value = '';
        }
    </script>
</asp:Content>
