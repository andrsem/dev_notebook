# Render Trees, BuildContext

## BuildContext

[BuildContext article](https://getstream.io/blog/flutter-buildcontext/)

BuildContext of a widget represents the widget's location in Flutter's widget tree and interacts with its RenderObject

`runApp()` function requires a widget. This widget is the root widget of all widgets. In flutter, every widget has a build function that requires a BuildContext instance. Some widgets though have anonymous context.

The relationship between BuildContext is a bottom-up relationship. Widgets context only knows about direct parent context. The only way BuildContext navigate between each other is up, from child to parent.

## Render Trees

### When the `runApp()` is called for the first time

1. Flutter will build a widget tree containing all widgets
2. Flutter walks down the tree and creates the second tree, which contains the corresponding Element objects by calling `createElement()` on the Widget
3. A third tree is created and filled with appropriate RenderObjects, which are created by the Element invoking the `createRenderObject()` method on the corresponding widget

<img src="/docs/images/widget.png" width="600">
<img src="/docs/images/render_trees.png" width="600">

## Flutter made up of 3 main trees

- __Widget__. Widgets are immutable. They represent the configuration for RenderObjects. Flutter can easily create and destroy widgets without any significant performance degradation.
- __Element__. Elements are the middleman between Widgets and RenderObjects. As the configuration of the Widget changes, the Element looks at the incoming changes and request the associated RenderObject to update
- __Render__. RenderObjects are mutable objects. They turn the configuration supplied by Widgets into pixels users can see and interact with. Creating and destroying RenderObjects has an impact on performance. When the configuration of Widget changes, the framework updates the associated RenderObject instead of creating a new one.

"BuildContext context" of a builds method represents the element of the widget.

Because Widgets are immutable they can't remember their parent or child relationship with other widgets. After widgets are built they are held by the Element tree, which retains the logical structure of the user interface. The Element tree also holds the state objects associated with StatefulWidgets.

## Categories of Widgets

- __Layout__. E.g., "Column" and "Row" widgets that make it easy to align other widgets vertically or horizontally to each other
- __Painting__. E.g., "Text" and "Image" widgets that allow to display/paint some content onto the screen
- __Hit-Testing__. E.g., "GestureDetector" allows recognizing different gestures like tapping or dragging
