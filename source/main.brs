' Entry function for our channel.
' Roku will automatically look for and call this function when your channel launches
'
' args are optional parameters that can be passed to your channel on launch.
' When these args are passed, it's called deep linking
sub main (args as dynamic)

    ' Create the SceneGraph canvas we will display our channel on
    screen = CreateObject("roSGScreen")

    ' Create a message port to listen for events in our channel
    ' Events may be changes to variables, selection of media, thrown errors/warning, etc.
    port = CreateObject("roMessagePort")

    ' Now that the message port is created, let's attach it to our screen
    screen.setMessagePort(port)

    ' Now that the canvas is ready, let's display something.
    ' We'll create a scene using the createScene function and pass it the name of the scene
    ' we want to see.
    screen.createScene("mainScene")

    ' The canvas is set, the scene is created, now show it to the user
    screen.show()

    ' Our main loop. BrightScript doesn't keep itself running. If we didn't have loop here waiting
    ' for events, it would quickly run through the above code and exit the channel.
    '
    ' Not very useful.
    '
    ' We want our scene to be shown to the user and wait for the user's instructions.
    while(true)
        msg = wait(0, m.port)
        msgType = type(msg)
        if msgType = "roSGScreenEvent"
            if msg.isScreenClosed() then return
        end if
    end while
end sub
