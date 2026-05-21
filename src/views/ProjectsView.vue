<template>
  <div class="pt-20 pb-24">
    <div class="max-w-6xl mx-auto px-6 lg:px-8">
      <!-- Header -->
      <div class="mb-16">
        <div class="uppercase tracking-[4px] text-xs text-accent mb-3">CHAPTER II — THE WORK</div>
        <h1 class="display-xl tracking-tighter">Selected Projects</h1>
        <p class="mt-4 max-w-md text-xl text-text-secondary">A collection of projects I'm particularly proud of.</p>
      </div>

      <!-- Projects Grid -->
      <div class="grid gap-8">
        <div 
          v-for="project in projects" 
          :key="project.id"
          class="card group flex flex-col lg:flex-row gap-8 lg:gap-12 hover:border-accent/30"
        >
          <div class="lg:w-2/5">
            <div class="flex items-center justify-between mb-4">
              <div>
                <div class="font-display text-3xl tracking-tight">{{ project.title }}</div>
                <div class="text-accent text-sm">{{ project.subtitle }}</div>
              </div>
              <div class="text-xs px-4 py-1.5 bg-bg-tertiary rounded-full text-text-muted self-start">{{ project.year }}</div>
            </div>
            
            <div class="flex gap-3 mt-6">
              <a :href="project.github" target="_blank" class="btn btn-ghost text-sm px-5 py-2">View on GitHub</a>
              <a v-if="project.live" :href="project.live" target="_blank" class="btn btn-primary text-sm px-5 py-2">Live Demo</a>
            </div>
          </div>

          <div class="lg:w-3/5">
            <p class="text-text-secondary mb-6">{{ project.description }}</p>
            
            <div class="mb-4">
              <div class="uppercase text-xs tracking-widest text-text-muted mb-3">Tech Stack</div>
              <div class="flex flex-wrap gap-2">
                <span v-for="tech in project.tech" :key="tech" class="skill-badge">{{ tech }}</span>
              </div>
            </div>

            <div class="text-sm text-text-muted">Impact: {{ project.impact }}</div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
const projects = [
  {
    id: 1,
    title: "Aether AI",
    subtitle: "Conversational Intelligence Platform",
    year: "2025",
    description: "Production-grade multi-modal AI assistant with long-term memory, tool use, and real-time reasoning. Powers customer support for several enterprise clients.",
    tech: ["Python", "LangGraph", "Vue 3", "FastAPI", "Pinecone", "AWS"],
    impact: "Reduced support ticket resolution time by 64%",
    github: "https://github.com/michaelokolo/aether-ai",
    live: "https://aether.ai"
  },
  {
    id: 2,
    title: "Nexus Developer Platform",
    subtitle: "Modern Developer Experience",
    year: "2024",
    description: "Complete end-to-end developer platform including preview environments, AI code review, and seamless deployment pipelines. Adopted by 200+ high-growth teams.",
    tech: ["TypeScript", "React", "GraphQL", "Kubernetes", "PostgreSQL"],
    impact: "Saved teams an average of 14 hours/week",
    github: "https://github.com/nexus-dev/platform",
    live: "https://getnexus.dev"
  },
  {
    id: 3,
    title: "Pulse Intelligence",
    subtitle: "Predictive Business Analytics",
    year: "2023",
    description: "Real-time analytics platform with custom ML models for forecasting, anomaly detection and automated insights generation.",
    tech: ["Next.js", "TensorFlow.js", "Python", "ClickHouse", "Redis"],
    impact: "Used by 40+ companies to drive data-informed decisions",
    github: "https://github.com/michaelokolo/pulse-intel",
    live: ""
  },
  {
    id: 4,
    title: "Echo Design System",
    subtitle: "Enterprise Component Library",
    year: "2022",
    description: "Comprehensive, accessible component system with built-in dark mode, animation primitives, and extensive documentation used across multiple product teams.",
    tech: ["Vue", "Tailwind", "Storybook", "TypeScript"],
    impact: "Adopted by 12 product teams internally",
    github: "https://github.com/michaelokolo/echo-ds",
    live: ""
  }
]
</script>