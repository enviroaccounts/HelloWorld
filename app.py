from dash import Dash, html, dcc, callback, Output, Input
import plotly.express as px
import pandas as pd

app = Dash(__name__)

app.layout = html.Div([
    html.H1(children='Hello World and everyone and anyone else! Good 😁😊👍', style={'textAlign': 'center'})
])

if __name__ == '__main__':
    app.run(host= '0.0.0.0', debug=True)