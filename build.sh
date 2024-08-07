#!/usr/bin/env bash

set -e

echo "[ ] Building compiler..."
go build -C Compiler -o ../osclanc cmd/cli/main.go
echo "Done"

echo "[ ] Building analyzer..."
dotnet build OSCLAN.OutputAnalyzer
echo "Done"