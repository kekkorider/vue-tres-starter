<template>
  <TresCanvas window-size>
    <TresPerspectiveCamera :position="[0, 1.7, 7]" :look-at="[0, 0, 0]" />
    <OrbitControls />

    <SampleBox :position="[-2, 0, 0]" />

    <Suspense>
      <Suzanne :position="[2, 0, 0]" />
    </Suspense>
  </TresCanvas>
</template>

<script setup>
import { useRenderLoop } from '@tresjs/core'
import { OrbitControls } from '@tresjs/cientos'

import SampleBox from '@/components/SampleBox.vue'
import Suzanne from '@/components/Suzanne/index.vue'

//
// Refs / States
//
const { onLoop } = useRenderLoop()

//
// Lifecycle
//
onLoop(({ elapsed }) => {
  // Do stuff
})
</script>
