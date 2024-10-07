<template>
  <div class="min-h-screen flex flex-col">
    <Navigation />
    <router-view class="flex-grow"></router-view>
    <Footer />
  </div>
</template>

<script setup lang="ts">
import Navigation from './components/Navigation.vue';
import Footer from './components/Footer.vue';

</script>

<style>
/* Global styles if any */
</style>
