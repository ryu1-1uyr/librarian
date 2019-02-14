<template>
  <div id="app">
    <div>
      <ul>
        <li>
          <a href="#/"><img style="max-width: 50px" src="./assets/name.png"></a>
          <a href="#/register"><img src="./assets/pen.png" style="max-width: 50px"></a>
          <a href="#/show"><img src="./assets/note.png" style="max-width: 50px"></a>
        </li>
      </ul>
    </div>

    <router-view/>

  </div>
</template>

<script>
export default {
  name: 'App'
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
  li{
    list-style: none;
    text-decoration: none;
  }
  ul{
    list-style: none;
    text-decoration: none;
  }
  a{
    text-decoration: none;
    padding: 10px;
  }
</style>
