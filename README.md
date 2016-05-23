# Line Manager!

## What is this?

It is a small rails app used to route people to their appropriate line based on certain eligibility requirements of the lines themselves. 

## Is there anything interesting about it?

The lines themselves contain the information on who is allowed to be in their line. There is an assumption that this information can solely be derived from the person themselves and is accessed through the `#for` method like so:

```
#!ruby

def self.for?(person)
  person.some_criteria?
end
```

This is then utilized by the `line_router` who's job it is to find an eligible line for a person. This is done by iterating over the list of available lines and finding the first line that a person is eligible to be in, returning that line (or at least a pointer to that line)

There are a number of key factors (business decisions / requirements really) that dictate how the code should operate, but the general design stays the same:

### What should happen if a person is eligible to be in more than one line?

The code should be updated to return an array of eligible lines, then there would either be some type of `context_comparator` that could be used to determine which line is the best suited for that person 

Another option could be to route them to the line with the least number of people already in it for the lines they're eligible for

### What should happen if they're not eligible to be in any line?

I chose the `fallback` route and have a `Line::DefaultLine` that returns true for every case 

### What if lines need to close?

The code should be updated to use a `scope` to only consider lines that are available.

## Anything else of note?

The `Line::LineType` classes use [Single Table Inheritance](https://en.wikipedia.org/wiki/Single_Table_Inheritance) and extend the `Line` class since all lines are fundamentally the same from a data standpoint given the requirements but have different criteria that can be encapsulated in the class itself

If a person does not want to give their name, I assign a randomly generated name to them, making all fields optional.
