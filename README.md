# [Fittext](http://www.bookcasey.com/fittext)

Compass extenstion / Sass mixin for inflating web type by generating media queries with progressively larger font sizes.

[Example](http://www.bookcasey.com/fittext) on my personal site.

## Installation

From the command line:

    gem install fittext

(depending on your ruby setup you may need to run `sudo gem install fittext`)

Installing into your project:

    # Edit config.rb and add:
    require "fittext"

    # Import the extension into your sass or scss file
    @import "fittext"

## Arguments

    @include fittext($min-media, $max-media, $min-font-size, $max-font-size, $media-increment, $font-increment, $ratio, $round)

### `$min-media`

The smallest, and first media query generated

### `$max-media`

Largest, and final media query generated (unless `$max-font-size` is reached first)

### `$min-font-size` and `$max-font-size`

`$min-font-size` sets font size for the first media query, `$max-font-size` for the max.

### `$media-increment`

Set increase between media queries. `$media-increment: 150px` would generate:

    @media screen and (min-width: 300px) { ... }
    @media screen and (min-width: 450px) { ... }
    @media screen and (min-width: 600px) { ... }

### `$font-increment`

Sets increase amount of font size for each media queries.

### `$ratio`

An extra value to get font sizes to increase non-linearly. Default `1`. 

### `$round`

Boolean. Rounds font size with `ceil()`. Default `false`.

## Usage

    h1
      font-size: 6em // For browsers that don't support media queries.
      @include fittext($min-media: 200px, $max-media: 1400px, $min-font-size: 5em, $max-font-size: 50em, $media-increment: 100, $font-increment: 1.5, $ratio: 1, $round: false)



