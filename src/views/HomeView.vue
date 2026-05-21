<template>
  <div>
    <!-- Hero Section - Stunning & Modern -->
    <section class="min-h-[100dvh] flex items-center pt-20 relative overflow-hidden bg-[#0a0a0c]">
      <div class="max-w-5xl mx-auto px-6 lg:px-8 relative z-10">
        <div class="max-w-4xl">
          <div class="inline-flex items-center gap-2 px-4 py-1.5 rounded-full bg-white/5 border border-white/10 mb-8">
            <div class="w-2 h-2 bg-emerald-400 rounded-full animate-pulse"></div>
            <span class="text-sm text-white/70">Software Engineer • Sydney, Australia • Open to opportunities</span>
          </div>

          <h1 class="text-[92px] leading-[0.9] font-semibold tracking-tighter mb-6">
            Michael Okolo.<br>
            <span class="text-white/40">Crafting intelligent</span><br>
            systems that scale.
          </h1>
          
          <p class="max-w-xl text-2xl text-white/60 mb-12 font-light tracking-tight">
            Masters Software Engineer building high-performance backend systems, 
            retail tech solutions, and beautiful digital products.
          </p>

          <div class="flex flex-wrap gap-4">
            <button @click="scrollToSection('projects')" 
                    class="px-8 py-4 rounded-2xl bg-white text-black font-medium hover:bg-white/90 transition-all active:scale-[0.985]">
              View my work
            </button>
            <button @click="scrollToSection('about')" 
                    class="px-8 py-4 rounded-2xl border border-white/20 hover:bg-white/5 transition-all">
              About me
            </button>
          </div>

          <div class="mt-20 text-sm text-white/40 tracking-[3px]">SCROLL TO BEGIN YOUR JOURNEY</div>
        </div>
      </div>

      <!-- Subtle gradient mesh -->
      <div class="absolute inset-0 bg-[radial-gradient(#ffffff08_0.5px,transparent_1px)] bg-[length:4px_4px]"></div>
    </section>

    <!-- Experience Highlights -->
    <section id="about" class="border-y border-white/10 py-20 bg-[#111113]">
      <div class="max-w-5xl mx-auto px-6 lg:px-8">
        <div class="grid md:grid-cols-2 gap-x-16 gap-y-16">
          <div>
            <div class="uppercase tracking-[4px] text-xs text-indigo-400 mb-4">CHAPTER 01</div>
            <h2 class="text-6xl tracking-tighter font-semibold">A decade of<br>building what<br>matters.</h2>
          </div>
          <div class="pt-2 text-xl text-white/70 leading-relaxed">
            Software Engineer with deep expertise in distributed systems, microservices, 
            and retail technology. Currently empowering businesses at Webtize with custom 
            POS integrations, Magento2 solutions, and data-driven analytics platforms.
          </div>
        </div>
      </div>
    </section>

    <!-- Featured Experience Timeline -->
    <section class="max-w-5xl mx-auto px-6 lg:px-8 py-24">
      <div class="mb-12 flex items-end justify-between">
        <div>
          <div class="uppercase text-xs tracking-[3px] text-white/40 mb-2">JOURNEY</div>
          <h3 class="text-5xl tracking-tighter font-semibold">Experience</h3>
        </div>
        <router-link to="/about" class="text-sm hover:text-white/80 transition-colors flex items-center gap-1">Full timeline →</router-link>
      </div>
      
      <Timeline />
    </section>

    <!-- Skills -->
    <section class="bg-[#111113] border-y border-white/10 py-20">
      <div class="max-w-5xl mx-auto px-6 lg:px-8">
        <div class="text-center mb-12">
          <div class="uppercase tracking-[3px] text-xs text-white/40">CHAPTER 02</div>
          <h3 class="text-6xl tracking-tighter font-semibold mt-3">Tools of the trade</h3>
        </div>
        
        <div class="flex flex-wrap gap-3 justify-center max-w-4xl mx-auto">
          <SkillBadge v-for="skill in coreSkills" :key="skill" :label="skill" />
        </div>
        
        <div class="mt-10 text-center text-sm text-white/50">
          Strong focus on Rust, Go, Python, TypeScript • Distributed Systems • TDD • Clean Architecture
        </div>
      </div>
    </section>

    <!-- CTA -->
    <section id="projects" class="max-w-4xl mx-auto px-6 text-center py-24">
      <div class="glass p-16 rounded-3xl border border-white/10">
        <h3 class="text-6xl tracking-tighter font-semibold mb-4">Let's build something<br>extraordinary together.</h3>
        <p class="text-xl text-white/60 mb-10 max-w-md mx-auto">Currently open to exciting opportunities and collaborations.</p>
        
        <div class="flex justify-center gap-4">
          <router-link to="/projects" class="btn btn-primary px-10 py-4 text-lg">Explore Projects</router-link>
          <router-link to="/contact" class="px-10 py-4 text-lg border border-white/20 rounded-2xl hover:bg-white/5 transition">Get in touch</router-link>
        </div>
      </div>
    </section>
  </div>
</template>

<script setup lang="ts">
import Timeline from '../components/Timeline.vue'
import SkillBadge from '../components/SkillBadge.vue'

const coreSkills = [
  'Rust', 'Go', 'Python', 'TypeScript', 'Vue/React', 'Django', 'PostgreSQL', 
  'Docker', 'Kubernetes', 'Microservices', 'TDD', 'System Design', 'REST APIs'
]

function scrollToSection(id: string) {
  const el = document.getElementById(id)
  if (el) el.scrollIntoView({ behavior: 'smooth', block: 'start' })
}
</script>