<template>
  <div class="pt-20 pb-24">
    <div class="max-w-3xl mx-auto px-6 lg:px-8">
      <div class="text-center mb-16">
        <div class="uppercase tracking-[4px] text-xs text-accent mb-3">CHAPTER III — LET'S CONNECT</div>
        <h1 class="display-xl tracking-tighter">Let's build something<br>remarkable together.</h1>
        <p class="mt-4 text-xl text-text-secondary max-w-sm mx-auto">I respond to every message personally.</p>
      </div>

      <div class="glass rounded-3xl p-10 md:p-16">
        <form @submit.prevent="submitForm" class="space-y-8">
          <div class="grid md:grid-cols-2 gap-8">
            <div>
              <label class="block text-sm text-text-muted mb-2">Full Name</label>
              <input v-model="form.name" type="text" required 
                     class="w-full bg-bg-tertiary border border-border-subtle focus:border-accent rounded-2xl px-6 py-4 text-lg outline-none transition-colors" />
            </div>
            <div>
              <label class="block text-sm text-text-muted mb-2">Email Address</label>
              <input v-model="form.email" type="email" required 
                     class="w-full bg-bg-tertiary border border-border-subtle focus:border-accent rounded-2xl px-6 py-4 text-lg outline-none transition-colors" />
            </div>
          </div>

          <div>
            <label class="block text-sm text-text-muted mb-2">What are you working on?</label>
            <textarea v-model="form.message" rows="6" required 
                      class="w-full bg-bg-tertiary border border-border-subtle focus:border-accent rounded-3xl px-6 py-5 text-lg outline-none resize-y transition-colors"></textarea>
          </div>

          <div class="flex flex-col sm:flex-row gap-4 pt-4">
            <button 
              type="submit" 
              :disabled="isSubmitting"
              class="btn btn-primary text-lg px-10 py-4 flex-1 disabled:opacity-70"
            >
              {{ isSubmitting ? 'Sending...' : 'Send Message' }}
            </button>
            <a href="mailto:michael@michaelokolo.dev" class="btn btn-ghost text-lg px-10 py-4 flex-1">
              Email directly
            </a>
          </div>
        </form>

        <div v-if="submitted" class="mt-8 p-6 bg-success/10 border border-success/30 rounded-2xl text-center text-success text-sm">
          Thank you! I'll get back to you within 24 hours.
        </div>
      </div>

      <!-- Quick Links -->
      <div class="mt-16 text-center">
        <div class="uppercase text-xs tracking-widest text-text-muted mb-6">OR REACH OUT ELSEWHERE</div>
        <div class="flex justify-center gap-6 text-sm">
          <a href="https://twitter.com/michaelokolo" target="_blank" class="hover:text-accent transition-colors">Twitter / X</a>
          <a href="https://linkedin.com/in/michaelokolo" target="_blank" class="hover:text-accent transition-colors">LinkedIn</a>
          <a href="https://github.com/michaelokolo" target="_blank" class="hover:text-accent transition-colors">GitHub</a>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import { ref } from 'vue'

const form = ref({
  name: '',
  email: '',
  message: ''
})

const isSubmitting = ref(false)
const submitted = ref(false)

const submitForm = async () => {
  isSubmitting.value = true
  
  // Simulate API call
  await new Promise(resolve => setTimeout(resolve, 1200))
  
  isSubmitting.value = false
  submitted.value = true
  
  // Reset form
  setTimeout(() => {
    form.value = { name: '', email: '', message: '' }
    submitted.value = false
  }, 4500)
}
</script>