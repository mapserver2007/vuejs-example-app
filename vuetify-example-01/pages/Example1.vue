<template>
  <v-layout>
    <v-flex text-xs-center>
      <img src="/v.png" alt="Vuetify.js" class="mb-5">
      <blockquote class="blockquote">
        <footer>
          <small>
            <em>aaaaaa</em>
          </small>
        </footer>
      </blockquote>
    </v-flex>
  </v-layout>
</template>

<script>
export default {
  components: {
  },
  data() {
    return {
        host: ''
    };
  },
  async asyncData({ app }) {
    const response = await app.$axios.$get('https://httpbin.org/get');
    return { host: response.headers.Host };
  }
}
</script>