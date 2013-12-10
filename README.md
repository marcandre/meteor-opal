# Meteor Opal

This package brings [Opal][http://opalrb.org/] to Meteor.

## Installation

Meteor Opal can be installed with [Meteorite](https://github.com/oortcloud/meteorite/). From inside a Meteorite-managed app:

``` sh
$ mrt add opal
```

## Basics

Files ending in `.rb` or `.opal` will be compiled to Javascript.

## API

Based on Opal v0.5.5.

Additional support:

* File.read (server)

## Contributing

There's a problem with testing using `mrt test-packages`.

Instead, from a meteor app with opal installed as a package, use:

``` sh
$ meteor test-packages packages/opal
```