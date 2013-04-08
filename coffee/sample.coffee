borderRadius = 10
height = 100
width = 200
driverRestriction = 10

class Driver
    constructor: ->
        @value = 1

    poke: => 
        @value++;
        if (@value > driverRestriction)
            @value = 5
        else
            @value = getRandomValue({min: @value})
        return @value

    getFocus: ->
        @value

    getRandomValue = (min, max) -> 
        max = min + 1 unless max
        (Math.random() * (max - min + 1)) + min


class Car
    constructor: (paper, x, y) ->
        # rect(x, y, width, height, [r] - border-radius)
        @car = paper.rect(x, y, width, height, borderRadius).attr("fill", "#f00")
        #rect.attr("fill", "#f00");
        @andge = 0
        @driver = new Driver()

    move: =>
        moveCar()
        true

    moveCar =->
        focus = @driver.getFocus()
        

        @car.animate([{ transform: ""}, {transform : "r-30t100,0"}, {transform : "r0t175,0"}, {transform : "r15t250,0"}], 800)

    getDriver = ->
        @driver

    getAngle: =>
        @andge

    getPosition: =>

class Interpolator
    constructor: ({@start, end, duration}) ->
        @time = new Date()
        @duration = duration * 1000
        @length = end - @start

    getValue: =>
        factor = (new Date() - @time) / @duration
        factor = 1 if factor > 1
        @start + factor * @length



$ =>
    paper = Raphael(100, 50, 1000, 600)
    car = new Car(paper, 100, 100)

    setTimeout(()=>
            #car.move()
            value = new Interpolator({start : 1, end : 40, duration : 60}).getValue()
            car.getDriver().poke()
            console.log(value)
        , 1000)
    true