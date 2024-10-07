<template>
  <footer class="bg-gray-100 text-center py-4">
    <div class="mb-2">
      <a
        href="https://github.com/yourusername"
        target="_blank"
        rel="noopener noreferrer"
        class="text-gray-600 hover:text-indigo-600 mx-2"
      >
        <GiftIcon class="h-6 w-6 inline" />
      </a>
      <a
        href="https://linkedin.com/in/yourusername"
        target="_blank"
        rel="noopener noreferrer"
        class="text-gray-600 hover:text-indigo-600 mx-2"
      >
        <LinkIcon class="h-6 w-6 inline" />
      </a>
      <!-- Add more social icons as needed -->
    </div>
    <p class="text-gray-600">&copy; {{ currentYear }} MyPortfolio. All rights reserved.</p>
  </footer>
</template>

<script setup lang="ts">
import { ref } from 'vue';
import { GiftIcon, LinkIcon } from '@heroicons/vue/24/solid';

const currentYear = ref<number>(new Date().getFullYear());
</script>

<style scoped>
/* Add any scoped styles if needed */
</style>
