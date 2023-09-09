# Vue 3 + TresJS starter

![Short gif demonstrating how the starter works](./.github/demo.gif 'Demo GIF')

## What's included

### 1. Demo GLTF model

The `<Suzanne />` component in `/components/Suzanne` loads a custom GLTF model and uses a custom `ShaderMaterial`.

### 2. Box with click handler

The `<SampleBox />` component rotates and floats on every tick and has click/hover handlers.

### 3. GSAP as a Vue Composable

GSAP is included as a composable and can be included in any component the following way:

```js
import { useGSAP } from '@/composables/useGSAP'

const { gsap } = useGSAP()
```

The composable file is located in `/src//composables/useGSAP.js`.

### 4. Pinia

[Pinia](https://pinia.vuejs.org/) is already included and configured.

The states are stored in the `/src//stores` folder.

## Setup

Make sure to install the dependencies:

```bash
# yarn
yarn install

# npm
npm install

# pnpm
pnpm install
```

## Development Server

Start the development server on `http://localhost:3000`

```bash
# yarn
yarn dev

# npm
npm run dev

# pnpm
pnpm run dev
```

## Production

Build the application for production:

```bash
# yarn
yarn build

# npm
npm run build

# pnpm
pnpm run build
```

Locally preview production build:

```bash
# yarn
yarn preview

# npm
npm run preview

# pnpm
pnpm run preview
```
