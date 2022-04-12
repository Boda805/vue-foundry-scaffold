<script setup lang="ts">
defineProps<{
  msg: string;
}>();
</script>

<template>
  <div class="title">
    <h1 class="green">{{ msg }}</h1>
    <h3>
      <a target="_blank" href="https://vuejs.org/">Vue 3</a> +
      <a target="_blank" href="https://github.com/gakonst/foundry">Foundry</a>
    </h3>
  </div>
</template>

<style scoped>
h1 {
  font-weight: 500;
  font-size: 2.6rem;
  top: -10px;
}

h3 {
  font-size: 1.2rem;
}

a,
.green {
  text-decoration: none;
  background-color: hsla(0, 0%, 100%, 0.2);
  transition: 0.4s;
}

.title h1,
.title h3 {
  text-align: center;
}

@media (min-width: 1024px) {
  .title h1,
  .title h3 {
    text-align: left;
  }
}
</style>
