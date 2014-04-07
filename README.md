component-locals-and-remotes
============================

Test for bug https://github.com/component/component/issues/526#issuecomment-39775466

Run
```
make clean build
```
and see error:
```
➜  component-locals-and-remotes git:(master) DEBUG=remotes* make clean build
  remotes:local checking local components at /usr/local/var/www/component-locals-and-remotes/components +0ms
  remotes:local resolving local remote +19ms
  remotes:github GET "https://raw.githubusercontent.com/0/m3-group/jsonfn/component.json" +0ms
  remotes:github GET "https://raw.github.com/0/m3-group/jsonfn/component.json" +242ms
  remotes:github GET "https://raw.githubusercontent.com/0/m3-group/jsonfn/component.json" +129ms
  remotes:github GET "https://raw.github.com/0/m3-group/jsonfn/component.json" +76ms
  remotes:bitbucket GET "https://api.bitbucket.org/1.0/repositories/0/raw/m3-group/jsonfn/component.json" +0ms
  remotes:bitbucket GET "https://bitbucket.org/api/1.0/repositories/0/raw/m3-group/jsonfn/component.json" +214ms
  remotes:bitbucket GET "https://bitbucket.org/0/raw/m3-group/jsonfn/component.json" +258ms
  remotes:bitbucket GET "https://api.bitbucket.org/1.0/repositories/0/raw/m3-group/jsonfn/component.json" +218ms
  remotes:bitbucket GET "https://bitbucket.org/api/1.0/repositories/0/raw/m3-group/jsonfn/component.json" +356ms
  remotes:bitbucket GET "https://bitbucket.org/0/raw/m3-group/jsonfn/component.json" +177ms

       error : no remote found for dependency "0@m3-group/jsonfn". run `component open troubleshooting` for help.

make: *** [components] Error 1
```
