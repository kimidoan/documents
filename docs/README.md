# Documentation for Dartmouth Focus App

This directory contains the documentation for the Dartmouth Focus App, hosted on GitHub Pages.

## Local Development

To run the documentation locally:

1. Install Ruby and Bundler:
   ```bash
   gem install bundler
   ```

2. Install dependencies:
   ```bash
   bundle install
   ```

3. Run the local server:
   ```bash
   bundle exec jekyll serve
   ```

4. Visit `http://localhost:4000` in your browser

## Building for Production

To build the documentation for production:

```bash
bundle exec jekyll build
```

The built site will be in the `_site` directory.

## Deployment

The documentation is automatically deployed to GitHub Pages when changes are pushed to the `docs` branch.

## Structure

- `_config.yml`: Jekyll configuration
- `_layouts/`: HTML templates
- `styles.css`: Custom styles
- `index.md`: Main documentation page 