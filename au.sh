#!/bin/bash
echo "reparando auriculares"
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Max (editable)" $1 
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" $1
defaults write com.apple.BluetoothAudioAgent "Apple Initial Bitpool (editable)" $1
defaults write com.apple.BluetoothAudioAgent "Apple Initial Bitpool Min (editable)" $1 
defaults write com.apple.BluetoothAudioAgent "Negotiated Bitpool" $1
defaults write com.apple.BluetoothAudioAgent "Negotiated Bitpool Max" $1
defaults write com.apple.BluetoothAudioAgent "Negotiated Bitpool Min" $1
echo "listo"
