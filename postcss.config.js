module.exports = {
    plugins: [
      require('tailwindcss')('./tailwind.config.js'),
      require('autoprefixer'),
      ...(process.env.JEKYLL_ENV == "production"
        ? [require('cssnano')({})]
        : [])
    ]
}