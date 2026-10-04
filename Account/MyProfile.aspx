<%@ Page Title="My Profile" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyProfile.aspx.cs" Inherits="Stock_Forgeeee.Account.MyProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb -->
    <div class="sf-breadcrumb">
        <a href="<%= ResolveUrl("~/Dashboard.aspx") %>">Home</a>
        <i class="bi bi-chevron-right" style="font-size: 10px;"></i>
        <span class="active">Profile</span>
    </div>

    <!-- Page Header (Matching StockForge My Profile.png) -->
    <div class="sf-page-header">
        <div>
            <h1 class="sf-page-title">My Profile</h1>
            <div class="sf-page-subtitle">Manage your personal information and account security.</div>
        </div>
        <div class="sf-header-actions">
            <asp:Button ID="btnSaveProfile" runat="server" Text="💾 Save Changes" CssClass="btn-primary-action" />
        </div>
    </div>

    <!-- 2 Column Layout -->
    <div style="display: grid; grid-template-columns: 320px 1fr; gap: 24px;">
        <!-- Left Column -->
        <div>
            <!-- Avatar & Badges Card -->
            <div class="sf-card" style="text-align: center; padding: 32px 20px; margin-bottom: 20px;">
                <div style="position: relative; width: 84px; height: 84px; margin: 0 auto 16px;">
                    <div class="user-avatar-circle" style="width: 84px; height: 84px; font-size: 30px; font-weight: 700; background: #2BB673;">
                        KD
                    </div>
                    <button type="button" style="position: absolute; bottom: 0; right: 0; width: 26px; height: 26px; background: #ffffff; border: 1px solid #D1D5DB; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-size: 12px; color: #4B5563; cursor: pointer;" title="Change Photo">
                        <i class="bi bi-camera"></i>
                    </button>
                </div>

                <div style="font-size: 16px; font-weight: 700; color: #111827;">Khush Dobariya</div>
                <div style="font-size: 13px; color: #6B7280; margin-top: 2px; margin-bottom: 14px;">khush@example.in</div>

                <div style="display: flex; justify-content: center; gap: 8px;">
                    <span class="sf-pill sf-pill-neutral" style="font-size: 11.5px;">
                        <i class="bi bi-shield-check"></i> Admin
                    </span>
                    <span class="sf-pill sf-pill-success" style="font-size: 11.5px;">
                        <span class="sf-pill-dot"></span> Active
                    </span>
                </div>
            </div>

            <!-- Account Information Card -->
            <div class="sf-card" style="padding: 20px;">
                <div style="display: flex; align-items: center; gap: 8px; font-size: 14px; font-weight: 700; color: #111827; margin-bottom: 18px;">
                    <i class="bi bi-info-circle text-muted"></i> Account Information
                </div>

                <div style="display: flex; flex-direction: column; gap: 14px;">
                    <div style="display: flex; justify-content: space-between; font-size: 13px;">
                        <span style="color: #6B7280;">Role</span>
                        <strong style="color: #111827;">Admin</strong>
                    </div>

                    <div style="display: flex; justify-content: space-between; font-size: 13px;">
                        <span style="color: #6B7280;">Status</span>
                        <strong style="color: #15803D;">Active</strong>
                    </div>

                    <div style="display: flex; justify-content: space-between; font-size: 13px;">
                        <span style="color: #6B7280;">Last Active</span>
                        <strong style="color: #111827;">Today, 10:42 AM</strong>
                    </div>

                    <div style="display: flex; justify-content: space-between; font-size: 13px;">
                        <span style="color: #6B7280;">Member Since</span>
                        <strong style="color: #111827;">01 Aug 2026</strong>
                    </div>
                </div>
            </div>
        </div>

        <!-- Right Column -->
        <div>
            <!-- Personal Information Card -->
            <div class="sf-card" style="margin-bottom: 20px; padding: 28px;">
                <div style="display: flex; align-items: center; gap: 8px; font-size: 15px; font-weight: 700; color: #111827; margin-bottom: 20px;">
                    <i class="bi bi-person"></i> Personal Information
                </div>

                <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 20px; margin-bottom: 18px;">
                    <div>
                        <label class="sf-form-label">Full Name</label>
                        <input type="text" class="sf-input" value="Khush Dobariya" />
                    </div>
                    <div>
                        <label class="sf-form-label">Email Address</label>
                        <div style="position: relative;">
                            <input type="email" class="sf-input" value="khush@example.in" readonly style="padding-right: 32px;" />
                            <i class="bi bi-lock" style="position: absolute; right: 10px; top: 50%; transform: translateY(-50%); color: #9CA3AF;"></i>
                        </div>
                    </div>
                </div>

                <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 20px;">
                    <div>
                        <label class="sf-form-label">Phone Number</label>
                        <div style="display: flex;">
                            <span style="display: inline-flex; align-items: center; padding: 0 12px; background: #F3F4F6; border: 1px solid #D1D5DB; border-right: none; border-radius: 6px 0 0 6px; font-size: 13.5px; color: #4B5563;">
                                +91
                            </span>
                            <input type="tel" class="sf-input" value="98765 43210" style="border-radius: 0 6px 6px 0;" />
                        </div>
                    </div>
                    <div>
                        <label class="sf-form-label">Timezone</label>
                        <select class="sf-select" style="width: 100%;">
                            <option selected>Asia/Kolkata (IST)</option>
                            <option>UTC (GMT+0)</option>
                            <option>America/New_York (EST)</option>
                        </select>
                    </div>
                </div>
            </div>

            <!-- Security Card -->
            <div class="sf-card" style="padding: 28px;">
                <div style="display: flex; align-items: center; gap: 8px; font-size: 15px; font-weight: 700; color: #111827; margin-bottom: 20px;">
                    <i class="bi bi-shield-lock"></i> Security
                </div>

                <div style="background: #F9FAFB; border: 1px solid #E5E7EB; border-radius: 8px; padding: 18px 20px; display: flex; justify-content: space-between; align-items: center;">
                    <div style="display: flex; align-items: center; gap: 14px;">
                        <div style="width: 40px; height: 40px; background: #E5E7EB; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-size: 18px; color: #4B5563;">
                            <i class="bi bi-key"></i>
                        </div>
                        <div>
                            <div style="font-size: 14px; font-weight: 700; color: #111827;">Password</div>
                            <div style="font-size: 12.5px; color: #6B7280; margin-top: 2px;">Last changed 30 days ago</div>
                        </div>
                    </div>
                    <button type="button" class="btn-outline-action">Change Password</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
