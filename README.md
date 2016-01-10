# Smerge

## Advanced merge for hashes and other Ruby object.

Smerge is a rule-based framework that allows you to define how to merge any object with any other object. It supports deep-merge for hashes by default, as well as set-merge (concat.uniq) for arrays.

### Installation

Either require the gem and use locally...

    require 'smerge'

    class MyClass
      using Smerge::Local
      ...
    end

...or import for convenient use globally.

    require 'smerge/imports/global'

### Usage

Smerge has some basic rules out-of-the-box.

    3.smerge 4 # => 4
    nil.smerge 'a string' # => 'a string'

    [1,2].smerge [3,4] # => [1,2,3,4]
    [1,2].smerge [2,3] # => [1,2,3]

    { }.smerge(a: 1) # => { a: 1 }
    { a: 1 }.smerge({ }) # => { a: 1 }

    { a: { b: 2 } }.smerge(a: { c: 1 })
    # => { a: { b: 2, c: 1 } }

You can also define new rules easily.

    { a: 1 }.smerge 'off' # => 'off'

    Smerge.setup do |c|
      c.rule(Hash, 'off') { Hash.new }
    end

    { a: 1 }.smerge 'off' # => { }

Rules can match by class or object equality.
