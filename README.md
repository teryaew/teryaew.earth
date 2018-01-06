# teryaew.earth [![Travis Build Status][travis-img]][travis]

[travis-img]: https://img.shields.io/travis/teryaew/teryaew.earth/master.svg
[travis]:     https://travis-ci.org/teryaew/teryaew.earth?branch=master

Source code of http://teryaew.earth


Dev mode:

```
elm-reactor
```

Production mode:

```
elm make ./src/Main.elm
```

NB:

Don't change `repository` field in `elm-package.json` https://github.com/user/project.git, because Elm incorrectly treat urls with `.` in basename: https://github.com/teryaew/teryaew.earth.git:

```
Uncaught SyntaxError: Unexpected token .
teryaew.earth/:8478 Uncaught ReferenceError: Elm is not defined
```

https://github.com/elm-lang/elm-make/issues/106#issuecomment-314190437
