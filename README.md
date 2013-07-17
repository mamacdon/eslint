eslint-orion
============
The goal is to be able to browserify this module and package it as a client-side plugin
for Orion. ESLint as currently written is problematic for browserify, as it relies on Node's
synchronous IO methods for loading rules.

