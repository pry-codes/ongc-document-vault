<%@ Page Title="About Us - ONGC" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="ongc_webapp.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .about-page-wrapper { max-width: 1300px; margin: 15px auto 40px auto; padding: 0 40px; }
        .about-main-title { color: #1a202c; font-weight: 800; font-size: 2.6rem; margin-bottom: 25px; position: relative; padding-bottom: 12px; }
        .about-main-title::after { content: ""; position: absolute; left: 0; bottom: 0; width: 60px; height: 4px; background-color: #7a0616; border-radius: 2px; }

        .about-asset-image { width: 100%; height: auto; max-height: 400px; object-fit: cover; border-radius: 8px; margin-bottom: 35px; box-shadow: 0 4px 15px rgba(0,0,0,0.06); }
        .about-editorial-text { color: #2d3748; font-size: 1.1rem; line-height: 1.8; margin-bottom: 25px; text-align: justify; }

        /* Interactive Sidebar Grid */
        .sidebar-grid { display: grid; grid-template-columns: 1fr; gap: 20px; position: sticky; top: 20px; }
        .pillar-card { 
            padding: 20px; border: 1px solid #f0e6db; border-radius: 10px; 
            background: #fffdfa; transition: all 0.3s ease;
            cursor: default;
        }
        .pillar-card:hover { 
            transform: translateY(-5px); 
            border-color: #7a0616; 
            box-shadow: 0 8px 20px rgba(122, 6, 22, 0.15); 
        }
        .pillar-card h3 { color: #7a0616; font-size: 1.1rem; margin-bottom: 8px; font-weight: 700; }
        .pillar-card p { font-size: 0.9rem; color: #4a5568; line-height: 1.5; margin: 0; }
        
        .tech-footer { margin-top: 30px; padding: 15px; background: #f8fafc; border-left: 4px solid #7a0616; font-size: 0.9rem; font-style: italic; }
    </style>

    <div class="about-page-wrapper">
        <div class="row g-5">
            
            <div class="col-lg-8 pe-lg-5">
                <h1 class="about-main-title">About Us</h1>
                <img src="rig.jpg" alt="ONGC Offshore Production Rig" class="about-asset-image" />
                
                <p class="about-editorial-text">
                    The <b>ONGC Document Vault</b> is a <b>centralized document management platform</b> built to simplify the storage, organization, and retrieval of critical exploration and production data. Designed with a strong focus on <b>scalability, security, and performance</b>, the system ensures that important operational documents remain structured, accessible, and protected at every stage of the workflow.
                </p>
                <p class="about-editorial-text">
                    By integrating <b>secure authentication, optimized database architecture, and intelligent indexing mechanisms</b>, the platform minimizes data redundancy and improves information accessibility across departments. The project emphasizes <b>efficient backend engineering</b> and streamlined data handling to support faster decision making and smoother operational processes.
                </p>
                <p class="about-editorial-text">
                    More than just a storage solution, the <b>ONGC Document Vault</b> represents a practical approach to modern <b>enterprise data management</b>, combining reliability, clean system design, and user focused functionality to strengthen the digital backbone of energy sector documentation.
                </p>
                
                <div class="tech-footer">
                    <strong>System Architecture:</strong> Optimized for enterprise grade relational database engines with clustered index support for high concurrency environments.
                </div>
            </div>

            <div class="col-lg-4">
                <div class="sidebar-grid">
                    <div class="pillar-card">
                        <h3>Data Integrity</h3>
                        <p>Ensures secure and consistent data handling through ACID compliant transactions and real time validation mechanisms.</p>
                    </div>
                    <div class="pillar-card">
                        <h3>Scalable Architecture</h3>
                        <p>Built to efficiently manage large enterprise datasets with optimized indexing and high speed retrieval performance.</p>
                    </div>
                    <div class="pillar-card">
                        <h3>Audit and Traceability</h3>
                        <p>Maintains complete document history with detailed activity logs for transparency, monitoring, and compliance.</p>
                    </div>
                    <div class="pillar-card">
                        <h3>Seamless Integration</h3>
                        <p>Designed to work smoothly with existing enterprise platforms and internal workflows without creating data silos.</p>
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>