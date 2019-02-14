# Autolayout in Code Example

This project aimed to explore creating autolayout constraints in code as opposed to with the Interface Builder.

## Getting Started

To create a constraint, you must define an NSLayoutConstraint object and then fill it with several pieces of information.
Once defined, the constraints must be added to the view by using the following code:

```
view.addConstraint(constraint: NSLayoutConstraint)
```

### Defining an NSLayoutConstraint

  * item: the item to be constrained
  * attribute: the property to be constrained
    * .top, .bottom, .leading, .trailing, .centerX, .centerY, etc
  * relatedBy: the interpretation of the actual number in the constraint
    * .equal, .greaterThan, or .lessThan
  * toItem: the object that the item is constrained to
    * often the view
  * attribute: the property to be constrained for the "toItem" object
  * multiplier: the double used to multiply the "constant" value
    * often 1.0
  * constant: the value for the constraint
