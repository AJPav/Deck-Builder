function onObjectEnterZone(zone, obj)
    if zone.getGUID() == '0afab6' then
        obj.setHiddenFrom({"Blue"})
    end
    if zone.getGUID() == 'e6b484' then
        obj.setHiddenFrom({"White"})
    end
    function onObjectDrop(zone, obj)
        if zone.getGUID() == "0afab6" and object.tag == "Card" then
            obj..flip()
        end
end

function onObjectLeaveZone(zone, obj)
    if zone.getGUID() == '0afab6' then
        obj.setHiddenFrom({})
    end
    if zone.getGUID() == 'e6b484' then
        obj.setHiddenFrom({})
    end
    function onObjectDrop()
     if zone.getGUID() == '0afab6' and
     object.tag == "Card" then
        function flip()
        end
     end
    end
end

function onObjectHover(Blue, )
    obj.setHiddenFrom({"White"})
    -- this should be hiding all holding items that Blue hold from white...
end
