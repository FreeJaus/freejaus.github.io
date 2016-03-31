---
categories: [ nb-refs ]

linktitle: "Hugo(lang)"
title: "Hugo: a fast and modern static website engine"
keywords: hugo ssg static site generator

publishdate: 2016-01-01
date: 2016-04-03
---

- [Introduction](https://gohugo.io/overview/introduction/) to [HUGO](http://gohugo.io), a fast and modern static website engine ( [GitHub](https://github.com/spf13/hugo), [GoDoc](https://godoc.org/github.com/spf13/hugo) ).
- A tutorial about [Hosting on GitHub Pages](https://gohugo.io/tutorials/github-pages-blog/).

- Prebuilt releases can be downloaded from [github.com/spf13/hugo/releases](https://github.com/spf13/hugo/releases).
  - Alternatively, [compiling from source](http://gohugo.io/overview/installing/) is achieved with a single go command: `go get -v github.com/spf13/hugo`. However, since some of the repositories use [Mercurial](https://www.mercurial-scm.org) (`hg`), installing it on advance is required: `pacman -Ss mercurial` (MSYS2), `dnf install mercurial` (Fedora). For further information see [GoGetTools](https://github.com/golang/go/wiki/GoGetTools).
<!--more-->
- [Configuration](https://gohugo.io/overview/configuration/)
  - [Blackfriday](https://github.com/russross/blackfriday) is the Markdown rendering engine used in Hugo
- Extras
  - Built-in
     - [LiveReload](http://gohugo.io/extras/livereload/):
   ```
    $ hugo server --watch
   ```
   > *Awesome for development, but not something you would want to do in production. Since many people use hugo server --watch in production to instantly display any updated content, we’ve made it easy to disable the LiveReload functionality:*
   ```
    $ hugo server --watch --disableLiveReload
   ```
       - [Aliases](http://gohugo.io/extras/aliases/)
       - [Tables of Contents](http://gohugo.io/extras/toc/)
  - With external dependencies
       - [Syntax highlighting](http://gohugo.io/extras/highlighting/) is supported through an external Python-based program called [Pygments](http://pygments.org/).
       - Many solutions are supported to provide [comments](https://gohugo.io/extras/comments/), among which [Discourse](https://blog.discourse.org/2014/04/install-discourse-in-under-30-minutes/) seems to be the most complete for own deployment.

- Themes
  - [themes.gohugo.io](http://themes.gohugo.io/)
  - [github.com/spf13/hugoThemes](https://github.com/spf13/hugoThemes/)
  - [gohugo.io/showcase](https://gohugo.io/showcase/)
  - [realfavicongenerator.net](http://realfavicongenerator.net/)
- Template/Theme Design
  - https://golang.org/pkg/text/template/
  - [responsivebreakpoints](http://www.responsivebreakpoints.com/)
  - [bootstrap-live-customizer](http://bootstrap-live-customizer.com/)
  - [jointjs](http://www.jointjs.com)
