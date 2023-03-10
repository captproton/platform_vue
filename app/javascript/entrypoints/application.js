// To see this message, add the following to the `<head>` section in your
// views/layouts/application.html.erb
//
//    <%= vite_client_tag %>
//    <%= vite_javascript_tag 'application' %>
console.log("Vite ⚡️ Rails");

// If using a TypeScript entrypoint file:
//     <%= vite_typescript_tag 'application' %>
//
// If you want to use .jsx or .tsx, add the extension:
//     <%= vite_javascript_tag 'application.jsx' %>

console.log(
  "Visit the guide for more information: ",
  "https://vite-ruby.netlify.app/guide/rails"
);

// Example: Load Rails libraries in Vite.
//
import * as Turbo from '@hotwired/turbo'
Turbo.start()

// import ActiveStorage from '@rails/activestorage'
// ActiveStorage.start()
//
// // Import all channels.
// const channels = import.meta.globEager('./**/*_channel.js')

// Example: Import a stylesheet in app/frontend/index.css
// import '~/index.css'
// import '~/styles/background.css'
// import '~/frontend/styles/background.css'

// Create Vue App
import { createApp } from "vue";

// Import App Component
import App from "../components/App.vue";
import Hello from "../components/Hello.vue";

// Create Vue App
// const app = createApp(App).mount("#app");
const zoom = createApp(App).mount('[data-behavior="zoom"]');
// const app = createApp(App).mount('[data-behavior="vue"]');
// const vz = createApp(App).mount('[data-behavior="vz"]');
// const hello = createApp(Hello).mount('[data-behavior="hello"]');
// const hello = createApp(Hello).mount('[data-behavior="hello"]');

// import { createApp } from "vue";
// import App from "../components/App.vue";

// document.addEventListener('turbo:load', () => {
//   const app = createApp(App).mount('[data-behavior="vue"]');

// })

// stimulus
import '../controllers'
