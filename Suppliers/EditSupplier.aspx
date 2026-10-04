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
        <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 24px;">
            <!-- Left Column -->
            <div>
                <!-- Supplier Information Group -->
                <div class="sf-group-box">
                    <div class="sf-group-title">Supplier Information</div>

                    <div style="margin-bottom: 14px;">
                        <label class="sf-form-label">Supplier Name</label>
                        <input type="text" class="sf-input" value="ABC Hardware Suppliers" />
                    </div>

                    <div style="margin-bottom: 14px;">
                        <label class="sf-form-label">Primary Contact</label>
                        <input type="text" class="sf-input" value="Rajesh Patel" />
                    </div>

                    <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 14px;">
                        <div>
                            <label class="sf-form-label">Phone Number</label>
                            <input type="tel" class="sf-input" value="+91 98765 43210" />
                        </div>
                        <div>
                            <label class="sf-form-label">Email Address</label>
                            <input type="email" class="sf-input" value="contact@abchardware.in" />
                        </div>
                    </div>
                </div>

                <!-- Business Details Group -->
                <div class="sf-group-box" style="margin-bottom: 0;">
                    <div class="sf-group-title">Business Details</div>

                    <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 14px; margin-bottom: 14px;">
                        <div>
                            <label class="sf-form-label">Supplier Type</label>
                            <select class="sf-select" style="width: 100%;">
                                <option selected>Distributor</option>
                                <option>Manufacturer</option>
                                <option>Wholesaler</option>
                            </select>
                        </div>
                        <div>
                            <label class="sf-form-label">Payment Terms</label>
                            <select class="sf-select" style="width: 100%;">
                                <option selected>30 Days</option>
                                <option>15 Days</option>
                                <option>60 Days</option>
                                <option>Advance</option>
                            </select>
                        </div>
                    </div>

                    <div style="margin-bottom: 14px;">
                        <label class="sf-form-label">GSTIN</label>
                        <input type="text" class="sf-input" value="24ABCDE1234F1Z5" />
                    </div>

                    <div>
                        <label class="sf-form-label">Internal Notes</label>
                        <textarea class="sf-textarea" rows="3">Primary supplier for power tools and electrical hardware.</textarea>
                    </div>
                </div>
            </div>

            <!-- Right Column: Address Details & Map -->
            <div>
                <div class="sf-group-box" style="margin-bottom: 0; height: 100%; display: flex; flex-direction: column;">
                    <div class="sf-group-title">Address Details</div>

                    <div style="margin-bottom: 14px;">
                        <label class="sf-form-label">Street Address</label>
                        <input type="text" class="sf-input" value="123 Industrial Estate, Vatva" />
                    </div>

                    <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 14px; margin-bottom: 14px;">
                        <div>
                            <label class="sf-form-label">City</label>
                            <input type="text" class="sf-input" value="Ahmedabad" />
                        </div>
                        <div>
                            <label class="sf-form-label">State</label>
                            <input type="text" class="sf-input" value="Gujarat" />
                        </div>
                    </div>

                    <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 14px; margin-bottom: 16px;">
                        <div>
                            <label class="sf-form-label">PIN Code</label>
                            <input type="text" class="sf-input" value="382445" />
                        </div>
                        <div>
                            <label class="sf-form-label">Country</label>
                            <input type="text" class="sf-input" value="India" />
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
            <asp:Button ID="btnSaveSupplier" runat="server" Text="Save Changes" CssClass="btn-success-dark" />
        </div>
    </div>
</asp:Content>
