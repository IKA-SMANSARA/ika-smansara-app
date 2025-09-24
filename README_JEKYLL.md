# IKA Smansara App - Documentation Site

This Jekyll site provides documentation for the IKA Smansara Flutter application.

## Local Development

1. **Install Ruby and Bundler**:
   ```bash
   # Install Ruby (version 3.1+ recommended)
   # On macOS:
   brew install ruby

   # On Ubuntu:
   sudo apt-get install ruby-full build-essential zlib1g-dev

   # Install Bundler
   gem install bundler
   ```

2. **Install dependencies**:
   ```bash
   bundle install
   ```

3. **Serve the site locally**:
   ```bash
   bundle exec jekyll serve
   ```

4. **View the site**:
   Open [http://localhost:4000](http://localhost:4000) in your browser

## Site Structure

- `_config.yml`: Site configuration
- `index.md`: Homepage
- `_layouts/`: Page layouts
- `_includes/`: Reusable components
- `assets/`: CSS, images, and other assets
- `docs/`: Documentation pages
- `_pages/`: Additional pages

## Deployment

The site is automatically deployed to GitHub Pages when changes are pushed to the `main` branch. The deployment is handled by the `.github/workflows/jekyll.yml` workflow.

## Customization

### Updating Site Information

Edit `_config.yml` to update:
- Site title and description
- Repository URL
- Base URL for GitHub Pages

### Adding New Pages

1. Create a new Markdown file in the root or `_pages/` directory
2. Add front matter with layout and title
3. The page will be automatically included in the site

### Modifying Styles

Edit `assets/css/style.scss` to customize the site's appearance. The site uses the Minima theme as a base.

## Contributing

1. Make your changes
2. Test locally with `bundle exec jekyll serve`
3. Commit and push your changes
4. The site will be automatically deployed