<%@ Page Title="System Dashboard" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="ongc_webapp.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Required library for Charts -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    
    <style>
        body { background-color: #f4f6f8; color: #2d3436; font-family: 'Segoe UI', Arial, sans-serif; }
        
        /* Corporate Hero Banner */
        .hero-banner { background: #7a0616; color: #ffffff; padding: 40px; border-radius: 0 0 10px 10px; margin-bottom: 30px; }
        
        /* Industrial Stat Cards */
        .stat-card { background: #ffffff; padding: 20px; border-left: 4px solid #7a0616; border-radius: 4px; box-shadow: 0 1px 3px rgba(0,0,0,0.1); height: 100%; }
        .stat-label { font-size: 0.75rem; text-transform: uppercase; letter-spacing: 1px; color: #636e72; font-weight: 600; margin-bottom: 5px; }
        .stat-value { font-size: 1.75rem; font-weight: 700; color: #2d3436; }

        /* Chart Containers */
        .chart-card { background: #ffffff; padding: 20px 20px 40px 20px; border-radius: 4px; box-shadow: 0 1px 3px rgba(0,0,0,0.1); height: 380px; display: flex; flex-direction: column; }
        .chart-title { font-size: 0.85rem; font-weight: 700; color: #7a0616; margin-bottom: 20px; text-transform: uppercase; }
        
        /* Professional Footer Styles */
        .footer-base { 
            background: linear-gradient(to bottom, #f8f9fa, #f1f3f5); 
            border-top: 2px solid #7a0616; 
            padding: 60px 0 30px 0; 
            margin-top: 60px; 
            color: #4a4a4a; 
        }
        .footer-heading { color: #2d3436; font-weight: 700; margin-bottom: 15px; font-size: 0.85rem; letter-spacing: 1px; text-transform: uppercase; }
        .footer-link { text-decoration: none; color: #4a4a4a; transition: color 0.3s ease; }
        .footer-link:hover { color: #7a0616; }
        .divider-col { border-right: 1px solid #dee2e6; }
    </style>

    <div class="hero-banner">
        <h2 class="fw-bold">Welcome Back, User</h2>
        <p class="mb-0" style="opacity: 0.85;">ONGC Document Indexing & Enterprise Retrieval System</p>
    </div>

    <div class="container-fluid px-4">
        <div class="row g-3 mb-4">
            <div class="col-md-4"><div class="stat-card"><div class="stat-label">Total Files</div><div class="stat-value"><asp:Label ID="lblTotalFiles" runat="server" Text="53,978" /></div></div></div>
            <div class="col-md-4"><div class="stat-card"><div class="stat-label">Indexed Successfully</div><div class="stat-value"><asp:Label ID="lblIndexedSuccess" runat="server" Text="53,978" /></div></div></div>
            <div class="col-md-4"><div class="stat-card"><div class="stat-label">Pending Indexing</div><div class="stat-value"><asp:Label ID="lblPendingIndexing" runat="server" Text="0" /></div></div></div>
        </div>

        <div class="row g-3 mb-4">
            <div class="col-md-8"><div class="chart-card"><div class="chart-title">Document Indexing Trends</div><canvas id="indexingChart"></canvas></div></div>
            <div class="col-md-4"><div class="chart-card"><div class="chart-title">File Distribution</div><canvas id="fileTypePieChart"></canvas></div></div>
        </div>

        <div class="card p-4 border-0 shadow-sm mb-5" style="border-radius: 4px;">
            <h6 class="text-uppercase fw-bold mb-4" style="color: #7a0616;">User Management Summary</h6>
            <table class="table table-bordered table-hover">
                <thead class="table-light"><tr><th>STATUS</th><th>COUNT</th></tr></thead>
                <tbody>
                    <tr><td>Approved</td><td><strong><asp:Label ID="lblApprovedUsers" runat="server" Text="4" /></strong></td></tr>
                    <tr><td>Pending</td><td><strong><asp:Label ID="lblPendingUsers" runat="server" Text="3" /></strong></td></tr>
                    <tr><td>Rejected</td><td><strong><asp:Label ID="lblRejectedUsers" runat="server" Text="0" /></strong></td></tr>
                </tbody>
            </table>
        </div>
    </div>

    <footer class="footer-base">
        <div class="container-fluid px-4">
            <div class="row">
                <div class="col-md-4 divider-col">
                    <div class="footer-heading">System Pulse</div>
                    <ul style="list-style: none; padding: 0; font-size: 0.9rem; line-height: 2;">
                        <li><i class="fas fa-sync-alt" style="margin-right: 8px; color: #95a5a6;"></i> Indexing Service: <span style="color: #48bb78;">● Online</span></li>
                        <li><i class="fas fa-database" style="margin-right: 8px; color: #95a5a6;"></i> Database: <span style="color: #48bb78;">● Connected</span></li>
                        <li><i class="fas fa-clock" style="margin-right: 8px; color: #95a5a6;"></i> Last Sync: Today, 11:40 AM</li>
                    </ul>
                </div>

                <div class="col-md-4 divider-col">
                    <div class="footer-heading">Need Help?</div>
                    <ul style="list-style: none; padding: 0; font-size: 0.9rem; line-height: 2.2;">
                        <li><a href="docs/ONGC_Indexing_Manual.pdf" target="_blank" class="footer-link"><i class="fas fa-file-pdf" style="margin-right: 8px; color: #95a5a6;"></i> Documentation: User Manual PDF</a></li>
                        <li><a href="mailto:support@ongc.co.in" class="footer-link"><i class="fas fa-envelope" style="margin-right: 8px; color: #95a5a6;"></i> Contact Support</a></li>
                    </ul>
                </div>

                <div class="col-md-4">
                    <div class="footer-heading">Enterprise Info</div>
                    <ul style="list-style: none; padding: 0; font-size: 0.9rem; line-height: 1.8;">
                        <li><i class="fas fa-map-marker-alt" style="margin-right: 8px; color: #95a5a6;"></i> ONGC Assam Asset, Jorhat</li>
                        <li><i class="fas fa-id-card" style="margin-right: 8px; color: #95a5a6;"></i> CIN: L74899DL1993GOI054155</li>
                        <li><i class="fas fa-phone" style="margin-right: 8px; color: #95a5a6;"></i> Tel: 0376-2311234</li>
                    </ul>
                </div>
            </div>
            
            <div style="border-top: 1px solid #dee2e6; margin-top: 30px; padding-top: 20px; display: flex; justify-content: space-between; align-items: center; flex-wrap: wrap; gap: 15px;">
                <div style="font-size: 1.4rem; display: flex; gap: 20px;">
                    <a href="https://www.facebook.com/ONGCLimited/" target="_blank" style="color: #3b5998;"><i class="fab fa-facebook"></i></a>
                    <a href="https://www.instagram.com/ongcofficial/" target="_blank" style="color: #e1306c;"><i class="fab fa-instagram"></i></a>
                    <a href="https://x.com/ONGC_" target="_blank" style="color: #000000;"><i class="fab fa-x-twitter"></i></a>
                    <a href="https://in.linkedin.com/company/oilandnaturalgascorporation" target="_blank" style="color: #0077b5;"><i class="fab fa-linkedin"></i></a>
                    <a href="https://www.youtube.com/c/ONGCLtd1/" target="_blank" style="color: #ff0000;"><i class="fab fa-youtube"></i></a>
                </div>
                <div style="color: #636e72; font-size: 0.85rem;">&copy; 2026 Oil and Natural Gas Corporation Limited. All Rights Reserved.</div>
            </div>
        </div>
    </footer>

    <script>
/* eslint-disable */
// @ts-ignore
const palette = ['#7a0616', '#2d3436', '#b2bec3'];

// @ts-ignore
new Chart(document.getElementById('indexingChart'), {
    type: 'line',
    data: { labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'], datasets: [{ data: [12, 19, 3, 5, 48, 53], borderColor: '#7a0616', fill: false, tension: 0.1 }] },
    options: { responsive: true, maintainAspectRatio: false, plugins: { legend: { display: false } }, scales: { x: { title: { display: true, text: 'Timeline (Month)', font: { weight: 'bold' } } }, y: { title: { display: true, text: 'Documents Indexed', font: { weight: 'bold' } }, beginAtZero: true } } }
});

// @ts-ignore
new Chart(document.getElementById('fileTypePieChart'), {
    type: 'doughnut',
    data: { labels: ['PDF', 'DOCX', 'XLSX'], datasets: [{ data: [60, 25, 15], backgroundColor: palette }] },
    options: { responsive: true, maintainAspectRatio: false, plugins: { legend: { position: 'right' } } }
});
</script>
</asp:Content>