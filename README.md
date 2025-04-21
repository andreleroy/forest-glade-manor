## 🏡 Forest Glade Manor House Site

A beautifully minimal and emotionally warm site to showcase a house for sale — inspired by nature, peace, and the lush forest aesthetic of Costa Rica. Built with Next.js, Tailwind CSS v4, and a design system powered by CSS variables.

---

## ✨ Tech Stack

- [Next.js 14](https://nextjs.org/)
- [Tailwind CSS v4](https://tailwindcss.com/)
- TypeScript
- PostCSS (ESM config)
- Google Fonts (Lora, Marcellus, Manrope)
- Docker + Docker Compose

---

## ⚙️ Running Locally with Docker

> No need to install Node or npm on your host — everything runs inside a container.

### 1. Start the dev server:

```bash
docker compose up --build
```

### 2. Dev commands

Use the helper script to run commands inside the container:

```bash
./dev.sh npm run format      # Run Prettier
./dev.sh npm install         # Install deps
```

## 🧪 Tailwind Design System

This project uses Tailwind v4 with @theme to define design tokens in globals.css.

Example:

```css
@theme {
  --color-primary: #1e352f; /* Deep Jungle Green */
  --color-surface: #3f5d47; /* Forest Moss */
  --color-accent: #6e8b55; /* Palm Leaf */
  --color-background: #f2f1eb; /* Cloud Cream */
  --color-wood: #a47c48; /* Warm Wood */
  --color-highlight: #d94d3a; /* Guava Red */
}
```

Usage in components:

```tsx
<div className="bg-background text-primary">Welcome to your forest retreat 🌿</div>
```

## 🧑‍🎨 Fonts

Loaded from Google Fonts in `layout.tsx`:

`Lora` – body text (warm serif)

`Marcellus` – headlines (elegant serif)

`Manrope` – modern UI fallback (clean sans)
