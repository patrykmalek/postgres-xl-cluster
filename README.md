# Table of Contents

- [Introduction](#introduction)
- [Geographic Replication](#geographic-replication)
- [Scaling](#scaling)
- [Glossary](#glossary)
- [Runtime/Test Environment](#runtime-test-environment)

## Introduction

The purpose of this documentation is to describe the configuration and testing of a Postgres-XL cluster with high availability (HA) enabled for the Computer Systems Administration laboratory project.

This cluster will be based on PostgreSQL, allowing for vertical and horizontal scaling.

## Geographic Replication

Geographic replication can be achieved through log shipping between database nodes. The replication process involves sending all the committed transactions to another node.

Key factors affecting the effectiveness of this method include stable and fast connectivity between the machines and minimizing latency. High latency can lead to issues in proper data synchronization.

## Scaling

Vertical scaling involves increasing the computing power of a single node by adding more RAM, increasing the number of processors, or upgrading to more powerful hardware.

Horizontal scaling involves adding additional nodes to the cluster to increase its computing power and capacity.

Both types of scaling can be utilized in Postgres-XL to improve system performance and resilience to failures.

## Glossary

- AZ (Availability Zone) - A group of database nodes located in the same geographic region but placed in different availability zones within that region. AZ increases reliability and fault tolerance (in the event of a failure, the remaining AZ nodes can take over the tasks of the damaged unit).
- RDS (Relational Database Service) - A service for managing relational databases in AWS. It enables easy creation, scaling, and management of databases.
- MPLS (Multiprotocol Label Switching) - A technology that provides fast and reliable data transmission by ensuring appropriate priority and flow of network traffic.

## Runtime/Test Environment

To run the Postgres-XL cluster in a test environment, we used Vagrant and VirtualBox.

Vagrant is a tool for managing virtual machines that allows for easy and reproducible environment configuration.

VirtualBox is free virtualization software that enables running virtual machines on your computer.

Environment Version:

- Vagrant 2.3.6
- VirtualBox 7.0.8 r156879
- debian/bullseye64 (Vagrant Box)
- PostgreSQL 11

> ## The rest of the project was presented in the documentation in PDF file, along with a description in Polish and screenshots as a form of documentation of the activities carried out.

> ## [Documentation on Google Docs](https://docs.google.com/document/d/1VyvT1N6N2KJk0BHbv34aL7YicRbMxCNDMuIp3-kqO3Q/edit?usp=sharing)
>
> ## [Documentation in PDF](./documentation/ASK%20-%20Configuration%20and%20testing%20of%20HA-enabled%20Postgres-XL%20Cluster_Kolasiak-Ma%C5%82ek.pdf)
