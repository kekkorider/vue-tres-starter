import { defineStore } from 'pinia'

export const useSampleStore = defineStore('sampleStore', {
  state: () => ({
    count: 0
  }),

  actions: {
    increment() {
      this.count++
    },

    decrement() {
      this.count--
    }
  },

  getters: {
    getCount() {
      return this.count
    },
  },
})
