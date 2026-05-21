<template>
  <div class="pt-20 pb-24">
    <div class="max-w-4xl mx-auto px-6 lg:px-8">
      <div class="uppercase tracking-[4px] text-xs text-white/50 mb-3">CHAPTER 01 — THE STORY</div>
      <h1 class="text-7xl tracking-tighter font-semibold">Michael Okolo</h1>
      <p class="mt-4 text-2xl text-white/70 max-w-3xl">Software Engineer building scalable retail platforms, intelligent systems and delightful developer experiences.</p>
    </div>

    <!-- Bio -->
    <div class="max-w-3xl mx-auto px-6 lg:px-8 mt-12 text-xl text-white/70 leading-relaxed">
      <p>I'm a Software Engineer with a Master's in Computer Software Engineering from Torrens University. Currently at Webtize, I help retailers transform their operations through custom web development, ERPLY POS integrations, Magento2, and powerful analytics on Zoho.</p>
      <p class="mt-6">Previously I solved complex architectural problems at Open using Test-Driven Development, microservices, and distributed systems. My journey spans full-stack development with Django/React, medical systems, network engineering, and everything in between.</p>
    </div>

    <!-- Full Experience -->
    <div class="max-w-4xl mx-auto px-6 lg:px-8 mt-20">
      <div class="uppercase tracking-[3px] text-xs text-white/50 mb-8">EXPERIENCE</div>
      <Timeline :detailed="true" />
    </div>

    <div class="max-w-4xl mx-auto px-6 lg:px-8 mt-16 text-sm text-white/50">
      Based in Sydney, Australia • Languages: English (Full Professional), Igbo (Native)
    </div>
  </div>
</template>

<script setup lang="ts">
import Timeline from '../components/Timeline.vue'
</script>