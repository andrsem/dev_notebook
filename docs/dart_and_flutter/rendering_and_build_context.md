# Rendering and BuildContext

## BuildContext

[BuildContext article](https://getstream.io/blog/flutter-buildcontext/)

BuildContext of a widget represents the widget's location in Flutter's widget tree and interacts with its RenderObject

`runApp()` function requires a widget. This widget is the root widget of all widgets. In flutter, every widget has a build function that requires a BuildContext instance. Some widgets though have anonymous context.

The relationship between BuildContext is a bottom-up relationship. Widgets context only knows about direct parent context. The only way BuildContext navigate between each other is up, from child to parent.

## Rendering

[The Layer Cake article](https://medium.com/flutter-community/the-layer-cake-widgets-elements-renderobjects-7644c3142401)

### When the `runApp()` is called for the first time

1. Flutter will build a widget tree containing all widgets
2. Flutter walks down the tree and creates the second tree, which contains the corresponding Element objects by calling `createElement()` on the Widget
3. A third tree is created and filled with appropriate RenderObjects, which are created by the Element invoking the `createRenderObject()` method on the corresponding widget

<img src="/docs/images/widget.png" width="600">
<img src="/docs/images/render_trees.png" width="600">

## Flutter made up of 3 main trees

- __Widget__. Widgets are immutable. They represent the configuration for RenderObjects. Flutter can easily create and destroy widgets without any significant performance degradation.
- __Element__. Elements are the middleman between Widgets and RenderObjects. As the configuration of the Widget changes, the Element looks at the incoming changes and request the associated RenderObject to update
- __Render__. RenderObjects are mutable objects. They turn the configuration supplied by Widgets into pixels users can see and interact with. They take care of the layout, painting, and hit_testing. Creating and destroying RenderObjects has an impact on performance. When the configuration of Widget changes, the framework updates the associated RenderObject instead of creating a new one.

"BuildContext context" of a builds method represents the Element of the widget. That’s why context is different for every single widget.

Because Widgets are immutable they can't remember their parent or child relationship with other widgets. After widgets are built they are held by the Element tree, which retains the logical structure of the user interface. The Element tree also holds the state objects associated with StatefulWidgets.

### Rebuilding

With every configuration change, the Widget tree needs to be rebuilt.

1. A rebuild will be triggered by the framework, which will recreate the whole widget tree.
2. With the help of Elements in Elements tree, Flutter will compare the first item in the new Widget tree with the first item in the Render tree, second with second, and so on
3. Flutter checks if the old and new widgets are the same type
    - __if false__ remove the Widget, the Element, and the RenderObject from the tree (including subtrees) __and__ create new objects
    - __if true__ just update the configuration of the RenderObject to represent the new configuration of the widget __and__ continue traveling down the tree

## Categories of Widgets

- __Layout__. E.g., "Column" and "Row" widgets that make it easy to align other widgets vertically or horizontally to each other
- __Painting__. E.g., "Text" and "Image" widgets that allow to display/paint some content onto the screen
- __Hit-Testing__. E.g., "GestureDetector" allows recognizing different gestures like tapping or dragging
