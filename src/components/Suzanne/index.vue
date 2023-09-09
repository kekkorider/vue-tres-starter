<template>
  <TresMesh :material="material" :geometry="nodes.Suzanne.geometry" />
</template>

<script setup>
import { onMounted, nextTick } from 'vue'
import { useRenderLoop } from '@tresjs/core'
import { ShaderMaterial } from 'three'
import { useGLTF } from '@tresjs/cientos'

import vertexShader from './vertex.glsl'
import fragmentShader from './fragment.glsl'

//
// Refs
//
const { onLoop } = useRenderLoop()
const { nodes } = await useGLTF('/suzanne.glb')

// Dispose the default material
nodes.Suzanne.material.dispose()

const material = new ShaderMaterial({
  vertexShader,
  fragmentShader,
  uniforms: {
    u_Time: { value: 0 }
  }
})

//
// Lifecycle
//
onMounted(async () => {
  await nextTick()

  onLoop(({ elapsed }) => {
    material.uniforms.u_Time.value = elapsed
  })
})
</script>
