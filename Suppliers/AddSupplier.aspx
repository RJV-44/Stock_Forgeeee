<%@ Page Title="Add Supplier" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddSupplier.aspx.cs" Inherits="Stock_Forgeeee.Suppliers.AddSupplier" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb -->
    <div style="font-size: 12px; color: #6B7280; margin-bottom: 12px; display: flex; align-items: center; gap: 6px;">
        <a href="<%= ResolveUrl("~/Suppliers/SupplierList.aspx") %>" style="color: #6B7280; text-decoration: none;">Suppliers</a>
        <span style="color: #9CA3AF;">&rsaquo;</span>
        <span style="color: #111827; font-weight: 500;">Add Supplier</span>
    </div>

    <!-- Header & Actions -->
    <div style="display: flex; justify-content: space-between; align-items: flex-start; margin-bottom: 24px;">
        <div>
            <h1 style="font-size: 20px; font-weight: 700; color: #111827; margin: 0 0 4px 0;">Add Supplier</h1>
            <p style="font-size: 13px; color: #6B7280; margin: 0;">Add a supplier to manage hardware purchasing relationships.</p>
        </div>
        <div style="display: flex; align-items: center; gap: 12px;">
            <a href="<%= ResolveUrl("~/Suppliers/SupplierList.aspx") %>" style="display: inline-flex; align-items: center; justify-content: center; padding: 8px 18px; background: #FFFFFF; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; font-weight: 500; color: #374151; text-decoration: none;">Cancel</a>
            <asp:Button ID="btnSaveSupplier" runat="server" Text="Save Supplier" OnClick="btnSaveSupplier_Click" style="padding: 8px 20px; background: #006C44; border: 1px solid #006C44; border-radius: 6px; color: #FFFFFF; font-size: 13px; font-weight: 600; cursor: pointer; transition: background 0.15s ease;" />
        </div>
    </div>

    <!-- Alert Message -->
    <asp:Panel ID="pnlAlert" runat="server" Visible="false" style="background: #FEE2E2; border: 1px solid #FCA5A5; color: #991B1B; padding: 10px 14px; border-radius: 6px; margin-bottom: 18px; font-size: 13px; display: flex; align-items: center; gap: 8px;">
        <i class="bi bi-exclamation-triangle-fill"></i>
        <asp:Label ID="lblAlertMessage" runat="server"></asp:Label>
    </asp:Panel>

    <!-- 3-Column Figma Form Card -->
    <div style="display: grid; grid-template-columns: 1fr 1fr 1fr; gap: 24px; align-items: stretch; max-width: 1200px;">
        
        <!-- ================= Column 1: Supplier Information ================= -->
        <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 22px; display: flex; flex-direction: column; justify-content: space-between;">
            <div>
                <!-- Section Header -->
                <div style="display: flex; align-items: center; gap: 8px; font-size: 13px; font-weight: 700; color: #111827; margin-bottom: 20px;">
                    <i class="bi bi-file-earmark-text" style="color: #6B7280; font-size: 15px;"></i>
                    <span>Supplier Information</span>
                </div>

                <div style="display: flex; flex-direction: column; gap: 16px;">
                    <!-- Supplier Name -->
                    <div>
                        <label style="display: block; font-size: 11.5px; font-weight: 600; color: #374151; margin-bottom: 5px;">
                            Supplier Name <span style="color: #DC2626;">*</span>
                        </label>
                        <asp:TextBox ID="txtCompanyName" runat="server" placeholder="Enter company name" style="width: 100%; height: 38px; padding: 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 12.5px; color: #111827; background: #FFFFFF; outline: none;"></asp:TextBox>
                    </div>

                    <!-- Contact Person -->
                    <div>
                        <label style="display: block; font-size: 11.5px; font-weight: 600; color: #374151; margin-bottom: 5px;">
                            Contact Person <span style="color: #DC2626;">*</span>
                        </label>
                        <asp:TextBox ID="txtContactName" runat="server" placeholder="Full name" style="width: 100%; height: 38px; padding: 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 12.5px; color: #111827; background: #FFFFFF; outline: none;"></asp:TextBox>
                    </div>

                    <!-- Phone Number with +91 Prefix Box -->
                    <div>
                        <label style="display: block; font-size: 11.5px; font-weight: 600; color: #374151; margin-bottom: 5px;">
                            Phone Number <span style="color: #DC2626;">*</span>
                        </label>
                        <div style="display: flex; align-items: center; gap: 0;">
                            <span style="display: inline-flex; align-items: center; justify-content: center; height: 38px; padding: 0 10px; background: #F9FAFB; border: 1px solid #D1D5DB; border-right: none; border-radius: 6px 0 0 6px; font-size: 12.5px; color: #374151; font-weight: 500;">+91</span>
                            <asp:TextBox ID="txtPhone" runat="server" placeholder="10-digit mobile number" style="width: 100%; height: 38px; padding: 6px 12px; border: 1px solid #D1D5DB; border-radius: 0 6px 6px 0; font-size: 12.5px; color: #111827; background: #FFFFFF; outline: none;"></asp:TextBox>
                        </div>
                    </div>

                    <!-- Email Address -->
                    <div>
                        <label style="display: block; font-size: 11.5px; font-weight: 600; color: #374151; margin-bottom: 5px;">
                            Email Address
                        </label>
                        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" placeholder="contact@supplier.com" style="width: 100%; height: 38px; padding: 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 12.5px; color: #111827; background: #FFFFFF; outline: none;"></asp:TextBox>
                    </div>
                </div>
            </div>

            <!-- Supplier Type Dropdown pinned to bottom -->
            <div style="margin-top: 40px;">
                <label style="display: block; font-size: 11.5px; font-weight: 600; color: #374151; margin-bottom: 5px;">Supplier Type</label>
                <asp:DropDownList ID="ddlSupplierType" runat="server" style="width: 100%; height: 38px; padding: 6px 10px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 12.5px; color: #111827; background: #FFFFFF; outline: none;">
                    <asp:ListItem Value="Manufacturer" Selected="True">Manufacturer</asp:ListItem>
                    <asp:ListItem Value="Distributor">Distributor</asp:ListItem>
                    <asp:ListItem Value="Wholesaler">Wholesaler</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>

        <!-- ================= Column 2: Address Details ================= -->
        <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 22px; display: flex; flex-direction: column; justify-content: space-between;">
            <div>
                <!-- Section Header -->
                <div style="display: flex; align-items: center; gap: 8px; font-size: 13px; font-weight: 700; color: #111827; margin-bottom: 20px;">
                    <i class="bi bi-geo-alt" style="color: #6B7280; font-size: 15px;"></i>
                    <span>Address Details</span>
                </div>

                <div style="display: flex; flex-direction: column; gap: 16px;">
                    <!-- Street Address (Tall Textarea) -->
                    <div>
                        <label style="display: block; font-size: 11.5px; font-weight: 600; color: #374151; margin-bottom: 5px;">Street Address</label>
                        <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="11" placeholder="Building, Street, Area" style="width: 100%; padding: 10px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 12.5px; color: #111827; background: #FFFFFF; outline: none; line-height: 1.6;"></asp:TextBox>
                    </div>

                    <!-- City & PIN Code (2 columns) -->
                    <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 12px;">
                        <div>
                            <label style="display: block; font-size: 11.5px; font-weight: 600; color: #374151; margin-bottom: 5px;">
                                City <span style="color: #DC2626;">*</span>
                            </label>
                            <asp:TextBox ID="txtCity" runat="server" placeholder="City" style="width: 100%; height: 38px; padding: 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 12.5px; color: #111827; background: #FFFFFF; outline: none;"></asp:TextBox>
                        </div>
                        <div>
                            <label style="display: block; font-size: 11.5px; font-weight: 600; color: #374151; margin-bottom: 5px;">
                                PIN Code <span style="color: #DC2626;">*</span>
                            </label>
                            <asp:TextBox ID="txtPinCode" runat="server" placeholder="6 Digits" style="width: 100%; height: 38px; padding: 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 12.5px; color: #111827; background: #FFFFFF; outline: none;"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>

            <!-- State Dropdown pinned to bottom -->
            <div style="margin-top: 16px;">
                <label style="display: block; font-size: 11.5px; font-weight: 600; color: #374151; margin-bottom: 5px;">State</label>
                <asp:DropDownList ID="ddlState" runat="server" style="width: 100%; height: 38px; padding: 6px 10px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 12.5px; color: #111827; background: #FFFFFF; outline: none;">
                    <asp:ListItem Value="" Text="Select State" Selected="True"></asp:ListItem>
                    <asp:ListItem Value="Gujarat">Gujarat</asp:ListItem>
                    <asp:ListItem Value="Maharashtra">Maharashtra</asp:ListItem>
                    <asp:ListItem Value="Delhi">Delhi</asp:ListItem>
                    <asp:ListItem Value="Karnataka">Karnataka</asp:ListItem>
                    <asp:ListItem Value="Tamil Nadu">Tamil Nadu</asp:ListItem>
                    <asp:ListItem Value="Rajasthan">Rajasthan</asp:ListItem>
                    <asp:ListItem Value="Uttar Pradesh">Uttar Pradesh</asp:ListItem>
                    <asp:ListItem Value="Punjab">Punjab</asp:ListItem>
                    <asp:ListItem Value="Haryana">Haryana</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>

        <!-- ================= Column 3: Business Details ================= -->
        <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 22px; display: flex; flex-direction: column;">
            <!-- Section Header -->
            <div style="display: flex; align-items: center; gap: 8px; font-size: 13px; font-weight: 700; color: #111827; margin-bottom: 20px;">
                <i class="bi bi-briefcase" style="color: #6B7280; font-size: 15px;"></i>
                <span>Business Details</span>
            </div>

            <div style="display: flex; flex-direction: column; gap: 16px; flex: 1;">
                <!-- GSTIN with Optional tag -->
                <div>
                    <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 5px;">
                        <label style="font-size: 11.5px; font-weight: 600; color: #374151;">GSTIN</label>
                        <span style="font-size: 10px; color: #6B7280; font-weight: 500;">Optional</span>
                    </div>
                    <asp:TextBox ID="txtGstin" runat="server" placeholder="15-CHARACTER GSTIN" style="width: 100%; height: 38px; padding: 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 12px; color: #111827; background: #FFFFFF; outline: none; letter-spacing: 0.5px;"></asp:TextBox>
                </div>

                <!-- Payment Terms -->
                <div>
                    <label style="display: block; font-size: 11.5px; font-weight: 600; color: #374151; margin-bottom: 5px;">Payment Terms</label>
                    <asp:DropDownList ID="ddlPaymentTerms" runat="server" style="width: 100%; height: 38px; padding: 6px 10px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 12.5px; color: #111827; background: #FFFFFF; outline: none;">
                        <asp:ListItem Value="Immediate" Selected="True">Immediate</asp:ListItem>
                        <asp:ListItem Value="15 Days">15 Days</asp:ListItem>
                        <asp:ListItem Value="30 Days">30 Days</asp:ListItem>
                        <asp:ListItem Value="60 Days">60 Days</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <!-- Internal Notes with Optional tag (Tall Textarea) -->
                <div style="flex: 1; display: flex; flex-direction: column;">
                    <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 5px;">
                        <label style="font-size: 11.5px; font-weight: 600; color: #374151;">Internal Notes</label>
                        <span style="font-size: 10px; color: #6B7280; font-weight: 500;">Optional</span>
                    </div>
                    <asp:TextBox ID="txtNotes" runat="server" TextMode="MultiLine" Rows="14" placeholder="Any internal notes regarding this supplier..." style="width: 100%; flex: 1; min-height: 220px; padding: 10px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 12.5px; color: #111827; background: #FFFFFF; outline: none; line-height: 1.6;"></asp:TextBox>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
