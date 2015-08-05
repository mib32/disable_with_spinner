# Disable with spinner

A Rails gem, that lets you to replace the content of a remote button with animated spinner with just on data attribute.

## Installation

Add this line to the Gemfile
```
gem 'disable_with_spinner'
```

And the execute
```
$ bundle
```

Also add 
```
//= require spinner
```
to your javascript manifest file like `application.js`, and
```
*= require spinner
```
to `application.css`

## Usage

Add `data-disable-with-spinner` attribute to the method, that is ought to be disabled with spinner, when clicked on. Just like that, written in HAML
```
= link_to fa_icon('location-arrow'), '#', class: 'btn btn-default', data: {disable_with_spinner: true}
```

The button will restore it's contents either if button overcomes `ajax:complete` event, or if you trigger `spinner:hide` on that.
