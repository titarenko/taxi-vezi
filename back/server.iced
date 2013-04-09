express = require 'express'
mongoose = require 'mongoose'
log = require './log'
lessCompiler = require './lessCompiler'

port = process.env.PORT or 3000
connectionString = process.env.CONNECTION_STRING or "http://localhost/taxi-vezi"

mongoose.connect connectionString, ->
	log.info "Connected to #{connectionString}."

app = express()

app.use express.bodyParser()
app.use lessCompiler __dirname + "/../front"

app.set "view engine", "jade"
app.set "views", __dirname + "/../front"

app.get "/", (req, res) ->
	res.render "app"

app.listen port, ->
	log.info "Listening on #{port}..."
