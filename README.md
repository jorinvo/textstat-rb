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



## Development

### Requirements

- [Ruby](ruby)
- bundler (`gem install bundler`)

### Setup

- run `bundle`

### Workflow

- run `guard`
- hit `ENTER` to run all tests
- use the guard console to test arbitrary ruby code
- tests auto-rerun when files are changed
- put `binding.pry` in your code to stop at this point and open pry


## Roadmap

- Move to Minitest
- Document binary
- Publish gem
- Add rubocop and reek
- Smaller test file

[ruby]: https://www.ruby-lang.org/
