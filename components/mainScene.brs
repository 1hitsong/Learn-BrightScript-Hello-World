' When a component is created, its init() function is called
'
' Typically you will do all your basic setup for the component here.
'
' If you need to get data or perform business logic, don't do it here because it will
' block rendering. Instead use a task, which is async, to perform such things so nothing
' gets blocked and the user isn't stuck waiting.
sub init()
    ' To interact with a SceneGraph component from BrightScript, first we need to find it
    ' Here we find the node using the findNode() function and pass it the id of the component
    ' we're looking for.
    subtitleElement = m.top.findNode("subtitle")

    ' Before we interact with the SceneGraph component, we need to confirm it was indeed found.
    ' Though you could simply assume it'll find it since we know it's in the SceneGraph children,
    ' it's best practice to first confirm it was found. It also prevents the channel from crashing!
    if subtitleElement <> invalid

        ' Now that we know the component has been found, we'll set the text property programmatically.
        ' Like the title element, we could have set the text property directly in the XML file, but
        ' you are likely to have a time when you need to set it in code.
        subtitleElement.text = "Press the Home button on your remote to exit."

    end if
end sub
