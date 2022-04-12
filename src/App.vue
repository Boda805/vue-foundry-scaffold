<script setup lang="ts">
import MainContent from "./components/MainContent.vue";
import Header from "./components/Header.vue";
</script>

<template>
  <header>
    <Header />
  </header>
  <main>
    <div class="main-content-wrapper">
      <MainContent />
    </div>
  </main>
</template>

<style>
@import "./assets/base.css";
#app {
  max-width: 1280px;
  margin: 0 auto;
  padding: 2rem;

  font-weight: normal;
}
.main-content-wrapper {
  display: flex;
  justify-content: center;
}
</style>
