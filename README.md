# Textstat

Textstat is a utility to get statistics about text content.


## Setup

Textstat requires [Ruby](ruby).
To install it run 'gem install textstat'.

## Usage

Textstat can be used as a command-line tool or via its Ruby API.

### Command-line

    textstat [--options] <file>

You can pass a path to a file

    textstat texts/file.txt

or stream content to Textstat.

    echo 'some content' | textstat


find . -type f -print0 | xargs -0 cat | bin/textstat

#### Options

    --

### Ruby API


## Roadmap

- minitest
- contracts
- guard
- bin file
- publish gem (needs gemspec)
- rubocop
- docker


## Development

### Requirements

- bundler

### Setup

- run `bundle`
