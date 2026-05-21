<template>
  <span 
    class="skill-badge cursor-default select-none"
    :class="{ 'active': active }"
    @click="handleClick"
  >
    <span v-if="icon" class="mr-1.5">{{ icon }}</span>
    {{ label }}
  </span>
</template>

<script setup lang="ts">
interface Props {
  label: string
  icon?: string
  active?: boolean
}

const props = withDefaults(defineProps<Props>(), {
  active: false
})

const emit = defineEmits(['click'])

const handleClick = () => {
  emit('click', props.label)
}
</script>