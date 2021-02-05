#!/usr/bin/env pwsh

$dockerRepoName="stephenwike"
$imageName="image-server"
$version="0.0.1"

Push-Location -Path "./src"
    docker build -t "${dockerRepoName}/${imageName}:${version}" -t "${dockerRepoName}/${imageName}:latest" .
    docker push "${dockerRepoName}/${imageName}:${version}" 
    docker push "${dockerRepoName}/${imageName}:latest"
Pop-Location
