<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Pagination.ascx.cs" Inherits="Stock_Forgeeee.Controls.Pagination" %>
<link href="<%= ResolveUrl("~/Content/site.css") %>" rel="stylesheet" type="text/css" />
<link href="<%= ResolveUrl("~/Content/components.css") %>" rel="stylesheet" type="text/css" />

<div class="pagination-container">
    <div class="small-text text-secondary">
        Showing <strong>1</strong> to <strong>10</strong> of <strong>48</strong> entries
    </div>
    <div class="pagination-buttons">
        <button type="button" class="btn-secondary btn-sm" disabled><i class="bi bi-chevron-left"></i> Previous</button>
        <button type="button" class="btn-primary btn-sm">1</button>
        <button type="button" class="btn-secondary btn-sm">2</button>
        <button type="button" class="btn-secondary btn-sm">3</button>
        <button type="button" class="btn-secondary btn-sm">Next <i class="bi bi-chevron-right"></i></button>
    </div>
</div>
