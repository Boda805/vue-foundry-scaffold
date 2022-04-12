<script setup lang="ts">
import Wallet from "./Wallet.vue";
import Title from "./Title.vue";
</script>

<template>
  <header>
    <div class="wrapper">
      <div></div>
      <Title msg="Ethereum App Scaffold" />
      <Wallet />
    </div>
  </header>
</template>

<style scoped>
header .wrapper {
  display: flex;
  flex-direction: row;
  justify-content: space-between;
}
</style>
