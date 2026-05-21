<template>
  <div class="min-h-screen flex flex-col bg-bg-primary text-text-primary">
    <Navigation />
    <main class="flex-grow">
      <router-view />
    </main>
    <Footer />
  </div>
</template>

<script setup lang="ts">
import Navigation from './components/Navigation.vue'
import Footer from './components/Footer.vue'
</script>