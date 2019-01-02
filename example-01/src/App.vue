<template>
  <div>
    <header1></header1>
    <p v-if="msg.length > 0">
      {{ msg }}
    </p>
    <p v-else>
      no text
    </p>
    <input type="text" v-model="msg">
    <button @click="clear()">clear</button>
  </div>
</template>

<script>
import header1 from './components/header1'

export default {
  components: {
    header1
  },
  data () {
    return {
      msg: "さんぷる"
    }
  },
  methods: {
    clear () {
      this.msg = ''
    }
  }
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
