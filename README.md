# textstat-rb

Textstat is an utility to get statistics about text content.

The main reason behind this is me wanting to hack on a nice little project. Textstat happens to be well suited to explore new technologies.


## Setup

- Make sure you have [Ruby](ruby) installed.
- And download the code:
`git clone https://github.com/jorin-vogel/textstat-rb.git`


## Usage

Textstat can be used as a command-line tool or via its Ruby API.

### Command-line

You can pass a path to a file:

    bin/textstat spec/shakespeare.txt

Or stream content to Textstat:

    echo 'some content' | bin/textstat
    bin/textstat < spec/shakespeare.txt
    cat spec/shakespeare.txt | bin/textstat

To analyze a whole folder you could run:

    find . -type f -print0 | xargs -0 cat | bin/textstat


### Ruby API

See the [`spec/textstat_spec.rb`](spec) file for usage examples or explore the [API](api).

It's less than 50 lines of code :wink:


## Development

### Requirements

- [Ruby](ruby)
- Bundler (`gem install bundler`)

### Setup

- Run `bundle` inside the repo directory.

### Workflow

- Run `guard`.
- Hit _enter_ to run all tests.
- Use the guard console to run arbitrary ruby code.
- Tests auto-rerun when files are changed.
- Put `binding.pry` in your code to stop at this point and open [pry](pry).


## License

MIT



[ruby]: https://www.ruby-lang.org/
[spec]: spec/textstat_spec.rb
[api]: lib/textstat.rb
[pry]: https://github.com/pry/pry
