using Dash, DashHtmlComponents, DashCoreComponents

app = dash()

app.layout = html_div() do
    html_h1("Hello, Julia!")
end

# for local viewing only

# run_server(app, "0.0.0.0", debug = true)

# for Heroku

port = parse(Int64, ENV["PORT"])

run_server(app, "0.0.0.0", port)