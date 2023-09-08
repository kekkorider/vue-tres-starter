import './assets/main.css'

import { createApp } from 'vue'
import { createPinia } from 'pinia'
import App from './App.vue'
import Tres from '@tresjs/core'

const app = createApp(App)

app.use(createPinia())
app.use(Tres)

app.mount('#app')
