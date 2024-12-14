sub init()
    subtitleElement = m.top.findNode("subtitle")
    if subtitleElement <> invalid
        subtitleElement.text = "Press the Home button on your remote to exit."
    end if
end sub
