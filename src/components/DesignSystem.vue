<template>
  <div class="max-w-7xl mx-auto px-6 py-16">
    <div class="mb-16">
      <h1 class="display-xl mb-4">Design System</h1>
      <p class="text-xl text-text-secondary max-w-2xl">
        Elegant dark theme with glassmorphism, premium micro-interactions and modern typography for a software engineering portfolio.
      </p>
    </div>

    <!-- Color Palette -->
    <section class="mb-16">
      <h2 class="text-2xl font-semibold mb-6">Color Palette</h2>
      <div class="grid grid-cols-2 md:grid-cols-4 lg:grid-cols-6 gap-4">
        <div v-for="(color, name) in colors" :key="name" class="space-y-2">
          <div 
            class="h-20 rounded-2xl border border-border" 
            :style="{ backgroundColor: color }"
          />
          <div>
            <div class="font-mono text-sm">{{ name }}</div>
            <div class="text-xs text-text-muted">{{ color }}</div>
          </div>
        </div>
      </div>
    </section>

    <!-- Typography -->
    <section class="mb-16">
      <h2 class="text-2xl font-semibold mb-6">Typography</h2>
      <div class="space-y-8 glass p-10 rounded-3xl">
        <div>
          <div class="display-2xl">Display 2XL</div>
          <div class="text-sm text-text-muted mt-1">4.5rem / 700 / -0.04em</div>
        </div>
        <div>
          <div class="display-xl">Display XL</div>
          <div class="text-sm text-text-muted mt-1">3.75rem / 700</div>
        </div>
        <div class="text-4xl font-semibold">Heading Large</div>
        <div class="text-xl text-text-secondary">Body text — Inter, excellent readability on dark backgrounds.</div>
      </div>
    </section>

    <!-- Components -->
    <section>
      <h2 class="text-2xl font-semibold mb-6">Reusable Components</h2>
      
      <!-- Animated Cards -->
      <div class="mb-12">
        <h3 class="font-medium mb-4 text-accent">AnimatedCard</h3>
        <AnimatedCard>
          <div class="space-y-3">
            <h4 class="font-semibold text-xl">Project Card</h4>
            <p class="text-text-secondary">Hover me for smooth lift and glass effect.</p>
          </div>
        </AnimatedCard>
      </div>

      <!-- Skill Badges -->
      <div class="mb-12">
        <h3 class="font-medium mb-4 text-accent">SkillBadge</h3>
        <div class="flex flex-wrap gap-3">
          <SkillBadge label="TypeScript" />
          <SkillBadge label="Vue 3" icon="⚡" />
          <SkillBadge label="Tailwind" />
          <SkillBadge label="Framer Motion" />
        </div>
      </div>

      <!-- Timeline -->
      <div class="mb-12">
        <h3 class="font-medium mb-4 text-accent">Timeline</h3>
        <Timeline :items="sampleTimeline" />
      </div>

      <!-- Buttons -->
      <div>
        <h3 class="font-medium mb-4 text-accent">Buttons</h3>
        <div class="flex gap-4">
          <button class="btn btn-primary">Primary Action</button>
          <button class="btn btn-ghost">Ghost Button</button>
        </div>
      </div>
    </section>

    <!-- Library Recommendations -->
    <section class="mt-16 pt-16 border-t border-border">
      <h2 class="text-2xl font-semibold mb-4">Animation &amp; Interaction Libraries</h2>
      <div class="glass p-8 rounded-3xl text-sm text-text-secondary space-y-4 max-w-3xl">
        <p><strong>Recommended stack for premium feel:</strong></p>
        <ul class="list-disc pl-5 space-y-1.5">
          <li><strong>Vue built-in + Tailwind:</strong> Use &lt;Transition&gt; and &lt;TransitionGroup&gt; + Tailwind transition utilities (already used here).</li>
          <li><strong>@vueuse/motion</strong> — Declarative motion directives for Vue 3. Lightweight alternative to Framer Motion.</li>
          <li><strong>GSAP</strong> — For complex sequenced animations and scroll triggers if needed.</li>
          <li><strong>particles.ts / tsParticles</strong> — Beautiful particle backgrounds (subtle floating dots).</li>
          <li><strong>Lenis</strong> — Smooth scroll library.</li>
        </ul>
        <p class="pt-2 text-xs">Install with: <code class="font-mono bg-bg-tertiary px-1 py-px rounded">npm install @vueuse/motion</code></p>
      </div>
    </section>
  </div>
</template>

<script setup lang="ts">
import AnimatedCard from './AnimatedCard.vue'
import SkillBadge from './SkillBadge.vue'
import Timeline from './Timeline.vue'

const colors = {
  'bg-primary': '#0a0a0c',
  'bg-card': '#16161a',
  'accent': '#6366f1',
  'accent-cyan': '#22d3ee',
  'text-primary': '#f4f4f5',
  'text-secondary': '#a1a1aa',
  'border': '#27272a',
}

const sampleTimeline = [
  {
    title: 'Senior Software Engineer',
    date: '2023 — Present',
    company: 'Acme Labs',
    description: 'Leading frontend architecture and building delightful user experiences with Vue and TypeScript.',
    tags: ['Vue', 'TypeScript', 'Design Systems']
  },
  {
    title: 'Full Stack Engineer',
    date: '2021 — 2023',
    company: 'Vercel',
    description: 'Developed high-performance web applications and contributed to open source tooling.',
    tags: ['Next.js', 'Node.js']
  }
]
</script>