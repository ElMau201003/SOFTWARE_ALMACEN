import { defineConfig } from "cypress";

export default defineConfig({
  e2e: {

    baseUrl: 'https://demoqa.com/',

    setupNodeEvents(on, config) {
on('task', {
log(message){
console.log('Mensaje del console log del task'+message)
return null
}
})
    },
    excludeSpecPattern: [
      "**/1-getting-started/*.js",
      "**/2-advanced-examples/*.js"
    ],

    viewportWidth: 1920,
    viewportHeight: 1080,

    testIsolation: false
  },
});
