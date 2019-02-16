<template>
  <div class="hello">
    <h1>{{ msg }}</h1>
    <h2>about this app</h2>
    <ul>
      <li>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda cum, debitis dolores, error eum facere illum in magnam natus neque nobis obcaecati perferendis quibusdam, quod rerum saepe totam ut voluptatibus.</p>
      </li>
      <li>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque cumque dicta et ipsa sit tempore voluptatibus? Aliquid culpa distinctio error illum neque ullam, vero. Deserunt dicta ea fugiat reprehenderit similique.</p>
      </li>
      <li>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Earum hic laborum magni, molestias nihil nulla odit omnis reiciendis! Accusamus ad aut ex natus nisi nobis quaerat rem rerum unde voluptates?</p>
      </li>
      <li>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. A dolore et explicabo laboriosam minima obcaecati quibusdam quisquam voluptatem. Architecto consequatur cum, ducimus eaque fugiat impedit magnam odio perspiciatis quis veritatis.</p>
      </li>
    </ul>
  </div>
</template>

<script>
export default {
  name: 'HelloWorld',
  data () {
    return {
      msg: 'Welcome to Your Vue.js App'
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h1, h2 {
  font-weight: normal;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
</style>
