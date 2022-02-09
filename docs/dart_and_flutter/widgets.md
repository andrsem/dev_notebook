# Widgets

## Categories of Widgets

- __Layout__. E.g., "Column" and "Row" widgets that make it easy to align other widgets vertically or horizontally to each other
- __Painting__. E.g., "Text" and "Image" widgets that allow to display/paint some content onto the screen
- __Hit-Testing__. E.g., "GestureDetector" allows recognizing different gestures like tapping or dragging

## InheritedWidget

Is a base class for widgets that efficiently propagate information down the tree.

Any of the `.of(context)` methods are performing a lookup using an inherited widget.
