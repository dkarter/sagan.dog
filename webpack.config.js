const path = require('path');
const ExtractTextPlugin = require('extract-text-webpack-plugin');

module.exports = {
  entry: ['./src/index.js', './stylesheets/main.scss'],
  output: {
    path: path.resolve(__dirname, 'dist'),
    filename: 'app.bundle.js',
  },
  resolve: {
    extensions: ['.js', '.elm'],
  },
  module: {
    rules: [
      {
        test: /\.elm$/,
        exclude: [/elm-stuff/, /node_modules/],
        loader: 'elm-webpack-loader',
        options: {
          cwd: path.resolve(__dirname),
        },
      },
      {
        test: /\.scss$/,
        use: ExtractTextPlugin.extract({
          loader: ['css-loader', 'sass-loader'],
        }),
      },
    ],
    noParse: /\.elm$/,
  },
  plugins: [new ExtractTextPlugin('styles.css')]
  // devServer: {
  //   hot: true,
  // },,,
};
