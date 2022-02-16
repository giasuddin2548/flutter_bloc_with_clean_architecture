# Flutter Bloc Pattern with clean architecture
[![Build Status][travis-image]][travis-url]
[![Downloads Stats][npm-downloads]][npm-url]



![](header.png)

Flutter powerful state management with bloc pattern.
> Overview.
<p align="center">
<img src="https://raw.githubusercontent.com/felangel/bloc/master/docs/assets/flutter_bloc_logo_full.png"
  alt="Size Limit comment in pull request about bundle size changes"
  width="686" height="289">
</p>
The goal of this package is to make it easy to implement the BLoC Design Pattern (Business Logic Component).
This design pattern helps to separate presentation from business logic. Following the BLoC pattern facilitates testability and reusability. This package abstracts reactive aspects of the pattern allowing developers to focus on writing the business logic.


## It Has three layer

* ### Presentation Layer
  * Screens
  * Pages
  * Widgets
* ### Business Logic Layer
  * Blocs
  * Cubits
* ### Data Layer
  * Repositories
  * Data Providers
  * Models
  
  

<p align="center">
<img src="https://raw.githubusercontent.com/felangel/bloc/master/docs/assets/cubit_architecture_full.png"
  alt="Size Limit comment in pull request about bundle size changes"
  width="686" height="289">
</p>



## Installation



With **[GitHub action]** Size Limit will post bundle size changes as a comment
in pull request discussion.

<p align="center">
<img src="https://raw.githubusercontent.com/felangel/bloc/master/docs/assets/flutter_bloc_logo_full.png"
  alt="Size Limit comment in pull request about bundle size changes"
  width="686" height="289">
</p>

With `--why`, Size Limit can tell you *why* your library is of this size
and show the real cost of all your internal dependencies.
We are using [Statoscope] for this analysis.

<p align="center">
  <img src="./img/why.png" alt="Statoscope example" width="650">
</p>

<p align="center">
  <a href="https://evilmartians.com/?utm_source=size-limit">
    <img src="https://evilmartians.com/badges/sponsored-by-evil-martians.svg"
         alt="Sponsored by Evil Martians" width="236" height="54">
  </a>
</p>


OS X & Linux:

```sh
npm install my-crazy-module --save
```

Windows:

```sh
edit autoexec.bat
```

## Usage example

A few motivating and useful examples of how your product can be used. Spice this up with code blocks and potentially more screenshots.

_For more examples and usage, please refer to the [Wiki][wiki]._

## Development setup

Describe how to install all development dependencies and how to run an automated test-suite of some kind. Potentially do this for multiple platforms.

```sh
make install
npm test
```

## Release History

* 0.2.1
    * CHANGE: Update docs (module code remains unchanged)
* 0.2.0
    * CHANGE: Remove `setDefaultXYZ()`
    * ADD: Add `init()`
* 0.1.1
    * FIX: Crash when calling `baz()` (Thanks @GenerousContributorName!)
* 0.1.0
    * The first proper release
    * CHANGE: Rename `foo()` to `bar()`
* 0.0.1
    * Work in progress

## Meta

Your Name – [@YourTwitter](https://twitter.com/dbader_org) – YourEmail@example.com

Distributed under the XYZ license. See ``LICENSE`` for more information.

[https://github.com/yourname/github-link](https://github.com/dbader/)

## Contributing

1. Fork it (<https://github.com/yourname/yourproject/fork>)
2. Create your feature branch (`git checkout -b feature/fooBar`)
3. Commit your changes (`git commit -am 'Add some fooBar'`)
4. Push to the branch (`git push origin feature/fooBar`)
5. Create a new Pull Request

<!-- Markdown link & img dfn's -->
[npm-image]: https://img.shields.io/npm/v/datadog-metrics.svg?style=flat-square
[npm-url]: https://npmjs.org/package/datadog-metrics
[npm-downloads]: https://img.shields.io/npm/dm/datadog-metrics.svg?style=flat-square
[travis-image]: https://img.shields.io/travis/dbader/node-datadog-metrics/master.svg?style=flat-square
[travis-url]: https://travis-ci.org/dbader/node-datadog-metrics
[wiki]: https://github.com/yourname/yourproject/wiki
