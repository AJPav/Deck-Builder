--[[Set up card button--]]

DECK_GUID = Global.getVar('DECK_GUID')

function setUpCards()
    local deck = getObjectFroGUID(DECK_GUID)
    deck.shuffle()
    deck.deal(5)

    local deckPOS = deck.getPosition()
    local xPOS = deckPos[1] +3
    for i = 1, 2 * #getseatedPlayers() do
        deck.takeObject({flip=true, position={xPos, deckPos[2], deckPos[3]}})
        xPOS = xPOS +3
    end

    destroyObject(self)
end