class Car
    constructor: (@x, @y) ->
        @height

    move: (focus) =>


    poke: () =>

    getAngle: () =>

    getPosition: () =>



class Fader
    constructor: (@currentValue, @nextValue, @timeoutInMs) ->

    getValue: () =>

$ =>
    paper = Raphael(100, 50, 1000, 600);
    # rect(x, y, width, height, [r] - border-radius)
    rect = paper.rect(100, 100, 200, 100, 10);
    rect.attr("fill", "#f00");

    setTimeout(()=>
            rect.animate([{ transform: ""}, {transform : "r-30t100,0"},{transform : "r0t175,0"}, {transform : "r30t250,0"}], 800)
            true
        , 2000)
    true
