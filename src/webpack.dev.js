// import { BazelResolverPlugin, IBazelWebpackOptions } from '@oswee/tools/webpack'
// import * as webpack from 'webpack'
// import * as path from 'path'
// import * as HtmlWebpackPlugin from 'html-webpack-plugin'
// import * as fs from 'fs'
import webpack from 'webpack';
import path from 'path';
import HtmlWebpackPlugin from 'html-webpack-plugin';
import fs from 'fs';
module.exports = (env, argv) => ({
    context: __dirname,
    mode: argv.mode || 'development',
    target: 'es2020',
    entry: {
        main: './index.ts',
    },
    output: {
        path: path.resolve(__dirname, 'dist'),
        filename: '[name].bundle.js',
        publicPath: '/',
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
        historyApiFallback: true,
        hot: true,
        compress: true,
        allowedHosts: ['dev.oswee.com'],
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
                    return;
                }
                socket.sockWrite(socket.sockets, 'content-changed');
            });
        },
    },
    resolve: {
        extensions: ['.ts', '.js', '.json', '.css'],
        // This makes sure we can resolve modules in bazel, but only works in runfiles.
        // TODO: Copy rollup_bundle node_modules linking example so we can remove this.
        // plugins: [new BazelResolverPlugin()],
        alias: {
            '@oswee': path.resolve('/'),
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
                test: '/\.ts?$/',
                exclude: ['/node_modules/'],
                loader: require.resolve('ts-loader'),
                options: {
                    configFile: 'tsconfig.base.json'
                }
                // options: PnpWebpackPlugin.tsLoaderOptions(),
                // options: PnpWebpackPlugin.tsLoaderOptions({ transpileOnly: true }),
            },
            {
                test: '/\.css$/',
                exclude: ['/node_modules/'],
                use: [
                    { loader: require.resolve('style-loader') },
                    { loader: require.resolve('css-loader'), },
                ],
            },
        ],
    },
});
//# sourceMappingURL=webpack.dev.js.map