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
    title: "Simple Bank",
    subtitle: "Backend Banking System",
    year: "2024",
    description: "A robust banking backend built with Go, featuring account management, transfers, and JWT authentication. Implements clean architecture and comprehensive testing.",
    tech: ["Go", "PostgreSQL", "Docker", "JWT", "Test-Driven Development"],
    impact: "Core backend for financial transaction simulation",
    github: "https://github.com/mikosco4real/simple_bank",
    live: ""
  },
  {
    id: 2,
    title: "Task Manager",
    subtitle: "Productivity Application",
    year: "2024",
    description: "Full-stack task management system with user authentication, real-time updates, and team collaboration features.",
    tech: ["TypeScript", "React", "Node.js", "MongoDB", "WebSocket"],
    impact: "Improved personal and team productivity tracking",
    github: "https://github.com/mikosco4real/TaskManager",
    live: ""
  },
  {
    id: 3,
    title: "P2P File Sharing Service",
    subtitle: "Distributed Systems Project",
    year: "2023",
    description: "Peer-to-peer file sharing application demonstrating distributed systems concepts, including chunking, hashing, and peer discovery.",
    tech: ["Python", "Networking", "Cryptography", "Concurrency"],
    impact: "Demonstrated understanding of distributed file systems",
    github: "https://github.com/mikosco4real/p2p_file_sharing_service",
    live: ""
  },
  {
    id: 4,
    title: "Quiz Manager",
    subtitle: "Educational Platform",
    year: "2023",
    description: "Interactive quiz platform with real-time scoring, question bank management, and performance analytics for educators and students.",
    tech: ["Django", "React", "PostgreSQL", "REST API"],
    impact: "Used for internal training and assessments",
    github: "https://github.com/mikosco4real/quiz_manager",
    live: ""
  }
]
</script>