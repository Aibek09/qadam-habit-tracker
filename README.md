<div align="center">
  <img src="public/icon-512.png" width="112" alt="QADAM logo" />
  <h1>QADAM</h1>
  <p><strong>One day. One step.</strong></p>
  <p>A focused habit tracker for daily discipline, measurable progress, and one-off priorities.</p>
</div>

---

## Overview

QADAM is a responsive, installable habit tracker built around a simple idea: meaningful progress is the result of small steps repeated every day.

The app combines permanent daily habits with **Meteors** — one-off tasks that can be added for a specific day. Every habit can be tracked as a measurable value rather than only completed or skipped, making the reports honest and useful.

**Live application:** [qadam-habit-tracker.sagimbajajbek09.chatgpt.site](https://qadam-habit-tracker.sagimbajajbek09.chatgpt.site)

> The hosted application is private and uses ChatGPT sign-in. The repository contains the complete application source.

## Features

- Permanent habits that automatically appear every day
- One-day **Meteor** tasks for changing priorities
- Quantitative progress tracking: pages, minutes, repetitions, prayers, or custom units
- One-tap completion for binary habits
- Daily completion ring with a weighted percentage
- Weekly and monthly reports
- Goal, actual result, and remaining deficit for every habit
- Editable and removable tasks
- Responsive layouts for iPhone and desktop
- Full Russian and English interface with a persistent language switcher
- Installable web-app experience on iOS and macOS
- Durable cloud persistence with Cloudflare D1
- Private authentication through ChatGPT
- WebMCP action for structured task creation

## Product model

| Type | Purpose | Example |
| --- | --- | --- |
| Habit | Repeats every day | Read 20 pages |
| Meteor | Exists on one selected day | Prepare tomorrow's presentation |
| Progress entry | Records the actual result | 18 of 20 pages |

Daily progress is calculated from the capped completion ratio of every task:

`completion = min(actual / target, 1)`

This means partial work counts, while exceeding a target does not distort the day’s percentage.

## Technology

- **React 19** and **TypeScript**
- **Vinext / Vite** application runtime
- **Tailwind CSS 4** for styling
- **Cloudflare Workers** for the hosted runtime
- **Cloudflare D1** for persistent structured data
- **Drizzle ORM** and generated SQL migrations
- **Lucide React** for interface icons
- **Web App Manifest** and Apple touch icons for installation

## Project structure

```text
.
├── app/
│   ├── api/tracker/route.ts   # Habit and progress API
│   ├── globals.css            # QADAM design system and responsive UI
│   ├── layout.tsx             # Metadata, manifest, and app shell
│   └── page.tsx               # Main tracker and reporting experience
├── db/
│   ├── index.ts               # D1 database connection
│   └── schema.ts              # Habit and progress-entry schema
├── drizzle/                   # Versioned database migrations
├── public/
│   ├── apple-touch-icon.png   # iOS home-screen icon
│   ├── favicon.svg            # Browser favicon
│   ├── icon-512.png           # High-resolution PWA icon
│   └── manifest.webmanifest   # Installable app metadata
├── scripts/                   # Portable development and build tooling
└── vite.config.ts             # Vinext and Cloudflare configuration
```

## Getting started

### Requirements

- Node.js 22.13 or newer
- npm

### Install and run

```bash
npm ci
npm run dev
```

The local development server starts at [http://localhost:5173](http://localhost:5173).

### Production build

```bash
npm run build
npm run start
```

### Database migrations

After changing `db/schema.ts`, generate a migration:

```bash
npm run db:generate
```

Review and commit every generated SQL migration under `drizzle/`.

## Installation

### iPhone

1. Open the hosted QADAM URL in Safari.
2. Tap **Share**.
3. Select **Add to Home Screen**.
4. Keep **Open as Web App** enabled and tap **Add**.

### macOS

1. Open QADAM in Safari.
2. Choose **File → Add to Dock**.
3. Confirm the name **QADAM**.

Both installations open the same cloud application and use the same persisted data after sign-in.

## Data and privacy

QADAM stores habits and progress entries in the application’s D1 database. The hosted deployment is owner-private and requires ChatGPT authentication. No analytics, advertising trackers, or third-party marketing SDKs are included in the application code.

## Design principles

- The primary action is visible immediately.
- Partial progress is more truthful than a binary streak.
- One-off work stays separate from recurring habits.
- Reports show deficits in real units, not only abstract percentages.
- Mobile and desktop experiences expose the same capabilities.

## Scripts

| Command | Description |
| --- | --- |
| `npm run dev` | Start the local development server |
| `npm run build` | Build the Cloudflare-compatible application |
| `npm run start` | Preview the production Worker locally |
| `npm run db:generate` | Generate Drizzle migrations |
| `npm run lint` | Run ESLint |

---

<div align="center">
  <strong>QADAM</strong><br />
  One day. One step.
</div>
