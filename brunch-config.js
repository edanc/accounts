module.exports = {
  files: {
    javascripts: {
      joinTo: {
        'app.js': /^app\/frontend\/js\//,
        'vendor.js': /^(?!app\/frontend\/js)/
      }
    },
    stylesheets: {
      joinTo: 'app.css'
    }
  },

  plugins: {
    babel: {
      presets: ['es2015', 'react']
    },
  },

  paths: {
    watched: [
      "app/frontend",
    ],

    public: "public/assets"
  },

  conventions: {
     assets: /^(app\/frontend\/images)/
  },

  npm: {
    styles: {
      bootstrap: ['dist/css/bootstrap.css']
    },

    globals: {
      $: "jquery",
      jQuery: "jquery",
      breakfast: "breakfast-rails",
      bootstrap: "bootstrap"
    }
  },

  plugins: {
    jcopycat: {
      // Copy bootstrap fonts. These will go into the public/assets/fonts folder
      "fonts": ["node_modules/bootstrap/dist/fonts/"]
    }
  },
};
