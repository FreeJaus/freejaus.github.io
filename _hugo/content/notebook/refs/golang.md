---
categories: [ nb-refs ]

title: "Go(lang)"
keywords: golang tour doc

publishdate: 2016-01-01
date: 2016-01-01
---

# Introduction

- [Go-tour (ES)](https://go-tour-es.appspot.com)
- [Go by example](https://gobyexample.com/)
- [Getting Started with Go](http://spf13.com/presentation/first-go-app/)
- [Go for Object Oriented Programmers](http://spf13.com/presentation/go-for-object-oriented-programmers/) [[video](https://www.youtube.com/watch?v=ABGF_ryhFzM)]
- [Go: Object Oriented and Concurrent (just not the usual way) ](https://www.youtube.com/watch?v=Ng8m5VXsn8Q)

# Basic

- github.com/golang/
  - [lint](https://github.com/golang/lint)
  - go/wiki/
     - [Projects](https://github.com/golang/go/wiki/Projects)
     - [CodeReviewComent](https://github.com/golang/go/wiki/CodeReviewComments)
     - [SliceTricks](https://github.com/golang/go/wiki/SliceTricks)
- golang.org/	
  - [ref/spec](https://golang.org/ref/spec)
  - [cmd/vet](https://golang.org/cmd/vet/)
  - /doc/
     - [Effective Go](https://golang.org/doc/effective_go.html)
     - [How to Write Go Code](https://golang.org/doc/code.html)
- blog.golang.org/
  - [Go's Declaration Syntax](http://blog.golang.org/gos-declaration-syntax)
  - [Go maps in action](http://blog.golang.org/go-maps-in-action)
  - [C? Go? Cgo!](http://blog.golang.org/c-go-cgo)
  - [Godoc: documenting Go code](http://blog.golang.org/godoc-documenting-go-code)

# Advanced

- [gorename: easy refactoring tool for Golang](https://texlution.com/post/gorename/)
- blog.gopheracademy.com/
  - [Composable command-line tools](https://blog.gopheracademy.com/advent-2015/composable-command-line-tools/)
  - [Hooking libc using Go shared libraries](https://blog.gopheracademy.com/advent-2015/libc-hooking-go-shared-libraries/)
- [Automatically start a local godoc web server](http://minhajuddin.com/2012/11/30/automatically-start-a-local-godoc-web-server/) 
- [Golang libraries for data science](http://www.mjhall.org/golang-data-science-libraries/)

# Command line apps

- [Cobra](https://github.com/spf13/cobra): a Commander for modern Go CLI interactions
  - [Cobra: A Modern & Refined CLI Commander](https://blog.gopheracademy.com/advent-2014/introducing-cobra/)
- [codegangsta/cli](https://github.com/codegangsta/cli): a small package for building command line apps in Go
- [Viper](https://github.com/spf13/viper): Go configuration with fangs
  - [Viper: Configuration with Fangs ](https://blog.gopheracademy.com/advent-2014/configuration-with-fangs/)
- [Nitro](https://github.com/spf13/nitro): quick and easy performance analyzer library for golang
- [Color](https://github.com/fatih/color): color package for Go (golang) 
- Progress bar
  - [gosuri/uiprogress](https://github.com/gosuri/uiprogress)
  - [cheggaaa/pb](https://github.com/cheggaaa/pb)

# Graphical apps

- [Hugo](/notebook/refs/hugo): a fast and modern static website engine
- Qt/QML
- [ajstarks/svgo](https://github.com/ajstarks/svgo)
- [2D Game Libraries for Go](https://blog.gopheracademy.com/advent-2015/2d-games/)

# Edition

- [Supercharging the Atom Editor for Go Development](http://marcio.io/2015/07/supercharging-atom-editor-for-go-development/)
- [notepadplus-go](https://github.com/chai2010/notepadplus-go)

# Cheatsheet

```
export GOPATH=$(pwd)

go get -u all                # Update all the packages
```
