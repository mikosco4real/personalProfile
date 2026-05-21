<template>
  <nav 
    class="fixed top-0 left-0 right-0 z-50 glass border-b border-border-subtle transition-all duration-300"
    :class="{ 'shadow-glass': scrolled }"
    aria-label="Main Navigation"
  >
    <div class="max-w-7xl mx-auto px-6 lg:px-8">
      <div class="flex justify-between items-center h-20">
        <!-- Logo -->
        <router-link 
          to="/" 
          class="flex items-center gap-3 group"
        >
          <div class="w-9 h-9 rounded-xl bg-accent flex items-center justify-center">
            <span class="text-white font-display text-xl font-bold tracking-tighter">MO</span>
          </div>
          <div>
            <div class="font-display text-2xl font-semibold tracking-tighter">Michael Okolo</div>
            <div class="text-[10px] text-text-muted -mt-1 tracking-[2px]">SOFTWARE ENGINEER</div>
          </div>
        </router-link>

        <!-- Desktop Navigation -->
        <div class="hidden md:flex items-center gap-2">
          <NavLink 
            to="/" 
            label="Home" 
            :is-active="activeSection === 'home'"
            @click="scrollToSection('home')"
          />
          <NavLink 
            to="#about" 
            label="About" 
            :is-active="activeSection === 'about'"
            @click="scrollToSection('about')"
          />
          <NavLink 
            to="/projects" 
            label="Projects" 
            :is-active="activeSection === 'projects' || route.path === '/projects'"
          />
          <NavLink 
            to="/contact" 
            label="Contact" 
            :is-active="activeSection === 'contact' || route.path === '/contact'"
          />
          
          <div class="ml-4 pl-4 border-l border-border-subtle">
            <router-link 
              to="/contact" 
              class="btn btn-primary text-sm px-5 py-2.5"
            >
              Let's Talk
            </router-link>
          </div>
        </div>

        <!-- Mobile Menu Button -->
        <button
          @click="toggleMenu"
          class="md:hidden p-3 -mr-3 text-text-secondary hover:text-text-primary transition-colors"
          aria-label="Toggle menu"
        >
          <svg v-if="!isOpen" xmlns="http://www.w3.org/2000/svg" class="w-6 h-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
          </svg>
          <svg v-else xmlns="http://www.w3.org/2000/svg" class="w-6 h-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
          </svg>
        </button>
      </div>
    </div>

    <!-- Mobile Menu -->
    <div 
      v-if="isOpen" 
      class="md:hidden border-t border-border-subtle glass"
    >
      <div class="px-6 py-8 flex flex-col gap-1 text-lg">
        <NavLink to="/" label="Home" @click="closeMenu" />
        <NavLink to="#about" label="About" @click="() => { closeMenu(); scrollToSection('about') }" />
        <NavLink to="/projects" label="Projects" @click="closeMenu" />
        <NavLink to="/contact" label="Contact" @click="closeMenu" />
        
        <div class="pt-4 mt-4 border-t border-border-subtle">
          <router-link 
            to="/contact" 
            @click="closeMenu"
            class="btn btn-primary w-full justify-center"
          >
            Get In Touch
          </router-link>
        </div>
      </div>
    </div>
  </nav>
</template>

<script setup lang="ts">
import { ref, onMounted, onUnmounted, watch } from 'vue'
import { useRoute } from 'vue-router'
import NavLink from './NavLink.vue'

const route = useRoute()
const isOpen = ref(false)
const scrolled = ref(false)
const activeSection = ref('home')

const toggleMenu = () => {
  isOpen.value = !isOpen.value
}

const closeMenu = () => {
  isOpen.value = false
}

const scrollToSection = (section: string) => {
  if (route.path !== '/') {
    // Navigate to home first, then scroll
    window.location.href = `/#${section}`
    return
  }

  const element = document.getElementById(section === 'home' ? 'hero' : section)
  if (element) {
    const offset = 80
    const bodyRect = document.body.getBoundingClientRect().top
    const elementPosition = element.getBoundingClientRect().top
    const offsetPosition = elementPosition - bodyRect - offset

    window.scrollTo({
      top: offsetPosition,
      behavior: 'smooth'
    })
  }
  activeSection.value = section
}

// Scroll spy using Intersection Observer
let observer: IntersectionObserver | null = null

const setupScrollSpy = () => {
  const sections = ['hero', 'about', 'projects']
  
  observer = new IntersectionObserver(
    (entries) => {
      entries.forEach((entry) => {
        if (entry.isIntersecting) {
          const sectionId = entry.target.id
          if (sectionId === 'hero') activeSection.value = 'home'
          else if (sectionId === 'about') activeSection.value = 'about'
          else if (sectionId === 'projects') activeSection.value = 'projects'
        }
      })
    },
    {
      rootMargin: '-80px 0px -40% 0px',
      threshold: 0.1
    }
  )

  sections.forEach((id) => {
    const element = document.getElementById(id)
    if (element) observer?.observe(element)
  })
}

const handleScroll = () => {
  scrolled.value = window.scrollY > 20
}

onMounted(() => {
  window.addEventListener('scroll', handleScroll)
  
  // Only setup scroll spy on home page
  if (route.path === '/') {
    // Wait for DOM
    setTimeout(setupScrollSpy, 300)
  }
})

watch(() => route.path, (newPath) => {
  if (newPath === '/' && !observer) {
    setTimeout(setupScrollSpy, 300)
  } else if (newPath !== '/') {
    observer?.disconnect()
    observer = null
    activeSection.value = 'home'
  }
})

onUnmounted(() => {
  window.removeEventListener('scroll', handleScroll)
  observer?.disconnect()
})
</script>