<template>
  <TresCanvas window-size>
    <TresPerspectiveCamera />
    <OrbitControls />

    <TresMesh ref="donutRef">
      <TresTorusGeometry :args="[1, 0.5, 16, 32]" />
      <TresMeshNormalMaterial color="orange" />
    </TresMesh>
  </TresCanvas>
</template>

<script setup>
import { useRenderLoop } from '@tresjs/core'
import { OrbitControls } from '@tresjs/cientos'
import { shallowRef } from 'vue'

//
// Refs / States
//
const { onLoop } = useRenderLoop()
const donutRef = shallowRef(null)

//
// Lifecycle
//
onLoop(({ elapsed }) => {
  donutRef.value.rotation.y = elapsed * 0.652
  donutRef.value.rotation.x = elapsed * 0.442
})
</script>

<style scoped></style>
