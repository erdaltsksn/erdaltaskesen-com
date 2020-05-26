# erdaltaskesen.com

![Hugo](https://github.com/erdaltsksn/erdaltaskesen-com/workflows/Hugo/badge.svg)
[![Netlify Status](https://api.netlify.com/api/v1/badges/1c8b3912-f859-4530-bd88-2b5c26e393a4/deploy-status)](https://app.netlify.com/sites/erdaltaskesen/deploys)
[![License](https://img.shields.io/badge/license-Proprietary-1ba0db)](LICENSE)

The source code of my personal website/blog.

![Screenshot](/assets/screenshot.png)

## Features

- Hugo based static website
- Custom Theme
- Blog
- Projects
- Contact Form
- RSS
- Sitemap

## Getting Started

```sh
git clone https://github.com/erdaltsksn/erdaltaskesen-com.git
cd erdaltaskesen-com
npm install
npm run build-dev
```

You can visit the website at [http://localhost:1313/](http://localhost:1313/)

## Installation

Run the following command to generate static website. The static website output
will be inside `public` folder.

```sh
npm run build-prod
```

### Deployment and hosting with Netlify

1. Create a new site in Netlify and import your repository.
2. Set the build command to: `npm run build-prod`
3. Set the publish directory to: `public`
4. Make sure to set `Build Image` to `Ubuntu Xenial 16.04` or above.

That's it, now your site gets deployed automatically on `git push`.

## Updating

Run the following command to update npm packages and regenerate the static site.

```sh
npm update
npm run build-prod
```

See [Go Hugo Docs](https://gohugo.io/getting-started/installing/#upgrade-hugo)
for upgrading Hugo.

### Usage

### Serving

Just copy the content of `public` folder to the root of your webserver.

### Deploying

- **Build command:** `npm run build-prod`
- **Publish directory:** `public`

### Creating new contents

You can use the following command to create a new content.

```sh
# To create a new static page
hugo new page/page-name.md

# To Create a new blog post
hugo new blog/2020-05-12-title-of-the-post.md

# To add a new project
hugo new projects/project-name.md
```

### NPM Commands

The followings are the commands that are available.

```sh
npm run [command]
```

- `"csscomb":` Format the `css/scss` according to predefined Yandex style.
- `"sass":` Compile `scss` file to `css`.
- `"autoprefixer":` Add vendor prefixes to CSS rules using `Can I Use`.
- `"cleancss":` Optimize and minimize CSS.
- `"build":` Combination of the four commands above.
- `"build-dev":` Build the site and run a webserver.
- `"build-prod":` Build the static website.

## Contributing

If you want to contribute to this project and make it better, your help is very
welcome. See [CONTRIBUTING](docs/CONTRIBUTING.md) for more information.

## Disclaimer

In no event shall we be liable to you or any third parties for any special,
punitive, incidental, indirect or consequential damages of any kind, or any
damages whatsoever, including, without limitation, those resulting from loss of
use, data or profits, and on any theory of liability, arising out of or in
connection with the use of this software.
