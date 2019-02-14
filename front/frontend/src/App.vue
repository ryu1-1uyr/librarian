<template>
  <div id="app">
    <div>
      <ul>
        <li>
          <a href="#/"><img style="max-width: 50px" src="./assets/logo.png"></a>
          <a href="#/register">登録</a>
          <a href="#/show">閲覧</a>
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
  }
  ul{
    list-style: none;
  }
</style>
