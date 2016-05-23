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