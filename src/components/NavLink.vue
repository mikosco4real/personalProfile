<template>
  <RouterLink
    :to="to"
    class="nav-link relative px-5 py-2.5 text-sm font-medium text-text-secondary hover:text-text-primary rounded-xl transition-all duration-200 flex items-center gap-2 group"
    :class="{ 'text-text-primary font-semibold bg-bg-tertiary': isActive }"
    @click="handleClick"
  >
    {{ label }}
    <span 
      v-if="isActive" 
      class="absolute bottom-1.5 left-5 right-5 h-px bg-accent"
    />
  </RouterLink>
</template>

<script setup lang="ts">
import { computed } from 'vue'
import { useRoute } from 'vue-router'

const props = defineProps<{
  to: string
  label: string
}>()

const emit = defineEmits(['click'])

const route = useRoute()
const isActive = computed(() => route.path === props.to)

const handleClick = () => {
  emit('click')
}
</script>

<style scoped>
.nav-link:hover {
  background-color: var(--color-bg-tertiary);
}
</style>