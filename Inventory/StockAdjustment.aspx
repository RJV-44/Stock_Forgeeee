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
            <asp:ValidationSummary ID="valSummary" runat="server" CssClass="alert alert-danger" HeaderText="Please correct the following errors:" DisplayMode="BulletList" EnableClientScript="false" />

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
                    <asp:RequiredFieldValidator ID="rfvProduct" runat="server" ControlToValidate="ddlProduct" InitialValue="" ErrorMessage="Product selection is required." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label class="form-label">Adjustment Type <span class="required">*</span></label>
                    <asp:DropDownList ID="ddlAdjustmentType" runat="server" CssClass="form-select">
                        <asp:ListItem Value="">Select type</asp:ListItem>
                        <asp:ListItem Value="Increase">Increase</asp:ListItem>
                        <asp:ListItem Value="Decrease">Decrease</asp:ListItem>
                        <asp:ListItem Value="Correction">Correction</asp:ListItem>
                        <asp:ListItem Value="Damaged">Damaged</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvAdjustmentType" runat="server" ControlToValidate="ddlAdjustmentType" InitialValue="" ErrorMessage="Adjustment Type is required." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label class="form-label">Quantity <span class="required">*</span></label>
                    <asp:TextBox ID="txtQuantity" runat="server" CssClass="form-control" Text="10"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvQuantity" runat="server" ControlToValidate="txtQuantity" ErrorMessage="Quantity is required." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revQuantity" runat="server" ControlToValidate="txtQuantity" ValidationExpression="^[1-9]\d*$" ErrorMessage="Quantity must be a positive whole number greater than 0." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RegularExpressionValidator>
                </div>
                <div class="form-group">
                    <label class="form-label">Reference / Batch ID</label>
                    <asp:TextBox ID="txtReference" runat="server" CssClass="form-control" placeholder="e.g. GRN-1042 / INV-COUNT-07"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="revReference" runat="server" ControlToValidate="txtReference" ValidationExpression="^[a-zA-Z0-9\s\-\/\_]{0,50}$" ErrorMessage="Reference ID contains invalid characters (max 50 chars)." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RegularExpressionValidator>
                </div>
                <div class="form-group full-width">
                    <label class="form-label">Reason <span class="required">*</span></label>
                    <asp:TextBox ID="txtReason" runat="server" TextMode="MultiLine" Rows="4" CssClass="form-control" placeholder="Describe the reason for this adjustment..."></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvReason" runat="server" ControlToValidate="txtReason" ErrorMessage="Adjustment reason is required." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revReason" runat="server" ControlToValidate="txtReason" ValidationExpression="^[\s\S]{5,250}$" ErrorMessage="Reason description must be between 5 and 250 characters." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RegularExpressionValidator>
                </div>
                <div class="form-group">
                    <label class="form-label">Adjustment Date <span class="required">*</span></label>
                    <asp:TextBox ID="txtAdjustmentDate" runat="server" CssClass="form-control" Text="2026-09-30"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvAdjustmentDate" runat="server" ControlToValidate="txtAdjustmentDate" ErrorMessage="Adjustment Date is required." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revAdjustmentDate" runat="server" ControlToValidate="txtAdjustmentDate" ValidationExpression="^\d{4}-\d{2}-\d{2}$" ErrorMessage="Date must be in YYYY-MM-DD format." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RegularExpressionValidator>
                </div>
                <div class="form-group">
                    <label class="form-label">Approved By <span class="required">*</span></label>
                    <asp:TextBox ID="txtApprovedBy" runat="server" CssClass="form-control" Text="System Admin"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvApprovedBy" runat="server" ControlToValidate="txtApprovedBy" ErrorMessage="Approved By name is required." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revApprovedBy" runat="server" ControlToValidate="txtApprovedBy" ValidationExpression="^[a-zA-Z0-9\s\.]{2,50}$" ErrorMessage="Approver name contains invalid characters (2-50 chars)." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RegularExpressionValidator>
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
                <asp:Button ID="btnSaveAdjustment" runat="server" Text="Save Adjustment" CssClass="btn-primary" OnClick="btnSaveAdjustment_Click" />
                <a href="StockOverview.aspx" class="btn-secondary">Cancel</a>
            </div>
        </div>
    </div>
</asp:Content>

