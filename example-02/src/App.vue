<template>
  <div>
    <p v-if="msg.length > 0">
      {{msg2}}
    </p>
    <p v-else>
      no text
    </p>
    <input type="text" v-model="msg">
    <button @click="clear()">clear</button>
  </div>
</template>

<script>
export default {
  data () {
    return {
      msg: 'Hello World!'
    }
  },
  methods: {
    clear () {
      this.msg = ''
    }
  },
  created () {
    var that = this
    $.getJSON('http://www.geonames.org/postalCodeLookupJSON?postalcode=10504&country=US&callback=?', {}, function (json) {
      console.log(json)
      that.msg2 = json.postalcodes[0].adminName1 + ":" + json.postalcodes[0].lat + "," + json.postalcodes[0].lng
    })
  }
}
</script>
