<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AWS EC2 Deployment Demo</title>
    <!-- Importing a clean pixel-art font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Press+Start+2P&display=swap" rel="stylesheet">
    
    <style>
        :root {
            --bg-color: #f3edd7;      /* Warm custard/vanilla background */
            --card-bg: #fffdf6;       /* Soft cream container background */
            --text-main: #3d2612;     /* Rich chocolate brown for high-contrast text */
            --text-muted: #7a5c43;    /* Muted sepia brown for secondary text */
            --pixel-brown: #52341a;   /* Darker brown for structural outlines */
            --pixel-link: #b85c00;    /* Warm amber-orange for links */
            --pixel-green: #2b9944;   /* Balanced retro green for the live badge */
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            image-rendering: pixelated;
        }

        body {
            font-family: 'Press Start 2P', monospace;
            background-color: var(--bg-color);
            color: var(--text-main);
            line-height: 1.8;
            padding: 2rem 1rem;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            font-size: 12px;
        }

        .container {
            width: 100%;
            max-width: 580px;
            background: var(--card-bg);
            padding: 3rem 2rem;
            
            /* Authentic NES/Retro Pixel Border styling using theme colors */
            border: 4px solid var(--pixel-brown);
            box-shadow: 
                8px 8px 0px 0px var(--pixel-brown),
                inset -4px -4px 0px 0px #eadeca;
            position: relative;
        }

        .status-badge {
            display: inline-flex;
            align-items: center;
            gap: 0.75rem;
            border: 2px solid var(--pixel-brown);
            padding: 0.5rem 0.75rem;
            font-size: 10px;
            font-weight: bold;
            color: var(--pixel-green);
            margin-bottom: 2rem;
            box-shadow: 4px 4px 0px var(--pixel-brown);
            background: var(--card-bg);
        }

        /* Blocky pixel pulse effect */
        .status-pulse {
            width: 8px;
            height: 8px;
            background: var(--pixel-green);
            box-shadow: 0 0 0 2px var(--pixel-brown);
            animation: pixelPulse 1.2s infinite steps(2);
        }

        @keyframes pixelPulse {
            0%, 100% { opacity: 1; transform: scale(1); }
            50% { opacity: 0.3; transform: scale(0.9); }
        }

        h1 {
            font-size: 20px;
            margin-bottom: 1.5rem;
            line-height: 1.4;
            color: var(--text-main);
            text-shadow: none; /* No shadow layers for completely flat, crisp text */
        }

        .lead {
            color: var(--text-muted);
            font-size: 11px;
            margin-bottom: 2.5rem;
            line-height: 1.6;
        }

        .social-section {
            border-top: 4px dashed var(--pixel-brown);
            padding-top: 2rem;
        }

        .social-section h3 {
            font-size: 11px;
            margin-bottom: 1rem;
            color: var(--text-muted);
        }

        .text-link {
            display: inline-block;
            color: var(--pixel-link);
            text-decoration: none;
            word-break: break-all;
            line-height: 1.4;
            font-size: 10px;
        }

        .text-link:hover {
            color: var(--text-main);
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <div class="container">
        <div class="status-badge">
            <span class="status-pulse"></span>
            LIVE ON EC2
        </div>
	<div class="status-badge">
            <span class="status-pulse"></span>
            LIVE ON CODEPIPELINE
        </div>

        <h1>Welcome to my Web App!</h1>
        <p class="lead">This page is successfully served from an Amazon EC2 instance.</p>

        <div class="social-section">
            <h3>Connect With Me</h3>
            <a href="https://github.com/solid-state-dan" target="_blank" class="text-link">https://github.com/solid-state-dan</a>
        </div>
    </div>

</body>
</html>
