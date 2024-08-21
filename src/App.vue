<template>
  <TresCanvas v-bind="gl" window-size>
    <TresPerspectiveCamera :position="[0, 1.7, 7]" :look-at="[0, 0, 0]" />
    <OrbitControls :enabled="config.orbitControlsEnabled" />

    <SampleBox :position="[-2, 0, 0]" />

    <Suspense>
      <Suzanne :position="[2, 0, 0]" v-bind="suzanneProps" />
    </Suspense>

    <Suspense>
      <StatsGl />
    </Suspense>
  </TresCanvas>

  <Credits />
</template>

<script setup>
import { onMounted, nextTick, shallowReactive } from 'vue'
import { OrbitControls, StatsGl } from '@tresjs/cientos'
import { Pane } from 'tweakpane'

import SampleBox from '@/components/SampleBox.vue'
import Suzanne from '@/components/Suzanne/index.vue'
import Credits from '@/components/Credits.vue'

import { useSampleStore } from '@/stores/sample'

//
// Refs / States
//
const sampleStore = useSampleStore()

const config = shallowReactive({
  orbitControlsEnabled: true
})

const gl = shallowReactive({
  clearColor: '#1C1C1C',
  powerPreference: 'high-performance',
})

const suzanneProps = shallowReactive({
  visible: true
})

//
// Lifecycle
//
onMounted(async () => {
  await nextTick()

  // Do stuff on mount
  createDebugPane()
})

// onBeforeRender(({ elapsed }) => {
  // Do stuff
// })

//
// Methods
//
function createDebugPane() {
  const pane = new Pane()

  pane.title = 'Configuration'

  pane.addBinding(gl, 'clearColor', { label: 'Clear Color', colorMode: 'hex' })

  pane.addBlade({
    view: 'separator'
  })

  pane.addBinding(config, 'orbitControlsEnabled', {
    label: 'Orbit Controls enabled'
  })

  pane.addBinding(suzanneProps, 'visible', {
    label: 'Suzanne visible'
  })

  pane.addBlade({
    view: 'separator'
  })

  pane.addButton({ title: 'Increase counter (Pinia)' }).on('click', () => {
    sampleStore.increment()
  })

  pane.addButton({ title: 'Decreate counter (Pinia)' }).on('click', () => {
    sampleStore.decrement()
  })

  pane.addBinding(sampleStore, 'count', {
    label: 'Pinia counter',
    readonly: true
  })
}
</script>
