<%@ Page Title="Stock Adjustment" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StockAdjustment.aspx.cs" Inherits="Stock_Forgeeee.Inventory.StockAdjustment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-header">
        <div>
            <h1 class="page-title">Stock Adjustment</h1>
            <div class="page-subtitle">Record stock corrections, cycle counts, and warehouse inventory updates.</div>
        </div>
        <div class="page-actions">
            <a href="<%= ResolveUrl("~/Inventory/StockOverview.aspx") %>" class="btn-secondary">
                <i class="bi bi-arrow-left"></i> Back to Overview
            </a>
        </div>
    </div>

    <div class="card" style="max-width: 980px;">
        <div class="card-body">
            <div class="adjustment-form">
                <div class="form-group">
                    <label class="form-label">Product <span class="required">*</span></label>
                    <asp:DropDownList ID="ddlProduct" runat="server" CssClass="form-select">
                        <asp:ListItem Value="">Select product</asp:ListItem>
                        <asp:ListItem Value="1">Bosch GSB 500W Impact Drill</asp:ListItem>
                        <asp:ListItem Value="2">Stanley Heavy Duty Hammer</asp:ListItem>
                        <asp:ListItem Value="3">Stainless Steel Hinges 4-inch</asp:ListItem>
                        <asp:ListItem Value="4">Finolex Copper Wire 1.5 sq mm</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label class="form-label">Adjustment Type <span class="required">*</span></label>
                    <asp:DropDownList ID="ddlAdjustmentType" runat="server" CssClass="form-select">
                        <asp:ListItem Value="Increase">Increase</asp:ListItem>
                        <asp:ListItem Value="Decrease">Decrease</asp:ListItem>
                        <asp:ListItem Value="Correction">Correction</asp:ListItem>
                        <asp:ListItem Value="Damaged">Damaged</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label class="form-label">Quantity <span class="required">*</span></label>
                    <asp:TextBox ID="txtQuantity" runat="server" CssClass="form-control" Text="10"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="form-label">Reference / Batch ID</label>
                    <asp:TextBox ID="txtReference" runat="server" CssClass="form-control" placeholder="e.g. GRN-1042 / INV-COUNT-07"></asp:TextBox>
                </div>
                <div class="form-group full-width">
                    <label class="form-label">Reason <span class="required">*</span></label>
                    <asp:TextBox ID="txtReason" runat="server" TextMode="MultiLine" Rows="4" CssClass="form-control" placeholder="Describe the reason for this adjustment..."></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="form-label">Adjustment Date</label>
                    <asp:TextBox ID="txtAdjustmentDate" runat="server" CssClass="form-control" Text="2026-09-30"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="form-label">Approved By</label>
                    <asp:TextBox ID="txtApprovedBy" runat="server" CssClass="form-control" Text="System Admin"></asp:TextBox>
                </div>
            </div>

            <div class="summary-box mt-2">
                <div>
                    <span class="muted-label">Current stock</span>
                    <strong>12 units</strong>
                </div>
                <div>
                    <span class="muted-label">Updated stock</span>
                    <strong>22 units</strong>
                </div>
            </div>

            <div class="d-flex gap-2 pt-3 border-top mt-2">
                <asp:Button ID="btnSaveAdjustment" runat="server" Text="Save Adjustment" CssClass="btn-primary" />
                <a href="StockOverview.aspx" class="btn-secondary">Cancel</a>
            </div>
        </div>
    </div>
</asp:Content>
