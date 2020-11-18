
// import { BazelResolverPlugin, IBazelWebpackOptions } from '@oswee/tools/webpack'
// import * as webpack from 'webpack'
// import * as path from 'path'
// import * as HtmlWebpackPlugin from 'html-webpack-plugin'
// import * as fs from 'fs'

const webpack = require('webpack')
const path = require('path')
const HtmlWebpackPlugin = require('html-webpack-plugin')
const fs = require('fs')

module.exports = (env, argv) => ({
  mode: argv.mode || 'development',
  target: 'web',
  entry: [path.resolve(process.env.RUNFILES, 'bazel/index')],
  output: {
    path: path.dirname(path.resolve(argv.output)),
    filename: path.basename(argv.output),
  },
  optimization: {
    minimize: argv.mode === 'production',
  },
  watchOptions: {
    ignored: ['/node_modules/'],
  },
  stats: {
    warnings: true,
  },
  // node: {
  //   fs: 'empty',
  //   child_process: 'empty',
  // },
  devtool: 'source-map',
  devServer: {
    port: 3000,
    open: false,
    historyApiFallback: true, // Serves index file for any path
    hot: true, // https://github.com/webpack/webpack-dev-server/issues/97#issuecomment-69726201
    compress: true,
    allowedHosts: ['dev.oswee.com'], // Disabling this and the disableHostCheck leads to Invalid Host header by HAProxy
    http2: true,
    https: {
      key: fs.readFileSync('/home/dzintars/.tls/oswee.com/privkey.pem'),
      cert: fs.readFileSync('/home/dzintars/.tls/oswee.com/fullchain.pem'),
      ca: fs.readFileSync('/home/dzintars/.tls/oswee.com/fullchain.pem'),
    },
    overlay: {
      warnings: true,
      errors: true,
    },
    // TODO: Use devServer.transportMode wss
    sockHost: 'dev.oswee.com',
    sockPath: '/sockjs-node',
    sockPort: 443,
    publicPath: '/',
    contentBase: path.resolve('./index'),
    stats: {
      colors: true,
    },
    after: (_, socket) => {
      // Listen to STDIN, which is written to by ibazel to tell it to reload.
      // Must check the message so we only bundle after a successful build completes.
      process.stdin.on('data', data => {
        if (!String(data).includes('IBAZEL_BUILD_COMPLETED SUCCESS')) {
          return
        }
        socket.sockWrite(socket.sockets, 'content-changed')
      })
    },
  },
  resolve: {
    extensions: ['.ts', '.js', '.json', '.css'],
    // This makes sure we can resolve modules in bazel, but only works in runfiles.
    // TODO: Copy rollup_bundle node_modules linking example so we can remove this.
    // plugins: [new BazelResolverPlugin()],
    alias: {
      '@oswee': path.resolve(process.env.RUNFILES, 'oswee'),
    },
  },
  plugins: [
    new HtmlWebpackPlugin({
      template: './template.html',
      favicon: './favicon.ico',
      filename: './index.html',
    }),
    new webpack.HotModuleReplacementPlugin({
      // Options...
    }),
  ],
  module: {
    rules: [
      {
        test: /\.css$/,
        exclude: ['/node_modules/'],
        use: [
          { loader: require.resolve('style-loader') },
          {
            loader: require.resolve('css-loader'),
          },
        ],
      },
    ],
  },
})
