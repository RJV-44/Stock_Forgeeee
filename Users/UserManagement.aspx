<%@ Page Title="Users" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserManagement.aspx.cs" Inherits="Stock_Forgeeee.Users.UserManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb -->
    <div class="sf-breadcrumb">
        <a href="<%= ResolveUrl("~/Dashboard.aspx") %>">Dashboard</a>
        <i class="bi bi-chevron-right" style="font-size: 10px;"></i>
        <span class="active">Users</span>
    </div>

    <!-- Page Header -->
    <div class="sf-page-header">
        <div>
            <h1 class="sf-page-title">Users</h1>
            <div class="sf-page-subtitle">Manage StockForge users, roles and access.</div>
        </div>
        <div class="sf-header-actions">
            <a href="<%= ResolveUrl("~/Users/RolesPermissions.aspx") %>" class="btn-outline-action">
                <i class="bi bi-shield-check"></i> Roles &amp; Permissions
            </a>
            <a href="<%= ResolveUrl("~/Users/AddUser.aspx") %>" class="btn-primary-action">
                <i class="bi bi-plus-lg"></i> Add User
            </a>
        </div>
    </div>

    <!-- 4 Metric Stat Cards Grid -->
    <div class="sf-kpi-grid">
        <div class="sf-kpi-card">
            <div class="kpi-title">Total Users</div>
            <div class="kpi-value">24</div>
        </div>

        <div class="sf-kpi-card">
            <div class="kpi-title">Active Users</div>
            <div class="kpi-value">21</div>
        </div>

        <div class="sf-kpi-card">
            <div class="kpi-title">Inactive Users</div>
            <div class="kpi-value">3</div>
        </div>

        <div class="sf-kpi-card">
            <div class="kpi-title">Administrators</div>
            <div class="kpi-value">2</div>
        </div>
    </div>

    <!-- Users Table Card (Matching StockForge User Management.png) -->
    <div class="sf-table-card">
        <!-- Filter Toolbar -->
        <div class="sf-filter-row">
            <div class="sf-search-wrap">
                <i class="bi bi-search"></i>
                <input type="text" placeholder="Search name, email or role..." />
            </div>
            <select class="sf-select">
                <option>All Roles</option>
                <option>Admin</option>
                <option>Inventory Manager</option>
                <option>Purchase Manager</option>
                <option>Sales Staff</option>
                <option>Viewer</option>
            </select>
            <select class="sf-select">
                <option>All Status</option>
                <option>Active</option>
                <option>Inactive</option>
            </select>
            <div style="margin-left: auto; display: flex; align-items: center; gap: 12px;">
                <div style="font-size: 13px; color: #4B5563; display: flex; align-items: center; gap: 6px;">
                    <span>Sort by:</span>
                    <strong>Name A-Z</strong>
                    <i class="bi bi-filter-right" style="font-size: 16px;"></i>
                </div>
                <button type="button" class="sf-text-btn" style="color: #6B7280;">Clear</button>
            </div>
        </div>

        <!-- Table -->
        <div style="overflow-x: auto;">
            <table class="sf-table">
                <thead>
                    <tr>
                        <th style="width: 28%;">User</th>
                        <th style="width: 18%;">Role</th>
                        <th style="width: 18%;">Phone</th>
                        <th style="width: 16%;">Last Active</th>
                        <th style="width: 12%;">Status</th>
                        <th style="width: 8%; text-align: center;">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <div style="display: flex; align-items: center; gap: 12px;">
                                <div class="user-avatar-circle" style="background: #2BB673;">KD</div>
                                <div>
                                    <a href="<%= ResolveUrl("~/Users/UserDetails.aspx?id=1") %>" style="font-weight: 600; color: #111827; text-decoration: none;">
                                        Khush Dobariya
                                    </a>
                                    <div style="font-size: 12px; color: #6B7280;">khush@example.in</div>
                                </div>
                            </div>
                        </td>
                        <td><span class="sf-pill sf-pill-neutral">Admin</span></td>
                        <td style="font-weight: 500; color: #111827;">+91 98765 43210</td>
                        <td style="color: #4B5563;">Today 10:42 AM</td>
                        <td><span class="sf-pill sf-pill-success"><span class="sf-pill-dot"></span> Active</span></td>
                        <td style="text-align: center;">
                            <a href="<%= ResolveUrl("~/Users/EditUser.aspx?id=1") %>" class="icon-button" style="width: 32px; height: 32px;" title="Edit User">
                                <i class="bi bi-three-dots"></i>
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="display: flex; align-items: center; gap: 12px;">
                                <div class="user-avatar-circle avatar-grey">RL</div>
                                <div>
                                    <div style="font-weight: 600; color: #111827;">Rajvi Lunagariya</div>
                                    <div style="font-size: 12px; color: #6B7280;">rajvi@example.in</div>
                                </div>
                            </div>
                        </td>
                        <td><span class="sf-pill sf-pill-neutral">Inventory Manager</span></td>
                        <td style="font-weight: 500; color: #111827;">+91 98254 12345</td>
                        <td style="color: #4B5563;">Today 09:15 AM</td>
                        <td><span class="sf-pill sf-pill-success"><span class="sf-pill-dot"></span> Active</span></td>
                        <td style="text-align: center;">
                            <a href="<%= ResolveUrl("~/Users/EditUser.aspx?id=2") %>" class="icon-button" style="width: 32px; height: 32px;">
                                <i class="bi bi-three-dots"></i>
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="display: flex; align-items: center; gap: 12px;">
                                <div class="user-avatar-circle avatar-grey">AP</div>
                                <div>
                                    <div style="font-weight: 600; color: #111827;">Amit Patel</div>
                                    <div style="font-size: 12px; color: #6B7280;">amit@example.in</div>
                                </div>
                            </div>
                        </td>
                        <td><span class="sf-pill sf-pill-neutral">Purchase Manager</span></td>
                        <td style="font-weight: 500; color: #111827;">+91 98980 23456</td>
                        <td style="color: #4B5563;">Yesterday</td>
                        <td><span class="sf-pill sf-pill-success"><span class="sf-pill-dot"></span> Active</span></td>
                        <td style="text-align: center;">
                            <a href="<%= ResolveUrl("~/Users/EditUser.aspx?id=3") %>" class="icon-button" style="width: 32px; height: 32px;">
                                <i class="bi bi-three-dots"></i>
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="display: flex; align-items: center; gap: 12px;">
                                <div class="user-avatar-circle avatar-grey">NS</div>
                                <div>
                                    <div style="font-weight: 600; color: #111827;">Neha Shah</div>
                                    <div style="font-size: 12px; color: #6B7280;">neha@example.in</div>
                                </div>
                            </div>
                        </td>
                        <td><span class="sf-pill sf-pill-neutral">Sales Staff</span></td>
                        <td style="font-weight: 500; color: #111827;">+91 98795 45678</td>
                        <td style="color: #4B5563;">Today 08:45 AM</td>
                        <td><span class="sf-pill sf-pill-success"><span class="sf-pill-dot"></span> Active</span></td>
                        <td style="text-align: center;">
                            <a href="<%= ResolveUrl("~/Users/EditUser.aspx?id=4") %>" class="icon-button" style="width: 32px; height: 32px;">
                                <i class="bi bi-three-dots"></i>
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="display: flex; align-items: center; gap: 12px;">
                                <div class="user-avatar-circle avatar-grey">KM</div>
                                <div>
                                    <div style="font-weight: 600; color: #111827;">Karan Mehta</div>
                                    <div style="font-size: 12px; color: #6B7280;">karan@example.in</div>
                                </div>
                            </div>
                        </td>
                        <td><span class="sf-pill sf-pill-neutral">Sales Staff</span></td>
                        <td style="font-weight: 500; color: #111827;">+91 99090 56789</td>
                        <td style="color: #4B5563;">16 Aug 2026</td>
                        <td><span class="sf-pill sf-pill-success"><span class="sf-pill-dot"></span> Active</span></td>
                        <td style="text-align: center;">
                            <a href="<%= ResolveUrl("~/Users/EditUser.aspx?id=5") %>" class="icon-button" style="width: 32px; height: 32px;">
                                <i class="bi bi-three-dots"></i>
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="display: flex; align-items: center; gap: 12px;">
                                <div class="user-avatar-circle avatar-grey">PP</div>
                                <div>
                                    <div style="font-weight: 600; color: #111827;">Priya Patel</div>
                                    <div style="font-size: 12px; color: #6B7280;">priya@example.in</div>
                                </div>
                            </div>
                        </td>
                        <td><span class="sf-pill sf-pill-neutral">Viewer</span></td>
                        <td style="font-weight: 500; color: #111827;">+91 98123 67890</td>
                        <td style="color: #4B5563;">15 Aug 2026</td>
                        <td><span class="sf-pill sf-pill-success"><span class="sf-pill-dot"></span> Active</span></td>
                        <td style="text-align: center;">
                            <a href="<%= ResolveUrl("~/Users/EditUser.aspx?id=6") %>" class="icon-button" style="width: 32px; height: 32px;">
                                <i class="bi bi-three-dots"></i>
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="display: flex; align-items: center; gap: 12px;">
                                <div class="user-avatar-circle avatar-grey">RS</div>
                                <div>
                                    <div style="font-weight: 600; color: #111827;">Rahul Shah</div>
                                    <div style="font-size: 12px; color: #6B7280;">rahul@example.in</div>
                                </div>
                            </div>
                        </td>
                        <td><span class="sf-pill sf-pill-neutral">Inventory Manager</span></td>
                        <td style="font-weight: 500; color: #111827;">+91 98250 78901</td>
                        <td style="color: #4B5563;">10 Aug 2026</td>
                        <td><span class="sf-pill sf-pill-neutral"><span class="sf-pill-dot" style="background: #9CA3AF;"></span> Inactive</span></td>
                        <td style="text-align: center;">
                            <a href="<%= ResolveUrl("~/Users/EditUser.aspx?id=7") %>" class="icon-button" style="width: 32px; height: 32px;">
                                <i class="bi bi-three-dots"></i>
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="display: flex; align-items: center; gap: 12px;">
                                <div class="user-avatar-circle avatar-grey">MJ</div>
                                <div>
                                    <div style="font-weight: 600; color: #111827;">Mehul Joshi</div>
                                    <div style="font-size: 12px; color: #6B7280;">mehul@example.in</div>
                                </div>
                            </div>
                        </td>
                        <td><span class="sf-pill sf-pill-neutral">Viewer</span></td>
                        <td style="font-weight: 500; color: #111827;">+91 98790 89012</td>
                        <td style="color: #4B5563;">08 Aug 2026</td>
                        <td><span class="sf-pill sf-pill-success"><span class="sf-pill-dot"></span> Active</span></td>
                        <td style="text-align: center;">
                            <a href="<%= ResolveUrl("~/Users/EditUser.aspx?id=8") %>" class="icon-button" style="width: 32px; height: 32px;">
                                <i class="bi bi-three-dots"></i>
                            </a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

        <!-- Table Footer -->
        <div class="sf-table-footer">
            <div>Showing 1-8 of 24 users</div>
            <div class="sf-pagination">
                <button type="button" class="sf-page-btn">Previous</button>
                <button type="button" class="sf-page-btn active">1</button>
                <button type="button" class="sf-page-btn">2</button>
                <button type="button" class="sf-page-btn">3</button>
                <button type="button" class="sf-page-btn">Next</button>
            </div>
        </div>
    </div>
</asp:Content>
