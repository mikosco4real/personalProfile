<template>
  <Teleport to="body">
    <Transition name="modal">
      <div v-if="isOpen" class="fixed inset-0 z-50 flex items-center justify-center p-4 md:p-8">
        <!-- Backdrop -->
        <div 
          class="modal-backdrop absolute inset-0 bg-black/70 backdrop-blur-sm"
          @click="closeModal"
        />
        
        <!-- Modal Content -->
        <div 
          class="modal relative w-full max-w-4xl glass rounded-3xl overflow-hidden shadow-2xl"
          @click.stop
        >
          <!-- Header -->
          <div class="flex items-center justify-between px-8 py-6 border-b border-border">
            <div>
              <h2 class="text-3xl font-semibold">{{ project.title }}</h2>
              <p class="text-text-secondary mt-1">{{ project.subtitle }}</p>
            </div>
            <button 
              @click="closeModal"
              class="text-text-muted hover:text-text-primary p-2 rounded-full hover:bg-bg-tertiary transition-colors"
            >
              <svg xmlns="http://www.w3.org/2000/svg" class="w-6 h-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
              </svg>
            </button>
          </div>

          <!-- Body -->
          <div class="p-8">
            <div v-if="project.image" class="mb-8 rounded-2xl overflow-hidden border border-border">
              <img :src="project.image" :alt="project.title" class="w-full h-auto" />
            </div>

            <div class="prose prose-invert max-w-none text-text-secondary">
              <p class="text-lg leading-relaxed">{{ project.description }}</p>
            </div>

            <!-- Tech Stack -->
            <div v-if="project.tech" class="mt-8">
              <h4 class="font-semibold mb-3 text-sm tracking-widest text-text-muted">TECHNOLOGIES</h4>
              <div class="flex flex-wrap gap-2">
                <SkillBadge 
                  v-for="tech in project.tech" 
                  :key="tech" 
                  :label="tech" 
                />
              </div>
            </div>

            <!-- Links -->
            <div v-if="project.links" class="mt-8 flex flex-wrap gap-4">
              <a 
                v-for="link in project.links" 
                :key="link.label"
                :href="link.url" 
                target="_blank"
                class="btn btn-primary"
              >
                {{ link.label }}
              </a>
            </div>
          </div>
        </div>
      </div>
    </Transition>
  </Teleport>
</template>

<script setup lang="ts">
import { defineProps, defineEmits } from 'vue'
import SkillBadge from './SkillBadge.vue'

interface ProjectLink {
  label: string
  url: string
}

interface Project {
  title: string
  subtitle?: string
  description: string
  image?: string
  tech?: string[]
  links?: ProjectLink[]
}

const props = defineProps<{
  isOpen: boolean
  project: Project
}>()

const emit = defineEmits(['close'])

const closeModal = () => {
  emit('close')
}
</script>

<style scoped>
.modal-enter-active,
.modal-leave-active {
  transition: all 300ms cubic-bezier(0.23, 1, 0.32, 1);
}
.modal-enter-from,
.modal-leave-to {
  opacity: 0;
  transform: translateY(40px) scale(0.96);
}
</style>