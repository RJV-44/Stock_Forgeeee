<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="StatCard.ascx.cs" Inherits="Stock_Forgeeee.Controls.StatCard" %>
<link href="<%= ResolveUrl("~/Content/site.css") %>" rel="stylesheet" type="text/css" />
<link href="<%= ResolveUrl("~/Content/components.css") %>" rel="stylesheet" type="text/css" />

<div class="kpi-card">
    <div class="kpi-header">
        <span class="kpi-label"><%= Title %></span>
        <div class="kpi-icon-box <%= IconBgClass %>">
            <i class="bi <%= IconClass %>"></i>
        </div>
    </div>
    <div class="kpi-value"><%= Value %></div>
    <div class="kpi-change <%= TrendClass %>">
        <i class="bi <%= TrendIcon %>"></i>
        <span><%= Subtitle %></span>
    </div>
</div>
