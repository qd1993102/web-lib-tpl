const path = require('path');

module.exports = {
  entry: './index.ts',
  output: {
    path: path.resolve(process.cwd(), 'es'),
    filename: 'index.js'
  },
  module: {
    rules: [
      { test: /\.ts|tsx$/, use: 'ts-loader' }
    ]
  },
  resolve: {
    extensions: [ '.tsx', '.ts', '.js' ],
    alias: {
      src: path.resolve(process.cwd(), 'src')
    }  
  }
};