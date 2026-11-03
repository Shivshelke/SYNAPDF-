# SYNAPDF — Web-based PDF Workbench

<p align="center">
  <img src="assets/app-icon/pdfcraft.svg" width="100" height="100" alt="SYNAPDF Logo">
</p>

<p align="center">
  <b>Complete, high-performance client-side PDF Workbench running in the browser via WebAssembly (Rust).</b><br>
  Read, organize, annotate, redact, combine, split, and edit PDFs locally — 100% private with zero cloud uploads.
</p>

<p align="center">
  <a href="https://github.com/Shivshelke/SYNAPDF-"><img src="https://img.shields.io/badge/GitHub-SYNAPDF-blue?style=flat-square&logo=github" alt="GitHub"></a>
  <img src="https://img.shields.io/badge/Platform-Web%20%2F%20WASM-orange?style=flat-square" alt="Platform">
  <img src="https://img.shields.io/badge/Engine-Rust-red?style=flat-square" alt="Rust">
  <img src="https://img.shields.io/badge/Privacy-100%25%20Client--Side-green?style=flat-square" alt="Privacy">
  <img src="https://img.shields.io/badge/License-MIT%20OR%20Apache--2.0-lightgrey?style=flat-square" alt="License">
</p>

---

## ✨ Features

- 📑 **Fast PDF Viewer:** Crisp, GPU-accelerated rendering powered by WebGL2 and WebGPU.
- ✂️ **Organize & Edit:** Reorder, rotate, delete, insert, split, extract, and combine PDF pages seamlessly.
- ✏️ **Annotations & Comments:** Highlight, underline, strikethrough, draw ink, add stamps, callouts, and notes.
- 📝 **Form Filling & Signing:** Fill interactive AcroForms, sign documents, and manage form values.
- 🛡 **Security & Redaction:** Black-out confidential data permanently and inspect document permissions.
- 🔒 **100% Client-Side Privacy:** Your PDF files never leave your device or browser. No accounts, no tracking, and no external server uploads.

---

## 🚀 Instant Deployment

SYNAPDF is pre-compiled and ready for 1-click deployment on static hosts:

### Deploy to Vercel
1. Import repository `https://github.com/Shivshelke/SYNAPDF-` in Vercel.
2. Output Directory: `dist/web` (Pre-configured in `vercel.json`).
3. Deploy!

### Deploy to Netlify / Cloudflare Pages
- **Publish Directory:** `dist/web`
- Headers and MIME types are pre-configured in `_headers` and `netlify.toml`.

### Deploy with Docker
```bash
docker build -t synapdf .
docker run -p 8080:80 synapdf
```

---

## 💻 Local Development

### Run Localhost Preview
```bash
python3 -m http.server 8080 --directory dist/web
```
Open **`http://localhost:8080`** in your browser.

### Rebuild WebAssembly
```bash
# Needs trunk and rust wasm32-unknown-unknown target
cd apps/pdfcraft-web
trunk build --release
```

---

## 👤 Maintainer

Created & Maintained by **Shivam Shelke** ([@Shivshelke](https://github.com/Shivshelke)).

## 📄 License

This project is licensed under the [MIT License](LICENSE-MIT) or [Apache 2.0 License](LICENSE-APACHE).
