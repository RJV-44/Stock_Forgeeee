<%@ Page Title="Edit Supplier" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditSupplier.aspx.cs" Inherits="Stock_Forgeeee.Suppliers.EditSupplier" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb (Matching StockForge Edit Supplier.png) -->
    <div style="font-size: 11px; font-weight: 700; color: #6B7280; text-transform: uppercase; letter-spacing: 0.5px; margin-bottom: 8px;">
        SUPPLIERS &nbsp;/&nbsp; ABC HARDWARE SUPPLIERS &nbsp;/&nbsp; EDIT
    </div>

    <!-- Page Header -->
    <div class="sf-page-header">
        <div>
            <h1 class="sf-page-title">
                Edit Supplier
                <span class="sf-pill sf-pill-success" style="font-size: 12px; font-weight: 600;">
                    <span class="sf-pill-dot"></span> Active
                </span>
            </h1>
            <div class="sf-page-subtitle">Update supplier information and purchasing details.</div>
        </div>
    </div>

    <!-- Main Container Card -->
    <div class="sf-card" style="padding: 24px; margin-bottom: 24px;">
        <!-- Alert Feedback -->
        <asp:Panel ID="pnlAlert" runat="server" Visible="false" CssClass="val-alert val-alert-danger">
            <i class="bi bi-exclamation-triangle-fill"></i>
            <asp:Label ID="lblAlertMessage" runat="server"></asp:Label>
        </asp:Panel>

        <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 24px;">
            <!-- Left Column -->
            <div>
                <!-- Supplier Information Group -->
                <div class="sf-group-box">
                    <div class="sf-group-title">Supplier Information</div>

                    <div style="margin-bottom: 14px;">
                        <label class="sf-form-label">Supplier Name <span class="text-danger">*</span></label>
                        <asp:TextBox ID="txtSupplierName" runat="server" CssClass="sf-input" Text="ABC Hardware Suppliers"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvSupplierName" runat="server" ControlToValidate="txtSupplierName" ErrorMessage="Supplier name is required." CssClass="validation-error" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>

                    <div style="margin-bottom: 14px;">
                        <label class="sf-form-label">Primary Contact <span class="text-danger">*</span></label>
                        <asp:TextBox ID="txtContactPerson" runat="server" CssClass="sf-input" Text="Rajesh Patel"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvContactPerson" runat="server" ControlToValidate="txtContactPerson" ErrorMessage="Primary contact is required." CssClass="validation-error" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>

                    <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 14px;">
                        <div>
                            <label class="sf-form-label">Phone Number <span class="text-danger">*</span></label>
                            <asp:TextBox ID="txtPhone" runat="server" CssClass="sf-input" Text="+91 98765 43210"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="Phone is required." CssClass="validation-error" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="txtPhone" ValidationExpression="^(\+?[0-9\s\-\(\)]{8,16})$" ErrorMessage="Valid phone format required." CssClass="validation-error" Display="Dynamic"></asp:RegularExpressionValidator>
                        </div>
                        <div>
                            <label class="sf-form-label">Email Address <span class="text-danger">*</span></label>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="sf-input" Text="contact@abchardware.in"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required." CssClass="validation-error" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$" ErrorMessage="Valid email required." CssClass="validation-error" Display="Dynamic"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                </div>

                <!-- Business Details Group -->
                <div class="sf-group-box" style="margin-bottom: 0;">
                    <div class="sf-group-title">Business Details</div>

                    <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 14px; margin-bottom: 14px;">
                        <div>
                            <label class="sf-form-label">Supplier Type</label>
                            <asp:DropDownList ID="ddlSupplierType" runat="server" CssClass="sf-select" style="width: 100%;">
                                <asp:ListItem Text="Distributor" Value="Distributor" Selected="True"></asp:ListItem>
                                <asp:ListItem Text="Manufacturer" Value="Manufacturer"></asp:ListItem>
                                <asp:ListItem Text="Wholesaler" Value="Wholesaler"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div>
                            <label class="sf-form-label">Payment Terms</label>
                            <asp:DropDownList ID="ddlPaymentTerms" runat="server" CssClass="sf-select" style="width: 100%;">
                                <asp:ListItem Text="30 Days" Value="30 Days" Selected="True"></asp:ListItem>
                                <asp:ListItem Text="15 Days" Value="15 Days"></asp:ListItem>
                                <asp:ListItem Text="60 Days" Value="60 Days"></asp:ListItem>
                                <asp:ListItem Text="Advance" Value="Advance"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div style="margin-bottom: 14px;">
                        <label class="sf-form-label">GSTIN</label>
                        <asp:TextBox ID="txtGstin" runat="server" CssClass="sf-input" Text="24ABCDE1234F1Z5"></asp:TextBox>
                    </div>

                    <div>
                        <label class="sf-form-label">Internal Notes</label>
                        <asp:TextBox ID="txtNotes" runat="server" TextMode="MultiLine" Rows="3" CssClass="sf-textarea" Text="Primary supplier for power tools and electrical hardware."></asp:TextBox>
                    </div>
                </div>
            </div>

            <!-- Right Column: Address Details & Map -->
            <div>
                <div class="sf-group-box" style="margin-bottom: 0; height: 100%; display: flex; flex-direction: column;">
                    <div class="sf-group-title">Address Details</div>

                    <div style="margin-bottom: 14px;">
                        <label class="sf-form-label">Street Address <span class="text-danger">*</span></label>
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="sf-input" Text="123 Industrial Estate, Vatva"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtAddress" ErrorMessage="Street address is required." CssClass="validation-error" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>

                    <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 14px; margin-bottom: 14px;">
                        <div>
                            <label class="sf-form-label">City <span class="text-danger">*</span></label>
                            <asp:TextBox ID="txtCity" runat="server" CssClass="sf-input" Text="Ahmedabad"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvCity" runat="server" ControlToValidate="txtCity" ErrorMessage="City is required." CssClass="validation-error" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                        <div>
                            <label class="sf-form-label">State <span class="text-danger">*</span></label>
                            <asp:TextBox ID="txtState" runat="server" CssClass="sf-input" Text="Gujarat"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvState" runat="server" ControlToValidate="txtState" ErrorMessage="State is required." CssClass="validation-error" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 14px; margin-bottom: 16px;">
                        <div>
                            <label class="sf-form-label">PIN Code <span class="text-danger">*</span></label>
                            <asp:TextBox ID="txtPinCode" runat="server" CssClass="sf-input" Text="382445"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvPin" runat="server" ControlToValidate="txtPinCode" ErrorMessage="PIN Code is required." CssClass="validation-error" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revPin" runat="server" ControlToValidate="txtPinCode" ValidationExpression="^\d{6}$" ErrorMessage="Enter a valid 6-digit PIN code." CssClass="validation-error" Display="Dynamic"></asp:RegularExpressionValidator>
                        </div>
                        <div>
                            <label class="sf-form-label">Country</label>
                            <asp:TextBox ID="txtCountry" runat="server" CssClass="sf-input" Text="India"></asp:TextBox>
                        </div>
                    </div>

                    <!-- Map Illustration (Matching StockForge Edit Supplier.png) -->
                    <div style="flex: 1; min-height: 180px; background: #EEF2F6; border: 1px solid #E2E8F0; border-radius: 6px; overflow: hidden; position: relative;">
                        <svg viewBox="0 0 400 220" style="width: 100%; height: 100%; object-fit: cover;" preserveAspectRatio="none">
                            <rect width="400" height="220" fill="#E8EEF5" />
                            <!-- Roads & Blocks -->
                            <path d="M 0,40 Q 150,60 400,20" stroke="#CBD5E1" stroke-width="8" fill="none" />
                            <path d="M 0,160 Q 200,140 400,180" stroke="#CBD5E1" stroke-width="12" fill="none" />
                            <path d="M 120,0 L 160,220" stroke="#CBD5E1" stroke-width="7" fill="none" />
                            <path d="M 280,0 L 250,220" stroke="#CBD5E1" stroke-width="7" fill="none" />
                            <path d="M 30,90 Q 200,100 380,80" stroke="#94A3B8" stroke-width="3" fill="none" stroke-dasharray="4,4" />
                            <!-- Park / Water / Blocks -->
                            <rect x="50" y="70" width="50" height="60" rx="3" fill="#D1E7DD" />
                            <rect x="180" y="60" width="80" height="70" rx="3" fill="#E2E8F0" />
                            <rect x="290" y="80" width="70" height="50" rx="3" fill="#D1E7DD" />
                            <!-- Location Marker Pin -->
                            <g transform="translate(220, 85)">
                                <circle cx="0" cy="0" r="10" fill="#DC2626" opacity="0.3" />
                                <circle cx="0" cy="0" r="5" fill="#DC2626" />
                            </g>
                        </svg>
                        <div style="position: absolute; bottom: 8px; right: 8px; background: rgba(255,255,255,0.85); padding: 2px 8px; border-radius: 4px; font-size: 11px; color: #4B5563;">
                            Vatva Industrial Zone
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Bottom Action Buttons Inside Card Footer -->
        <div style="display: flex; justify-content: flex-end; gap: 12px; margin-top: 24px; padding-top: 18px; border-top: 1px solid #E5E7EB;">
            <a href="<%= ResolveUrl("~/Suppliers/SupplierList.aspx") %>" class="btn-outline-action">Cancel</a>
            <asp:Button ID="btnSaveSupplier" runat="server" Text="Save Changes" CssClass="btn-success-dark" OnClick="btnSaveSupplier_Click" />
        </div>
    </div>
</asp:Content>
