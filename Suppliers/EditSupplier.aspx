<%@ Page Title="Edit Supplier" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditSupplier.aspx.cs" Inherits="Stock_Forgeeee.Suppliers.EditSupplier" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb -->
    <div style="font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; letter-spacing: 0.5px; margin-bottom: 12px; display: flex; align-items: center; gap: 8px;">
        <a href="<%= ResolveUrl("~/Suppliers/SupplierList.aspx") %>" style="color: #6B7280; text-decoration: none;">Suppliers</a>
        <span style="color: #9CA3AF;">/</span>
        <a href="<%= ResolveUrl("~/Suppliers/SupplierDetails.aspx?id=1001") %>" style="color: #6B7280; text-decoration: none;">ABC Hardware Suppliers</a>
        <span style="color: #9CA3AF;">/</span>
        <span style="color: #111827;">Edit</span>
    </div>

    <!-- Header -->
    <div style="margin-bottom: 24px;">
        <div style="display: flex; align-items: center; gap: 12px;">
            <h1 style="font-size: 22px; font-weight: 700; color: #111827; margin: 0;">Edit Supplier</h1>
            <span style="display: inline-flex; align-items: center; gap: 6px; padding: 2px 10px; background: #EAF8EF; border: 1px solid #BBF7D0; border-radius: 9999px; font-size: 11px; font-weight: 600; color: #15803D;">
                <span style="width: 6px; height: 6px; border-radius: 50%; background: #15803D;"></span>
                Active
            </span>
        </div>
        <p style="font-size: 13px; color: #6B7280; margin: 4px 0 0 0;">Update supplier information and purchasing details.</p>
    </div>

    <!-- Alert Panel -->
    <asp:Panel ID="pnlAlert" runat="server" Visible="false" style="background: #FEE2E2; border: 1px solid #FCA5A5; color: #991B1B; padding: 10px 14px; border-radius: 6px; margin-bottom: 20px; font-size: 13px; display: flex; align-items: center; gap: 8px;">
        <i class="bi bi-exclamation-triangle-fill"></i>
        <asp:Label ID="lblAlertMessage" runat="server"></asp:Label>
    </asp:Panel>

    <!-- Main Container Card (Figma Exact) -->
    <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 12px; padding: 28px; box-shadow: 0 1px 3px rgba(0,0,0,0.02); max-width: 1040px;">
        
        <!-- 2 Columns Grid -->
        <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 24px; align-items: start; margin-bottom: 32px;">
            
            <!-- Left Column: Supplier Information + Business Details -->
            <div style="display: flex; flex-direction: column; gap: 24px;">
                
                <!-- Card 1: Supplier Information -->
                <div style="border: 1px solid #E5E7EB; border-radius: 8px; padding: 20px; background: #FFFFFF; position: relative;">
                    <div style="position: absolute; top: -10px; left: 14px; background: #FFFFFF; padding: 0 6px; font-size: 12px; font-weight: 600; color: #111827;">
                        Supplier Information
                    </div>

                    <div style="display: flex; flex-direction: column; gap: 14px; margin-top: 6px;">
                        <div>
                            <label style="display: block; font-size: 11.5px; color: #4B5563; margin-bottom: 4px;">Supplier Name</label>
                            <asp:TextBox ID="txtSupplierName" runat="server" Text="ABC Hardware Suppliers" style="width: 100%; height: 38px; padding: 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #111827; background: #FFFFFF; outline: none;"></asp:TextBox>
                        </div>

                        <div>
                            <label style="display: block; font-size: 11.5px; color: #4B5563; margin-bottom: 4px;">Primary Contact</label>
                            <asp:TextBox ID="txtContactPerson" runat="server" Text="Rajesh Patel" style="width: 100%; height: 38px; padding: 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #111827; background: #FFFFFF; outline: none;"></asp:TextBox>
                        </div>

                        <div style="display: grid; grid-template-columns: 1fr 1.2fr; gap: 12px;">
                            <div>
                                <label style="display: block; font-size: 11.5px; color: #4B5563; margin-bottom: 4px;">Phone Number</label>
                                <asp:TextBox ID="txtPhone" runat="server" Text="+91 98765 43210" style="width: 100%; height: 38px; padding: 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 12.5px; color: #111827; background: #FFFFFF; outline: none;"></asp:TextBox>
                            </div>
                            <div>
                                <label style="display: block; font-size: 11.5px; color: #4B5563; margin-bottom: 4px;">Email Address</label>
                                <asp:TextBox ID="txtEmail" runat="server" Text="contact@abchardware.in" style="width: 100%; height: 38px; padding: 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 12.5px; color: #111827; background: #FFFFFF; outline: none;"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Card 2: Business Details -->
                <div style="border: 1px solid #E5E7EB; border-radius: 8px; padding: 20px; background: #FFFFFF; position: relative;">
                    <div style="position: absolute; top: -10px; left: 14px; background: #FFFFFF; padding: 0 6px; font-size: 12px; font-weight: 600; color: #111827;">
                        Business Details
                    </div>

                    <div style="display: flex; flex-direction: column; gap: 14px; margin-top: 6px;">
                        <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 12px;">
                            <div>
                                <label style="display: block; font-size: 11.5px; color: #4B5563; margin-bottom: 4px;">Supplier Type</label>
                                <asp:DropDownList ID="ddlSupplierType" runat="server" style="width: 100%; height: 38px; padding: 6px 10px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 12.5px; color: #111827; background: #FFFFFF; outline: none;">
                                    <asp:ListItem Value="Distributor" Selected="True">Distributor</asp:ListItem>
                                    <asp:ListItem Value="Manufacturer">Manufacturer</asp:ListItem>
                                    <asp:ListItem Value="Wholesaler">Wholesaler</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div>
                                <label style="display: block; font-size: 11.5px; color: #4B5563; margin-bottom: 4px;">Payment Terms</label>
                                <asp:DropDownList ID="ddlPaymentTerms" runat="server" style="width: 100%; height: 38px; padding: 6px 10px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 12.5px; color: #111827; background: #FFFFFF; outline: none;">
                                    <asp:ListItem Value="30 Days" Selected="True">30 Days</asp:ListItem>
                                    <asp:ListItem Value="15 Days">15 Days</asp:ListItem>
                                    <asp:ListItem Value="Immediate">Immediate</asp:ListItem>
                                    <asp:ListItem Value="60 Days">60 Days</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>

                        <div>
                            <label style="display: block; font-size: 11.5px; color: #4B5563; margin-bottom: 4px;">GSTIN</label>
                            <asp:TextBox ID="txtGstin" runat="server" Text="24ABCDE1234F1Z5" style="width: 100%; height: 38px; padding: 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 12.5px; color: #111827; background: #FFFFFF; outline: none;"></asp:TextBox>
                        </div>

                        <div>
                            <label style="display: block; font-size: 11.5px; color: #4B5563; margin-bottom: 4px;">Internal Notes</label>
                            <asp:TextBox ID="txtNotes" runat="server" TextMode="MultiLine" Rows="3" Text="Primary supplier for power tools and electrical hardware." style="width: 100%; padding: 8px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 12.5px; color: #111827; background: #FFFFFF; line-height: 1.5; outline: none;"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Right Column: Address Details with Map Preview -->
            <div style="border: 1px solid #E5E7EB; border-radius: 8px; padding: 20px; background: #FFFFFF; position: relative;">
                <div style="position: absolute; top: -10px; left: 14px; background: #FFFFFF; padding: 0 6px; font-size: 12px; font-weight: 600; color: #111827;">
                    Address Details
                </div>

                <div style="display: flex; flex-direction: column; gap: 14px; margin-top: 6px;">
                    <div>
                        <label style="display: block; font-size: 11.5px; color: #4B5563; margin-bottom: 4px;">Street Address</label>
                        <asp:TextBox ID="txtAddress" runat="server" Text="123 Industrial Estate, Vatva" style="width: 100%; height: 38px; padding: 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #111827; background: #FFFFFF; outline: none;"></asp:TextBox>
                    </div>

                    <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 12px;">
                        <div>
                            <label style="display: block; font-size: 11.5px; color: #4B5563; margin-bottom: 4px;">City</label>
                            <asp:TextBox ID="txtCity" runat="server" Text="Ahmedabad" style="width: 100%; height: 38px; padding: 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #111827; background: #FFFFFF; outline: none;"></asp:TextBox>
                        </div>
                        <div>
                            <label style="display: block; font-size: 11.5px; color: #4B5563; margin-bottom: 4px;">State</label>
                            <asp:TextBox ID="txtState" runat="server" Text="Gujarat" style="width: 100%; height: 38px; padding: 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #111827; background: #FFFFFF; outline: none;"></asp:TextBox>
                        </div>
                    </div>

                    <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 12px;">
                        <div>
                            <label style="display: block; font-size: 11.5px; color: #4B5563; margin-bottom: 4px;">PIN Code</label>
                            <asp:TextBox ID="txtPinCode" runat="server" Text="382445" style="width: 100%; height: 38px; padding: 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #111827; background: #FFFFFF; outline: none;"></asp:TextBox>
                        </div>
                        <div>
                            <label style="display: block; font-size: 11.5px; color: #4B5563; margin-bottom: 4px;">Country</label>
                            <asp:TextBox ID="txtCountry" runat="server" Text="India" style="width: 100%; height: 38px; padding: 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #111827; background: #FFFFFF; outline: none;"></asp:TextBox>
                        </div>
                    </div>

                    <!-- Clean Vector Map Graphic Preview Matching Figma -->
                    <div style="border: 1px solid #E5E7EB; border-radius: 8px; overflow: hidden; margin-top: 6px; height: 160px; background: #F1F5F9; position: relative;">
                        <svg width="100%" height="100%" viewBox="0 0 400 160" preserveAspectRatio="none" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <!-- Background land -->
                            <rect width="400" height="160" fill="#EBF2EA"/>
                            
                            <!-- Green Park / River areas -->
                            <path d="M 0 0 C 60 40, 70 90, 80 160 L 0 160 Z" fill="#D7E8D6"/>
                            <path d="M 320 0 C 340 60, 360 110, 400 130 L 400 0 Z" fill="#D7E8D6"/>
                            
                            <!-- Street / Road Grid Lines -->
                            <path d="M 60 0 L 100 160" stroke="#FFFFFF" stroke-width="6"/>
                            <path d="M 160 0 L 140 160" stroke="#FFFFFF" stroke-width="5"/>
                            <path d="M 240 0 L 260 160" stroke="#FFFFFF" stroke-width="6"/>
                            <path d="M 330 0 L 310 160" stroke="#FFFFFF" stroke-width="4"/>
                            
                            <path d="M 0 45 L 400 35" stroke="#FFFFFF" stroke-width="6"/>
                            <path d="M 0 85 L 400 95" stroke="#FFFFFF" stroke-width="7"/>
                            <path d="M 0 130 L 400 120" stroke="#FFFFFF" stroke-width="5"/>

                            <!-- City Blocks (Gray / Light Gray Footprints) -->
                            <rect x="110" y="52" width="24" height="26" rx="2" fill="#CBD5E1"/>
                            <rect x="112" y="54" width="8" height="10" fill="#94A3B8"/>
                            <rect x="122" y="54" width="10" height="10" fill="#94A3B8"/>
                            
                            <rect x="175" y="48" width="48" height="32" rx="2" fill="#CBD5E1"/>
                            <rect x="178" y="52" width="18" height="10" fill="#94A3B8"/>
                            <rect x="200" y="52" width="20" height="10" fill="#94A3B8"/>
                            <rect x="178" y="66" width="42" height="10" fill="#94A3B8"/>

                            <rect x="275" y="46" width="30" height="34" rx="2" fill="#CBD5E1"/>
                            <rect x="278" y="50" width="11" height="12" fill="#94A3B8"/>
                            <rect x="292" y="50" width="10" height="12" fill="#94A3B8"/>

                            <rect x="110" y="100" width="26" height="22" rx="2" fill="#CBD5E1"/>
                            <rect x="170" y="104" width="55" height="14" rx="2" fill="#CBD5E1"/>
                            <rect x="270" y="102" width="36" height="16" rx="2" fill="#CBD5E1"/>

                            <!-- Location Pin Marker at Vatva Industrial Estate -->
                            <circle cx="205" cy="74" r="8" fill="#3DA86F" fill-opacity="0.3"/>
                            <circle cx="205" cy="74" r="4.5" fill="#006C44"/>
                            <circle cx="205" cy="74" r="2" fill="#FFFFFF"/>
                        </svg>
                    </div>
                </div>
            </div>
        </div>

        <!-- Bottom Action Bar (Figma Exact) -->
        <div style="display: flex; justify-content: flex-end; align-items: center; gap: 14px; padding-top: 20px; border-top: 1px solid #E5E7EB;">
            <a href="<%= ResolveUrl("~/Suppliers/SupplierList.aspx") %>" style="display: inline-flex; align-items: center; justify-content: center; padding: 9px 22px; background: #FFFFFF; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; font-weight: 500; color: #374151; text-decoration: none;">Cancel</a>
            <asp:Button ID="btnSaveSupplier" runat="server" Text="Save Changes" OnClick="btnSaveSupplier_Click" style="padding: 9px 24px; background: #006C44; border: 1px solid #006C44; border-radius: 6px; color: #FFFFFF; font-size: 13px; font-weight: 600; cursor: pointer; transition: background 0.15s ease;" />
        </div>
    </div>
</asp:Content>
