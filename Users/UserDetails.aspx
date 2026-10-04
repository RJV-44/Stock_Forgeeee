<%@ Page Title="User Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserDetails.aspx.cs" Inherits="Stock_Forgeeee.Users.UserDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb -->
    <div class="sf-breadcrumb">
        <a href="<%= ResolveUrl("~/Users/UserManagement.aspx") %>">Users</a>
        <i class="bi bi-chevron-right" style="font-size: 10px;"></i>
        <span class="active">User Details</span>
    </div>

    <!-- Page Header -->
    <div class="sf-page-header">
        <div>
            <h1 class="sf-page-title">
                Khush Dobariya
                <span class="sf-pill sf-pill-success">Active</span>
            </h1>
            <div class="sf-page-subtitle">User account and access information.</div>
        </div>
        <div class="sf-header-actions">
            <a href="<%= ResolveUrl("~/Users/EditUser.aspx?id=1") %>" class="btn-outline-action">
                <i class="bi bi-pencil"></i> Edit User
            </a>
            <button type="button" class="icon-button" title="More Options">
                <i class="bi bi-three-dots-vertical"></i>
            </button>
        </div>
    </div>

    <!-- 2 Column Layout (Matching StockForge User Details.png) -->
    <div style="display: grid; grid-template-columns: 320px 1fr; gap: 24px;">
        <!-- Left Column -->
        <div>
            <!-- User Summary Box -->
            <div class="sf-card" style="margin-bottom: 20px; padding: 20px;">
                <div style="display: flex; align-items: center; gap: 14px;">
                    <div class="user-avatar-circle" style="width: 48px; height: 48px; font-size: 18px; background: #2BB673;">
                        KD
                    </div>
                    <div>
                        <div style="font-size: 15px; font-weight: 700; color: #111827;">Khush Dobariya</div>
                        <div style="font-size: 12.5px; color: #6B7280;">khush@example.in</div>
                        <div style="font-size: 12.5px; color: #6B7280;">+91 98765 43210</div>
                    </div>
                </div>
            </div>

            <!-- Personal Information Box -->
            <div class="sf-card" style="padding: 24px;">
                <div style="font-size: 14px; font-weight: 700; color: #111827; margin-bottom: 18px;">
                    Personal Information
                </div>

                <div style="margin-bottom: 16px;">
                    <div style="font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; margin-bottom: 4px;">Full Name</div>
                    <div style="font-size: 14px; color: #111827; font-weight: 500;">Khush Dobariya</div>
                </div>

                <div style="margin-bottom: 16px;">
                    <div style="font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; margin-bottom: 4px;">Email</div>
                    <div style="font-size: 14px; color: #111827; font-weight: 500;">khush@example.in</div>
                </div>

                <div style="margin-bottom: 16px;">
                    <div style="font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; margin-bottom: 4px;">Phone</div>
                    <div style="font-size: 14px; color: #111827; font-weight: 500;">+91 98765 43210</div>
                </div>

                <div>
                    <div style="font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; margin-bottom: 4px;">Location</div>
                    <div style="font-size: 14px; color: #111827; font-weight: 500;">Mumbai, India</div>
                </div>
            </div>
        </div>

        <!-- Right Column -->
        <div>
            <!-- Top Row: Account Information & Access Overview -->
            <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 20px; margin-bottom: 20px;">
                <!-- Account Information -->
                <div class="sf-card" style="margin-bottom: 0; padding: 20px;">
                    <div style="font-size: 14px; font-weight: 700; color: #111827; margin-bottom: 16px;">
                        Account Information
                    </div>
                    <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 14px;">
                        <div>
                            <div style="font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; margin-bottom: 4px;">Role</div>
                            <div style="font-size: 14px; font-weight: 600; color: #111827;">Admin</div>
                        </div>
                        <div>
                            <div style="font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; margin-bottom: 4px;">Status</div>
                            <div style="font-size: 14px; font-weight: 600; color: #15803D;">Active</div>
                        </div>
                        <div>
                            <div style="font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; margin-bottom: 4px;">Created On</div>
                            <div style="font-size: 13.5px; color: #111827;">01 Aug 2026</div>
                        </div>
                        <div>
                            <div style="font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; margin-bottom: 4px;">Last Active</div>
                            <div style="font-size: 13.5px; color: #111827;">Today, 10:42 AM</div>
                        </div>
                    </div>
                </div>

                <!-- Access Overview -->
                <div class="sf-card" style="margin-bottom: 0; padding: 20px;">
                    <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px;">
                        <div style="font-size: 14px; font-weight: 700; color: #111827;">Access Overview</div>
                        <a href="<%= ResolveUrl("~/Users/RolesPermissions.aspx") %>" style="font-size: 12.5px; color: #006C44; font-weight: 600; text-decoration: none;">View All</a>
                    </div>
                    <div style="display: flex; flex-wrap: wrap; gap: 8px;">
                        <span class="sf-pill sf-pill-neutral"><i class="bi bi-eye"></i> Dashboard</span>
                        <span class="sf-pill sf-pill-neutral"><i class="bi bi-pencil"></i> Inventory</span>
                        <span class="sf-pill sf-pill-neutral"><i class="bi bi-pencil"></i> Sales</span>
                        <span class="sf-pill sf-pill-neutral"><i class="bi bi-pencil"></i> Purchases</span>
                    </div>
                </div>
            </div>

            <!-- Recent Activity Timeline Card -->
            <div class="sf-card" style="padding: 0; overflow: hidden;">
                <div style="padding: 18px 20px; border-bottom: 1px solid #E5E7EB; font-size: 14px; font-weight: 700; color: #111827;">
                    Recent Activity
                </div>
                <div>
                    <!-- Activity Item 1 -->
                    <div style="display: flex; align-items: center; gap: 14px; padding: 16px 20px; border-bottom: 1px solid #F3F4F6;">
                        <div style="width: 36px; height: 36px; border-radius: 6px; background: #F3F4F6; display: flex; align-items: center; justify-content: center; color: #6B7280; font-size: 16px;">
                            <i class="bi bi-box-seam"></i>
                        </div>
                        <div>
                            <div style="font-size: 13.5px; font-weight: 600; color: #111827;">Updated product stock</div>
                            <div style="font-size: 12px; color: #6B7280;">17 Aug 2026, 10:42 AM</div>
                        </div>
                    </div>

                    <!-- Activity Item 2 -->
                    <div style="display: flex; align-items: center; gap: 14px; padding: 16px 20px; border-bottom: 1px solid #F3F4F6;">
                        <div style="width: 36px; height: 36px; border-radius: 6px; background: #F3F4F6; display: flex; align-items: center; justify-content: center; color: #6B7280; font-size: 16px;">
                            <i class="bi bi-receipt"></i>
                        </div>
                        <div>
                            <div style="font-size: 13.5px; font-weight: 600; color: #111827;">
                                Created Purchase Order <span style="background: #F3F4F6; padding: 1px 6px; border-radius: 4px; font-family: monospace; font-size: 12px;">PO-2026-0048</span>
                            </div>
                            <div style="font-size: 12px; color: #6B7280;">17 Aug 2026, 09:30 AM</div>
                        </div>
                    </div>

                    <!-- Activity Item 3 -->
                    <div style="display: flex; align-items: center; gap: 14px; padding: 16px 20px; border-bottom: 1px solid #F3F4F6;">
                        <div style="width: 36px; height: 36px; border-radius: 6px; background: #F3F4F6; display: flex; align-items: center; justify-content: center; color: #6B7280; font-size: 16px;">
                            <i class="bi bi-truck"></i>
                        </div>
                        <div>
                            <div style="font-size: 13.5px; font-weight: 600; color: #111827;">Updated supplier information</div>
                            <div style="font-size: 12px; color: #6B7280;">16 Aug 2026, 04:15 PM</div>
                        </div>
                    </div>

                    <!-- Activity Item 4 -->
                    <div style="display: flex; align-items: center; gap: 14px; padding: 16px 20px;">
                        <div style="width: 36px; height: 36px; border-radius: 6px; background: #F3F4F6; display: flex; align-items: center; justify-content: center; color: #6B7280; font-size: 16px;">
                            <i class="bi bi-tag"></i>
                        </div>
                        <div>
                            <div style="font-size: 13.5px; font-weight: 600; color: #111827;">
                                Completed sale <span style="background: #F3F4F6; padding: 1px 6px; border-radius: 4px; font-family: monospace; font-size: 12px;">SO-2026-0125</span>
                            </div>
                            <div style="font-size: 12px; color: #6B7280;">16 Aug 2026, 11:20 AM</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
