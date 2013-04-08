borderRadius = 10
height = 100
width = 200

class Car
    constructor: ({paper, x, y}) ->
        # rect(x, y, width, height, [r] - border-radius)
        @car = paper.rect(x, y, width, height, borderRadius).attr("fill", "#f00")
        #rect.attr("fill", "#f00");
        @andge = 0

    move: () =>
        @car.animate([{ transform: ""}, {transform : "r-30t100,0"}, {transform : "r0t175,0"}, {transform : "r15t250,0"}], 800)
        true

    poke: () =>

    getAngle: () =>
        @andge

    getPosition: () =>


class Interpolator
    constructor: ({@start, @end, @duration}) ->

    getValue: () =>

$ =>
    paper = Raphael(100, 50, 1000, 600)
    car = new Car(paper, 100, 100)

    setTimeout(()=>
            car.move()
        , 2000)
    true
