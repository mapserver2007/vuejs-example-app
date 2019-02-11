<template>
  <div>
    <div
      v-for="image in images"
      :key="image.url">
      <img v-bind:src="image.url">
    </div>
  </div>
</template>

<style>
</style>

<script>
import Axios from 'axios'
export default {
  data () {
    return {
      images: []
    }
  },
  created () {
    const self = this
    Axios.get('http://localhost:5000/images/渡部優衣')
      .then((res) => {
        console.log(res)
        self.images = res.data
      })
  },
  methods: {
    async getImages () {
      this.images = ['owata']
    }
  }
}
</script>
