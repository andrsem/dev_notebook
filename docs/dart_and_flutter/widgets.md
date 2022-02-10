# Widgets

Widgets describe what their view should look like given their current configuration and state. When a widget’s state changes, the widget rebuilds its description, which the framework diffs against the previous description in order to determine the minimal changes needed in the underlying render tree to transition from one state to the next. Widgets are passed as arguments to other widgets

Widgets are temporary objects, used to construct a presentation of the application in its current state. State objects, on the other hand, are persistent between calls to `build()`, allowing them to remember information.

## Categories of Widgets

- __Layout__. E.g., "Column" and "Row" widgets that make it easy to align other widgets vertically or horizontally to each other
- __Painting__. E.g., "Text" and "Image" widgets that allow to display/paint some content onto the screen
- __Hit-Testing__. E.g., "GestureDetector" allows recognizing different gestures like tapping or dragging

## InheritedWidget

Is a base class for widgets that efficiently propagate information down the tree.

Any of the `.of(context)` methods are performing a lookup using an inherited widget.

## Some Widgets

- `Expanded` widget expands to fill any remaining available space that hasn’t been consumed by the other children
