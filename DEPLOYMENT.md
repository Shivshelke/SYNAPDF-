# PdfCraft Web — Deployment Guide

PdfCraft Web is a client-side WebAssembly (WASM) PDF workbench running entirely in the browser. It does not require a heavy backend or database.

---

## 🚀 Quick Deployment Options

### Option 1: Vercel (Recommended)
1. Push this repository to GitHub/GitLab.
2. Go to [vercel.com](https://vercel.com) and click **"Add New Project"**.
3. Import your repository.
4. Set:
   - **Framework Preset:** Other
   - **Output Directory:** `dist/web`
   - **Build Command:** `npm run build` (or leave default if you commit the `dist/web` folder)
5. `vercel.json` is already included to configure proper `.wasm` MIME types and cache headers.

---

### Option 2: Netlify
1. Go to [netlify.com](https://netlify.com) and import your repo.
2. Build Settings:
   - **Publish directory:** `dist/web`
   - **Build command:** `npm run build`
3. `netlify.toml` and `_headers` are already included to handle WebAssembly headers.

---

### Option 3: Cloudflare Pages
1. Go to Cloudflare Dashboard > **Workers & Pages** > **Create application** > **Pages**.
2. Connect your Git repository.
3. Build Settings:
   - **Build output directory:** `dist/web`
   - **Build command:** `npm run build`

---

### Option 4: GitHub Pages
1. The `dist/web` folder contains all static files (`index.html`, `.wasm`, `.js`, `favicon.svg`).
2. You can deploy the contents of `dist/web` directly to the `gh-pages` branch.

---

### Option 5: Docker / Cloud Run / VPS (Container)
A multi-stage `Dockerfile` and `nginx.conf` are pre-configured:
```bash
# Build the Docker image
docker build -t pdfcraft-web .

# Run the container locally on port 8080
docker run -p 8080:80 pdfcraft-web
```
Open `http://localhost:8080` in your browser.

---

## 🛠 Local Development & Build

### Requirements
- **Rust** (`rustup target add wasm32-unknown-unknown`)
- **Trunk** (`cargo install trunk --locked` or `brew install trunk`)

### Commands
```bash
# Start local development server (with auto-reload)
npm run dev
# OR: cd apps/pdfcraft-web && trunk serve

# Build production static website (outputs to dist/web)
npm run build
# OR: cd apps/pdfcraft-web && trunk build --release

# Preview the built production site locally
npm run preview
```

---

## 📁 Key Files & Directories

| Path | Purpose |
|------|---------|
| `dist/web/` | **Ready-to-deploy static website bundle** (`index.html`, `.wasm`, `.js`, `favicon.svg`) |
| `apps/pdfcraft-web/` | Frontend WebAssembly entry point and `index.html` template |
| `crates/` | PDF core engines (rendering, editing, forms, annotations, UI) compiled into WebAssembly |
| `vercel.json` | Vercel deployment configuration |
| `netlify.toml` | Netlify deployment configuration |
| `Dockerfile` | Multi-stage Docker container build |
| `nginx.conf` | High-performance Nginx config with Gzip & WASM MIME headers |

