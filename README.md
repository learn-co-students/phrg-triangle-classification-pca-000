# Triangle

## Objectives

1. Define a custom error and use it.

## Instructions

* Write a `Triangle` class that accepts three arguments on initialization. Each argument is a length of one of the three sides of the triangle. 

* Give your Triangles an instance method, `kind` that returns, as a symbol, its type. The valid types are:

1. `:equilateral`

2. `:isosceles`

3. `:scalene`

* The `kind` method should raise a custom error, `TriangleError` if the triangle is invalid. Check out the hint below to understand what makes a triangle invalid. Write a custom error class, `TriangleError` and inherit it from `StandardError`. This custom error class should be defined in the same file as the `Triangle` class, but outside of the class definition of `Triangle`. Like this:

```ruby
# lib/triangle.rb

class Triangle
  # triangle code

  class TriangleError < StandardError
    # triangle error code
  end
end
```

## Hint

The sum of the lengths of any two sides of a triangle always exceeds the length of the third side. This is a principle known as the _triangle inequality_.

Further, each side must be larger than 0.

## Resources 

* [Exception Handling](http://www.skorks.com/2009/09/ruby-exceptions-and-exception-handling/)
* [Basic Mathematics](http://www.basic-mathematics.com/) - [Types of Triangles](http://www.basic-mathematics.com/types-of-triangles.html)

## Does this need an update?

Please open a [GitHub issue](https://github.com/learn-co-curriculum/phrg-triangle-classification/issues) or [pull-request](https://github.com/learn-co-curriculum/phrg-triangle-classification/pulls). Provide a detailed description that explains the issue you have found or the change you are proposing. Then "@" mention your instructor on the issue or pull-request, and send them a link via Connect.

<p data-visibility='hidden'>PHRG Triangle</p>
