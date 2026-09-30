---
name: awesome-design
description: Library of 74 real-world design systems as DESIGN.md files (Stripe, Linear, Apple, Vercel, Notion, Airbnb, Figma, ...) with colors, typography, spacing, components and rules. Use when the user wants a UI "like <brand>", needs a design reference or design-system starting point, or asks to create a DESIGN.md for the project.
---

# Awesome Design (DESIGN.md library)

Curated DESIGN.md analyses of real websites, from [VoltAgent/awesome-design-md](https://github.com/VoltAgent/awesome-design-md) (MIT). DESIGN.md is a plain-text design system document that agents read to generate visually consistent UI.

## Available references

Each file lives at `design-md/<name>.md`:

airbnb, airtable, apple, binance, bmw-m, bmw, bugatti, cal, claude, clay, clickhouse, cohere, coinbase, composio, cursor, dell-1996, elevenlabs, expo, ferrari, figma, framer, hashicorp, hp, ibm, intercom, kraken, lamborghini, linear.app, lovable, mastercard, meta, minimax, mintlify, miro, mistral.ai, mongodb, nike, nintendo-2001, notion, nvidia, ollama, opencode.ai, pinterest, playstation, posthog, raycast, renault, replicate, resend, revolut, runwayml, sanity, sentry, shopify, slack, spacex, spotify, starbucks, stripe, supabase, superhuman, tesla, theverge, together.ai, uber, vercel, vodafone, voltagent, warp, webflow, wired, wise, x.ai, zapier

## How to use

1. Pick the reference(s) closest to the requested look. If the user names a brand, use it; otherwise suggest 2-3 fitting options and why.
2. Read the chosen `design-md/<name>.md` fully. The YAML frontmatter holds tokens (colors, typography, radii, spacing); the body describes components, layout and do/don't rules.
3. Apply the tokens and rules when building UI: map colors/type/spacing to CSS variables or the project's theme config first, then build components against them.
4. To give the project a persistent design system, copy or adapt the file to `DESIGN.md` in the project root and adjust it to the project's brand. Never ship another company's logo, name or proprietary fonts; use the reference for design language only and substitute open fonts where needed.
5. Combine with the `design-taste-frontend` skill for direction and `web-design-guidelines` for auditing the result.
