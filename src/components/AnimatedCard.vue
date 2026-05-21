<template>
  <div 
    class="card group"
    @mouseenter="handleHover(true)"
    @mouseleave="handleHover(false)"
  >
    <div class="relative overflow-hidden">
      <!-- Subtle gradient overlay on hover -->
      <div 
        class="absolute inset-0 bg-gradient-to-br from-accent/5 to-transparent opacity-0 group-hover:opacity-100 transition-opacity duration-500 pointer-events-none" 
      />
      
      <slot />
    </div>
  </div>
</template>

<script setup lang="ts">
const emit = defineEmits(['hover'])

const handleHover = (isHovered: boolean) => {
  emit('hover', isHovered)
}
</script>

<style scoped>
.card {
  will-change: transform;
}
</style>