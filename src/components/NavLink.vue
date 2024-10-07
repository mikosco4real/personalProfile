<template>
  <RouterLink
    :to="to"
    class="relative text-gray-800 hover:text-indigo-600 px-3 py-2 rounded-md text-sm font-medium transition duration-300"
    :class="{ 'text-indigo-600 font-semibold': isActive }"
    @click="onClick"
  >
    {{ label }}
    <span v-if="isActive" class="absolute inset-x-0 bottom-0 h-1 bg-indigo-600 rounded-full"></span>
  </RouterLink>
</template>

<script setup lang="ts">
import { computed } from 'vue';
import { useRoute } from 'vue-router';

const props = defineProps<{
  to: string;
  label: string;
}>()

const route = useRoute();
const isActive = computed<boolean>(() => route.path === props.to)
const onClick = () => {
  // Optionally emit an event to close the mobile menu
  // This can be implemented if the Navigation component handles it
};
</script>

<style scoped>
/* Add any scoped styles if needed */
</style>
