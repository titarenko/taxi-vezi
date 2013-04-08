class Car
    constructor: () ->

    move: () =>

    poke: () =>

    getAngle: () =>

    getPosition: () =>



class Fader
    constructor: (@currentValue, @nextValue, @timeoutInMs) ->

    getValue: () =>

$ =>
    
    paper = Raphael(100, 50, 1000, 600);
    rect = paper.rect(100, 100, 200, 100, 10);
    rect.attr("fill", "#f00");
    rect.attr("stroke", "#fff");

    setTimeout(()=>
            #rect.rotate(30)
            rect.animate([{x: 100, y: 100, transform: "", "stroke": "#fff", opacity: 1}, {x: 100, y: 50, transform: "r-30", opacity: 1}], 100)
            true
        , 2000)
    true
