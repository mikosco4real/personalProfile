<template>
  <div class="space-y-14">
    <div v-for="(item, index) in timelineItems" :key="index" class="timeline-item group relative pl-10">
      <div class="timeline-dot group-hover:scale-125 transition-transform absolute left-0 top-1.5" />
      
      <div>
        <div class="flex flex-col md:flex-row md:items-baseline md:justify-between gap-x-4">
          <div>
            <div class="font-semibold text-2xl tracking-tight">{{ item.role }}</div>
            <div class="text-indigo-400 font-medium mt-0.5">{{ item.company }}</div>
          </div>
          <div class="text-sm text-white/50 font-mono tracking-tight mt-1 md:mt-0">{{ item.period }}</div>
        </div>
        
        <p class="mt-4 text-white/70 max-w-3xl leading-relaxed">{{ item.description }}</p>
        
        <div v-if="item.skills" class="mt-5 flex flex-wrap gap-2">
          <SkillBadge v-for="skill in item.skills" :key="skill" :label="skill" />
        </div>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import SkillBadge from './SkillBadge.vue'

const timelineItems = [
  {
    role: "Software Engineer",
    company: "Webtize Solutions Pty Ltd",
    period: "Sep 2024 — Present",
    description: "Delivering 360° retail and wholesale solutions. Custom web development, ERPLY POS integrations, Magento2 platforms, and Zoho Analytics implementations that drive real business growth.",
    skills: ["Magento2", "ERPLY POS", "Zoho Analytics", "Full-Stack"]
  },
  {
    role: "Software Engineer",
    company: "Open",
    period: "Mar 2022 — Sep 2024",
    description: "Solved complex software and architectural problems using Test Driven Development, Distributed Computing, DevOps culture and Microservice Architecture.",
    skills: ["Microservices", "TDD", "Distributed Systems", "DevOps"]
  },
  {
    role: "Software Engineer",
    company: "isgood.ai",
    period: "May 2021 — Mar 2022",
    description: "Contributed to AI tooling and intelligent systems in a fast-moving startup environment.",
    skills: ["Python", "AI/ML", "Backend"]
  },
  {
    role: "Software Engineer (Masters Student)",
    company: "Torrens University Australia",
    period: "Feb 2020 — Dec 2021",
    description: "Master's degree in Computer Software Engineering. Focused on advanced software architecture and systems design.",
    skills: ["Software Architecture", "Research"]
  },
  {
    role: "Full Stack Web Developer",
    company: "Internet Expert Limited",
    period: "Jul 2018 — Feb 2020",
    description: "Built and maintained medical/hospital management systems (Medicplus+). Django + React/Redux, REST APIs, Raspberry Pi thermal printer servers, Apache deployments on Ubuntu.",
    skills: ["Django", "React", "PostgreSQL", "Linux"]
  },
  {
    role: "Information Technology Intern / Assistant Network Engineer",
    company: "Nestoil Limited",
    period: "2015",
    description: "Active Directory administration, Group Policy, server troubleshooting, staff onboarding, and conference room e-conferencing setup.",
    skills: ["Active Directory", "Networking", "Windows Server"]
  }
]
</script>