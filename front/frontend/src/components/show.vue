<template>
  <div class="hello">
    <h1>{{ msg }}</h1>

    <input type="button" @click="this.getNakamariAPI" style="background-color: antiquewhite" value="取得！" />

    <div v-for="book of books">
      <div v-for="boo of book" class="bookelem">
        <p>名前:{{boo.title}}</p>
        <p>本の値段:{{boo.price}}</p>
        <p>読んだページ数:{{boo.read_pages}} / {{boo.pages}}</p>

      </div>
    </div>

  </div>
</template>

<script>
  import axios from 'axios'

  export default {
    name: 'show',
    data () {
      return {
        msg: 'show vue components',
        url: ':3000/books',
        address: '18.188.221.217',

        books : []
      }
    },
    methods : {
      async getNakamariAPI () {
        const headers = {'Content-Type': 'application/json;charset=UTF-8', 'Access-Control-Allow-Origin': '*',};
        const response = await axios.get('http://18.188.221.217:3000/books',{headers})
        await console.log(response.data[0])
        await this.books.push(response.data)

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
  .bookelem{
    background-color: rgba(219,76,66,0.5);
    max-width: 80%;
    text-align: center;
    margin: 5px;
    border-radius: 50px;
  }
</style>
