class Car
    constructor: () ->

    move: () =>

    poke: () =>

    getAngle: () =>

    getPosition: () =>



class Fader
    constructor: (currentValue, nextValue,timeoutInMs) ->
        @currentValue = currentValue
        @nextValue = nextValue
        @timeoutInMs = timeoutInMs

    getValue: () =>

$ =>
    
    paper = Raphael(100, 50, 5000, 5000);
    rect = paper.rect(100, 100, 200, 100, 10);
    rect.attr("fill", "#f00");
    rect.attr("stroke", "#fff");
    setTimeout(()=>
            rect.rotate(30)
            true
        , 3000)
    true
