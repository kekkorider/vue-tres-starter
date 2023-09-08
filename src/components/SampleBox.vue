<template>
  <TresMesh
    ref="boxRef"
    @click="onBoxClick"
    @pointer-enter="onPointerenter"
    @pointer-leave="onPointerleave"
  >
    <TresBoxGeometry :args="[1.5, 1.5, 1.5]" />
    <TresMeshNormalMaterial />
  </TresMesh>
</template>

<script setup>
import { shallowRef, onMounted, nextTick } from 'vue'
import { useRenderLoop } from '@tresjs/core'

import { useGSAP } from '@/composables/useGSAP'

//
// Refs
//
const { gsap } = useGSAP()
const { onLoop } = useRenderLoop()

const boxRef = shallowRef('boxRef')

//
// Lifecycle
//
onMounted(async () => {
  await nextTick()

  onLoop(({ elapsed }) => {
    boxRef.value.rotation.y += 0.01
    boxRef.value.rotation.z += 0.0074
    boxRef.value.position.y = Math.sin(elapsed) * 0.5
  })
})

//
// Methods
//
function onBoxClick(event) {
  if (gsap.isTweening(event.object.scale)) return

  gsap.to(event.object.scale, {
    x: 1.5,
    y: 1.5,
    z: 1.5,
    repeat: 1,
    yoyo: true,
    duration: 1,
    ease: 'elastic.inOut(3.5, 1)'
  })
}

function onPointerenter() {
  document.body.style.cursor = 'pointer'
}

function onPointerleave() {
  document.body.style.cursor = null
}
</script>
