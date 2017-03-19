# dnav project

### Setup sublime text:
  [] Run editor config: `ctrl + shift + p` -> choose install package manager in type: editorconfig. Install it then restart sublime text

### Setup vitual machine (Vagrant):

  [] Install virtual box to support vagrant: http://ubuntuhandbook.org/index.php/2016/07/virtualbox-5-1-released/
  Move to self-speed folder:
  [] Install vagrant: `vagrant init hashicorp/precise64`
  [] Run `vagrant up --provision` to install package needed
  [] Open vagrant machine: `vagrant ssh`
  [] Move to /project and run `docpad run` to start docpad project
  Hope you enjoy it. Thanks!

### Run project
  [] localhost:88/

### Project structure

```
|Self-speed
|---+ dnav /~ name project
    |---+ src
        |---+ layouts
        |---+ partials /~ storing module contents
        |---+ render /~ storing content needed to render to out folder
            |---+ style
                |---+ bases /~ set style for element (e.g: reset.scss)
                |---+ component /~ set style for modules (e.g: buttons, texts, nav, ...) and pages (all page in project here)
                |---+ helpers /~ storing all helper for project (e.g: variables.scss, naviation helper)
                |---+ layouts /~ set style for layout (e.g: header, footer, body,...)
                |---+ states /~ set media query here
                |---+ main.css.scss /~ storing all content of style here
            |---+ all pages
        |---+ static /~ stroring content no need to render
        |---+ docpad.coffee /~ config docpad env
        |---+ package.json /~ storing package project
        |---+ .editorconfig /~ config editor and github
        |---+ .gitignore /~ ignore files
        |---+ .bower.json /~ storing package installes via bower command
|---+ vagrant /~ machine
    |---+ vagrantfile
    |---+ provision.sh
```
