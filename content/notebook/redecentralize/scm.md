---
categories: [ nb-redecentralize ]

title: "6. Control de versiones"
keywords: 

publishdate: 2016-01-01
date: 2016-01-01
---

# [Comparación de herramientas para control de versiones](https://en.wikipedia.org/wiki/Comparison_of_version_control_software)

 - Free:
   - [CVS](http://www.nongnu.org/cvs/)
   - [SVN](https://subversion.apache.org/) ([TortoiseSVN](http://tortoisesvn.net/), [RapidSVN](http://www.rapidsvn.org/))
   - [Bazaar](http://bazaar.canonical.com)
   - [Mercurial](https://www.mercurial-scm.org/)
 - Non-free:
   - [BitKeeper](http://www.bitkeeper.com/)
   - [Visual SourceSafe (VSS)](https://en.wikipedia.org/wiki/Microsoft_Visual_SourceSafe)
 
# [Git](https://git-scm.com/)
   
 - [git --distributed-is-the-new-centralized](https://git-scm.com/): página oficial del proyecto.
 
 - [tryGit](https://try.github.io): tutorial interactivo de 15 minutos para conocer los comandos básicos de git desde terminal.
  
 - Tanto en GNU/Linux como en [Windows](https://git-for-windows.github.io/), se proveen las herramientas `git-gui` (Git GUI) y `gitk` (Repository -> Visualize * History).
 
 - Existen [GUIs alternativas](https://git-scm.com/downloads/guis), gratuitas y de pago. También soluciones integradas en la shell de Windows, como [TortoiseGit](https://tortoisegit.org/). Puede consultarse una [lista completa](https://git.wiki.kernel.org/index.php/InterfacesFrontendsAndTools) de interfaces y herramientas.

 - [Tech Talk: Linus Torvalds on git](https://www.youtube.com/watch?v=4XpnKHJAok8)
  - Make branching and merging easy to avoid huge conflicts
  - Primer commit pesado
  - You can checkout part of the tree
  - You cannot track a file

https://git-scm.com/book/en/v1/Git-on-the-Server-The-Protocols
git config --global core.autocrlf input
http://git-annex.branchable.com/
git cheatsheet
git stash
git-modules
git-web

    [merge]
        tool = winmerge
    [mergetool "winmerge"]
        cmd = "'C:/Program Files (x86)/WinMerge/WinMergeU.exe'" -u -e "$LOCAL" "$REMOTE" "$MERGED"
    [diff]
        tool = winmerge
    [difftool "winmerge"]
        cmd = "'C:/Program Files (x86)/WinMerge/WinMergeU.exe'" -u -e "$LOCAL" "$REMOTE"

Para hacer squash, incluido el commit inicial ([más info](http://stackoverflow.com/questions/598672/squash-the-first-two-commits-in-git)): `git rebase -i --root master`

[Difference between --force and +, when rebasing](http://stackoverflow.com/questions/5667884/how-to-squash-commits-in-git-after-they-have-been-pushed)

## [Gitosis](https://git-scm.com/book/es/v1/Git-en-un-servidor-Gitosis)
 
## GitHub
 
  - [GitHub Desktop](https://desktop.github.com/) (disponible para Windows y Mac) ofrece una integración completa de credenciales (generación y adición de claves).
  
  NOTA: GitHub Desktop funciona con HTTPS. Hay que añadir un segundo remote para utilizar SSH, ya que si renombramos origin, la aplicación no reconoce el repositorio.
 

  - If you need to compare it against a old fingerprint you also need to specify to use the md5 fingerprint hashing function.

    `ssh-keygen -E md5 -lf .ssh/id_dsa.pub`
	
    `2048 MD5:4d:5b:97:19:8c:fe:06:f0:29:e7:f5:96:77:cb:3c:71 (DSA)`
 
  - Además de la gestión de código fuente mediante Git, GitHub ofrece recursos para facilitar la gestión y documentación de los proyectos:
  
    - Para la documentación se utiliza una sintaxis basada en [Markdown](https://es.wikipedia.org/wiki/Markdown), pero con ciertas particularidades. En [Markdown Cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) hay una referencia de la sintaxis utilizada en Github.
	
	  - El contenido del fichero `REAMDE.md` en la raíz del repositorio se muestra en la página principal del proyecto.
	  - Se facilita una wiki, accesible a través de `github.com/<user|organization>/<repo>/wiki` compuesta por múltiples ficheros `.md`. Además de la posibilidad de editar el contenido a través de la web, en ["Adding and editing wiki pages locally"](https://help.github.com/articles/adding-and-editing-wiki-pages-locally/) hay instrucciones sobre cómo hacer un `git clone` de la wiki, y sobre el formato a utilizar a la hora de editar o crear ficheros.
  
  - Se dispone de un gestor de tareas/bugs, accesible a través de `github.com/<user|organization>/<repo>/issues`. En [Mastering Issues](https://guides.github.com/features/issues/) hay una lectura de 10 minutos sobre su uso.

  - Se provee espacio para almacenar una web estática en HTML + CSS, accesible a través de `<user|organization>.github.io`. Al igual que en el caso de la wiki, el contenido de ésta se gestiona como un repositorio más, tal como se explica en [Getting Started with GitHub pages](https://guides.github.com/features/pages/). Adicionalmente, ya que la página GitHub lo utiliza, se soporta el uso de [Jekyll](https://jekyllrb.com/), un generador de contenido estático con estructura tipo blog, escrito en [Ruby](https://www.ruby-lang.org). El artículo [Using Jekyll with Pages](https://help.github.com/articles/using-jekyll-with-pages/) ofrece más información al respecto.
  
  - En [GitHub Guides](https://guides.github.com/) hay más guías para comprender el flujo de colaboración promovido en GitHub (basado en 'forks' y peticiones de 'pull').

  - [Bitbucket](https://bitbucket.org/) ofrece servicios similares, y en la versión gratuita permite disponer de repositorios privados, limitando el número de colaboradores a cinco por repositorio. GitHub no establece límite en el número de colaboradores, pero no ofrece la posibilidad de disponer de repositorios privados en el plan gratuito (aunque hay ofertas para [estudiantes](https://education.github.com/)).
  
## [GitLab](https://about.gitlab.com/)

GitLab es una alternativa a GitHub, que ofrece servicios similares y además pone el código fuente a disposición de la comunidad para que se puedan realizar instalaciones propias.

## [gitolite](http://gitolite.com)

## [Gogs](http://gogs.io/)

## Git <-> SVN
  
    git-svn

    # Splitting a subfolder out into a new repository
    git filter-branch --prune-empty --subdirectory-filter YOUR_FOLDER_NAME master
	
    # Eliminar un directorio y todo el historial asociado a los ficheros que contiene
    # http://stevelorek.com/how-to-shrink-a-git-repository.html
	git filter-branch --index-filter 'git rm -r --cached --ignore-unmatch DIRECTORIOABORRAR' --prune-empty --tag-name-filter cat -- --all
    rm -rf .git/refs/original/
    git reflog expire --expire=now --all
    git gc --prune=now
    git gc --aggressive --prune=now
 
## Análisis de repositorios

    - [gitinspector](https://github.com/ejwa/gitinspector)
    - [gource](http://gource.io/)
    - [git_stats](https://github.com/tomgi/git_stats)
    - [git-cal](https://github.com/k4rthik/git-cal)
    - [git-stats](https://github.com/IonicaBizau/git-stats)
    - [GitStats](https://github.com/hoxu/gitstats)
