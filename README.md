# tilloo-pi

This repository provides samples to:

1. Get a Raspberry PI/raspbian based k8s cluster ready to deploy tilloo
2. Deploy the tilloo job scheduler engine into that k8s cluster

## Getting Started

1. You need at least one amd64 node joined to the k8s cluster.  This is mainly used as a deployment target for mongodb and disque.  Mongodb has arm64 images but not arm32v6 images that raspbian requires.  Disque is only compiled for amd64 and it's replacement built into Redis v6 is not out yet.
2. You need to have a base k8s cluster up and running with at least two raspbian nodes and an ubuntu amd64 node.
3. Make sure you disable apparmor on the ubuntu node or else you may hit issues getting docker to stop/start containers in conjunction with k8s.
4. MetalLB is used to provide public ip addresses in layer 2 mode from your local network to the cluster.  You will need to modify metallb-config.yaml to provide the pool of addresses it should allocation from.
5. tilloo/k8s:latest is a multi-architecture manifest that includes amd64 and arm32v6 images. 
6. You will need to build both amd64 and arm32v6 images of tilloo and push them to a repository.  You will need to replace my repository 'chriskinsman' with yours.
7. You will need to modify tilloo.yaml to point at the images in your repository instead of mine.
8. You will need to add a /etc/hosts entry for tilloo.local.  This is due to the nginx ingress using host headers.  If you hit it's cluster ip without a host header you will end up with a 404 not found.

Steps are intended to be run in numerical order.

