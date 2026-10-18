# ASSIGNMENT 1 - Linux User Management & Automation on AWS EC2

## 📌 Overview
This project demonstrates user management, role-based access control, secure SSH authentication, and automation using shell scripting on an Ubuntu EC2 instance.

It simulates real-world DevOps practices by implementing controlled access for multiple users and automating system maintenance tasks.

---

## 🚀 Features
- Role-based user creation (admin, developer, readonly)
- Controlled sudo permissions using visudo
- Secure SSH key-based authentication
- Bash script for automated system updates
- Logging of update activity
- Cron job scheduling for daily automation

---

## 🛠️ Tech Stack
- AWS EC2
- Ubuntu Linux
- Bash Scripting
- Cron Jobs
- SSH

---

## 📂 Project Structure
.
├── scripts/
├── screenshots/
├── report/
└── README.md


---

## ⚙️ Setup Steps
1. Launch Ubuntu EC2 instance
2. Connect using SSH
3. Create users:
   - admin-user
   - dev-user
   - readonly-user
4. Configure sudo access using visudo
5. Set up SSH key authentication
6. Create `system-update.sh` script
7. Schedule cron job for automation

---

## 🧾 Automation Script
```bash
#!/bin/bash

echo "System update started at $(date)" >> update.log

sudo apt update -y >> update.log 2>&1
sudo apt upgrade -y >> update.log 2>&1

echo "System update completed at $(date)" >> update.log

📚 Key Learnings
Importance of least privilege access
Secure authentication using SSH keys
Automating repetitive system tasks
Real-world Linux system administration
```


# ASSIGNMENT 2 - linux-log-analysis-monitoring

## Overview
This project demonstrates Linux system monitoring, log analysis, log rotation, and automation using Bash scripting and cron jobs on an Ubuntu server.

The assignment simulates real-world Linux administration and DevOps monitoring tasks by analyzing system logs, monitoring disk usage, automating alerts, and managing log files efficiently.

---

## Features

- Log rotation using logrotate
- Weekly log rotation with 4-week retention
- Log analyzer script for detecting system errors
- Disk monitoring and alert generation
- Automated monitoring using cron jobs
- Bash scripting for system administration tasks

---

## Technologies Used

- Ubuntu Linux
- Bash Scripting
- Cron Jobs
- Logrotate
- Linux System Logs
- AWS EC2

---

## Project Structure

```text
linux-log-analysis-monitoring/
│
├── README.md
│
├── report/
│   └── assignment-2-report.pdf
│
├── screenshots/
│   ├── 01-application-log.png
│   ├── 02-logrotate-config.png
│   ├── 03-logrotate-output.png
│   ├── 04-log-analyzer-script.png
│   ├── 05-log-analyzer-output.png
│   ├── 06-disk-monitor-script.png
│   ├── 07-disk-monitor-output.png
│   └── 08-cron-jobs.png
│
├── scripts/
│   ├── log-analyzer.sh
│   └── disk-monitor.sh
│
└── configs/
    └── application-logrotate.conf
```


# ASSIGNMENT 3 - aws-vpc-design-subnetting

## Overview
This project demonstrates AWS VPC design and subnetting by creating a custom Virtual Private Cloud with public and private subnets across multiple Availability Zones.

The project simulates real-world cloud networking architecture used in production environments for secure and scalable infrastructure deployment.

---

## Features

- Custom VPC creation
- Public and private subnet configuration
- Multi-AZ subnet architecture
- Internet Gateway attachment
- Route table configuration
- Subnet association management
- AWS networking architecture design

---

## Technologies Used

- AWS VPC
- AWS Subnets
- Internet Gateway
- Route Tables
- AWS Networking
- Ubuntu EC2

---

## Architecture Design

- VPC CIDR: `10.0.0.0/16`

### Public Subnets
- Public Subnet AZ-1: `10.0.1.0/24`
- Public Subnet AZ-2: `10.0.2.0/24`

### Private Subnets
- Private Subnet AZ-1: `10.0.11.0/24`
- Private Subnet AZ-2: `10.0.12.0/24`

---

## Project Structure

```text
aws-vpc-design-subnetting/
│
├── README.md
│
├── report/
│   └── assignment-3-report.pdf
│
├── screenshots/
│   ├── 01-vpc-created.png
│   ├── 02-public-subnet-az1.png
│   ├── 03-public-subnet-az2.png
│   ├── 04-private-subnet-az1.png
│   ├── 05-private-subnet-az2.png
│   ├── 06-internet-gateway.png
│   ├── 07-route-table-public.png
│   ├── 08-route-table-private.png
│   ├── 09-subnet-associations.png
│   ├── 10-vpc-resource-map.png
│   └── 11-architecture-diagram.png
│
└── architecture/
    └── architecture-diagram.png
```


# Assignment 4 - NAT Gateway Implementation

## Objective

Implement NAT Gateway architecture to provide secure internet access to private subnet EC2 instances.

## Components Used

- AWS VPC
- NAT Gateway
- Elastic IP
- Public EC2 (Bastion Host)
- Private EC2
- Route Tables

## Workflow

Internet
↓
Internet Gateway
↓
Public Subnet
↓
NAT Gateway
↓
Private Route Table
↓
Private EC2

## Verification

### Internet Connectivity Test

```bash
curl https://api.ipify.org
```


# Assignment 5 - Bastion Host Setup

## Objective

Implement a Bastion Host architecture in AWS to securely access a private EC2 instance using SSH Agent Forwarding.

---

## Architecture

Laptop
↓ SSH
Bastion Host (Public Subnet)
↓ SSH Agent Forwarding
Private EC2 (Private Subnet)

---

## Components Used

* AWS VPC
* Public Subnet
* Private Subnet
* Internet Gateway
* EC2 Instances
* Security Groups
* SSH Agent Forwarding

---

## Security Configuration

### Bastion Security Group

Inbound:

* SSH (22) → My Public IP

### Private EC2 Security Group

Inbound:

* SSH (22) → Bastion Security Group

---

## SSH Configuration

Configured SSH ProxyJump and Agent Forwarding using:

~/.ssh/config

This allowed secure access to the private EC2 without copying private keys to AWS instances.

---

## Verification

Successfully connected:

Laptop
→ Bastion Host
→ Private EC2

Verified secure access through SSH Agent Forwarding.

---

## Learning Outcomes

* Bastion Host Architecture
* Public and Private Networking
* Security Group Referencing
* SSH Agent Forwarding
* Secure Remote Administration

---

## Screenshots Included

* Bastion Host Details
* Bastion Security Group
* Private EC2 Details
* Private Security Group
* SSH Config File
* Bastion Login
* Bastion Jump to Private EC2


# AWS Assignment 6 - Hub and Spoke Architecture using AWS Transit Gateway

## Project Overview

This project demonstrates the implementation of a **Hub and Spoke network architecture** in Amazon Web Services (AWS) using **AWS Transit Gateway**. The architecture enables secure and centralized communication between multiple Virtual Private Clouds (VPCs), simplifying network management and improving scalability.

This assignment was completed as part of my Cloud Computing coursework.

---

## Objective

- Create one Hub VPC and two Spoke VPCs.
- Deploy an AWS Transit Gateway.
- Attach all VPCs to the Transit Gateway.
- Configure route tables for inter-VPC communication.
- Launch EC2 instances in each VPC.
- Verify connectivity between all VPCs using private IP addresses.

---

## Architecture Diagram

> Replace the image below with your architecture diagram.

<p align="center">
  <img src="architecture/hub-spoke-architecture.png" width="900">
</p>

---

## Network Topology

| Component | CIDR Block |
|------------|------------|
| Hub VPC | 10.1.0.0/16 |
| Spoke VPC 1 | 10.2.0.0/16 |
| Spoke VPC 2 | 10.3.0.0/16 |

---

## AWS Services Used

- Amazon VPC
- AWS Transit Gateway
- Amazon EC2
- Internet Gateway
- Route Tables
- Security Groups

---

## Project Structure

```
aws-assignment-6-hub-spoke-architecture/
│
├── README.md
├── Assignment_6_Hub_and_Spoke_Architecture_Report.pdf
│
├── architecture/
│   └── hub-spoke-architecture.png
│
└── screenshots/
    ├── 01-created-hub-vpc.png
    ├── 02-created-spoke-vpc-1.png
    ├── 03-created-spoke-vpc-2.png
    ├── ...
    └── 27-ping-output.png
```

---

## Implementation Steps

### 1. Created Hub VPC

- Hub VPC CIDR: **10.1.0.0/16**

---

### 2. Created Spoke VPCs

- Spoke VPC 1: **10.2.0.0/16**
- Spoke VPC 2: **10.3.0.0/16**

---

### 3. Created Subnets

Each VPC contains one subnet:

| VPC | Subnet |
|------|--------|
| Hub | 10.1.1.0/24 |
| Spoke 1 | 10.2.1.0/24 |
| Spoke 2 | 10.3.1.0/24 |

---

### 4. Configured Internet Gateway

An Internet Gateway was attached to the Hub VPC to provide internet connectivity.

---

### 5. Created AWS Transit Gateway

A Transit Gateway was deployed to act as the central router connecting all VPCs.

---

### 6. Attached VPCs to Transit Gateway

Created three Transit Gateway attachments:

- Hub Attachment
- Spoke 1 Attachment
- Spoke 2 Attachment

---

### 7. Configured Route Tables

Each VPC route table was updated with routes pointing to the Transit Gateway.

---

### 8. Launched EC2 Instances

One EC2 instance was launched in each VPC.

| Instance | Private IP |
|-----------|------------|
| Hub EC2 | 10.1.1.236 |
| Spoke 1 EC2 | 10.2.1.4 |
| Spoke 2 EC2 | 10.3.1.89 |

---

### 9. Verified Connectivity

Connectivity was successfully verified using the **ping** command.

- Hub → Spoke 1 ✅
- Hub → Spoke 2 ✅

This confirms successful inter-VPC communication through AWS Transit Gateway.

---

## Sample Screenshots

### Transit Gateway

<p align="center">
<img src="screenshots/09-transit-gateway-created.png" width="900">
</p>

---

### Transit Gateway Attachments

<p align="center">
<img src="screenshots/19-tgw-all-attachments.png" width="900">
</p>

---

### Route Table Configuration

<p align="center">
<img src="screenshots/23-hub-route-table.png" width="900">
</p>

---

### Connectivity Test

<p align="center">
<img src="screenshots/27-ping-output.png" width="900">
</p>

---

## Challenges Faced

- Understanding Transit Gateway routing.
- Configuring inter-VPC route tables correctly.
- Troubleshooting SSH connectivity.
- Verifying communication using private IP addresses.

---

## Learning Outcomes

Through this project, I learned how to:

- Design Hub and Spoke network architecture.
- Configure AWS Transit Gateway.
- Connect multiple VPCs.
- Configure VPC route tables.
- Launch EC2 instances.
- Verify inter-VPC communication.
- Understand centralized cloud networking.

---

## Conclusion

This project successfully demonstrates the implementation of a Hub and Spoke Architecture using AWS Transit Gateway. Multiple VPCs were connected through a centralized Transit Gateway, route tables were configured correctly, and communication between all VPCs was successfully verified. This architecture provides a scalable, secure, and efficient networking solution for cloud environments.


# Assignment 7 - VPC Peering and Network ACLs

## Overview

This project demonstrates how to establish private communication between two Amazon Virtual Private Clouds (VPCs) using **AWS VPC Peering**. Two VPCs with different CIDR blocks were created, connected through a VPC Peering Connection, and configured with custom route tables and Network ACLs. Connectivity between the VPCs was successfully verified using Amazon EC2 instances.

---

## Objective

- Create two VPCs with different CIDR blocks.
- Establish a VPC Peering Connection.
- Configure route tables for inter-VPC communication.
- Verify Network ACL configuration.
- Launch EC2 instances in both VPCs.
- Test connectivity using private IP addresses.

---

## AWS Services Used

- Amazon VPC
- Amazon EC2
- VPC Peering Connection
- Internet Gateway
- Route Tables
- Public Subnets
- Security Groups
- Network ACLs

---

## Network Design

### VPC-A

| Property | Value |
|----------|-------|
| CIDR Block | 10.10.0.0/16 |
| Public Subnet | 10.10.1.0/24 |
| EC2 Private IP | 10.10.1.26 |

### VPC-B

| Property | Value |
|----------|-------|
| CIDR Block | 10.20.0.0/16 |
| Public Subnet | 10.20.1.0/24 |
| EC2 Private IP | 10.20.1.89 |

---

## Project Architecture

```text
                         Internet
                             |
                 +-----------+-----------+
                 |                       |
             Internet Gateway      Internet Gateway
                 |                       |
          +------+-------+       +-------+------+
          |    VPC-A     |       |    VPC-B     |
          |10.10.0.0/16  |       |10.20.0.0/16  |
          |              |       |              |
          | PublicSubnet |       | PublicSubnet |
          |10.10.1.0/24  |       |10.20.1.0/24  |
          |              |       |              |
          | EC2-VPC-A    |       | EC2-VPC-B    |
          |10.10.1.26    |       |10.20.1.89    |
          +------+-------+       +-------+------+
                 \                     /
                  \                   /
                   \                 /
                  VPC Peering Connection
```

---

## Implementation Steps

1. Created **VPC-A** (10.10.0.0/16).
2. Created **VPC-B** (10.20.0.0/16).
3. Created one public subnet in each VPC.
4. Attached an Internet Gateway to both VPCs.
5. Created custom Route Tables.
6. Associated Route Tables with public subnets.
7. Launched Ubuntu EC2 instances.
8. Created and accepted a VPC Peering Connection.
9. Updated Route Tables with peering routes.
10. Verified Network ACL configuration.
11. Connected to EC2 using SSH.
12. Successfully tested connectivity using the `ping` command.

---

## Connectivity Test

The connectivity between EC2 instances was verified using private IP addresses.

Command used:

```bash
ping 10.20.1.89
```

Result:

- 11 packets transmitted
- 11 packets received
- 0% packet loss

This confirms that the VPC Peering Connection and routing configuration were successfully implemented.

---

## Project Structure

```
Assignment-7-VPC-Peering-Network-ACLs/
│
├── README.md
├── Report/
│   └── Assignment_7_Report.pdf
│
├── Screenshots/
│   ├── 01-created-vpc-a.png
│   ├── 02-created-vpc-b.png
│   ├── 03-subnet-vpc-a.png
│   ├── 04-subnet-vpc-b.png
│   ├── 05-igw-vpc-a.png
│   ├── 06-igw-vpc-b.png
│   ├── 07-route-table-vpc-a.png
│   ├── 08-route-table-vpc-b.png
│   ├── 09-ec2-vpc-a.png
│   ├── 10-ec2-vpc-b.png
│   ├── 11-vpc-peering.png
│   ├── 12-updated-route-table-vpc-a.png
│   ├── 13-updated-route-table-vpc-b.png
│   ├── 14-network-acl-vpc-a.png
│   ├── 15-network-acl-vpc-b.png
│   ├── 16-ssh-login.png
│   └── 17-connectivity-test.png
```

---

## Learning Outcomes

After completing this assignment, I learned how to:

- Design multiple VPCs with different CIDR blocks.
- Configure Internet Gateways and Route Tables.
- Launch EC2 instances inside custom VPCs.
- Establish secure communication using VPC Peering.
- Configure and verify Network ACLs.
- Test private communication between EC2 instances.
- Troubleshoot AWS networking issues related to routing and security.

---

## Challenges Faced

- SSH connectivity initially failed because the public IP address changed, requiring an update to the Security Group rule.
- Route tables had to be configured correctly in both VPCs to enable communication.
- Connectivity was verified only after confirming Security Groups, Route Tables, Internet Gateways, and VPC Peering configuration.

---

## Conclusion

This project successfully demonstrated the implementation of **AWS VPC Peering** for secure communication between two isolated VPCs. Custom networking components, including subnets, Internet Gateways, Route Tables, Security Groups, and Network ACLs, were configured correctly. Connectivity between EC2 instances was successfully verified using private IP addresses, demonstrating a working inter-VPC networking solution.


# ASSIGNMENT 8 - AWS Auto Scaling Web Servers

## 📌 Project Overview

This project demonstrates the implementation of a scalable and highly available web server infrastructure on AWS using:

- Amazon EC2
- EC2 Auto Scaling
- Application Load Balancer (ALB)
- Target Groups
- Launch Templates
- CloudWatch
- AWS Systems Manager (SSM)
- IAM
- Security Groups

The infrastructure automatically increases or decreases the number of EC2 instances based on CPU utilization.

---

## 🎯 Objective

The objective of this project is to:

- Deploy web server instances using Amazon EC2.
- Create a Launch Template for consistent EC2 instance configuration.
- Configure an Application Load Balancer to distribute HTTP traffic.
- Create a Target Group for EC2 instances.
- Configure an Auto Scaling Group with minimum, desired, and maximum capacity.
- Implement a target tracking scaling policy based on CPU utilization.
- Use AWS Systems Manager to remotely manage EC2 instances.
- Generate CPU load and verify automatic scaling.
- Monitor scaling activities using CloudWatch and Auto Scaling metrics.

---

## 🏗️ Architecture

```text
                        Internet
                           |
                           |
                      HTTP Port 80
                           |
                           v
              +-------------------------+
              | Application Load        |
              | Balancer                |
              | ALB-ASG-WebServer       |
              +------------+------------+
                           |
                           v
                 +-------------------+
                 | Target Group      |
                 | TG-ASG-WebServer  |
                 +---------+---------+
                           |
              +------------+------------+
              |                         |
              v                         v
       +-------------+           +-------------+
       | EC2 Instance|           | EC2 Instance|
       | Web Server  |           | Web Server  |
       +-------------+           +-------------+
              \                         /
               \                       /
                +---------------------+
                | Auto Scaling Group  |
                | ASG-ASG-WebServer   |
                | Min: 2              |
                | Desired: 2          |
                | Max: 5              |
                +----------+----------+
                           |
                           v
                 Average CPU Utilization
                           |
                           v
                  Target Tracking Policy
                           |
                           v
                 Launch / Remove EC2
```

---

# ASSIGNMENT 9 - S3 Lifecycle Management and Versioning

## 📌 Project Overview

This assignment demonstrates Amazon S3 object lifecycle management, object versioning, controlled public-read access using a bucket policy, and server access logging. The configuration was tested in the AWS Asia Pacific (Mumbai) Region (`ap-south-1`).

The AWS resources were deleted after testing to avoid ongoing charges. The report and policy JSON files are retained in this repository as implementation documentation.

## 🎯 Objective

- Create an S3 general-purpose bucket.
- Enable bucket versioning and verify that multiple versions of the same object are retained.
- Configure lifecycle transitions to S3 Standard-IA after 30 days and S3 Glacier Flexible Retrieval after 90 days.
- Configure object expiration after 365 days and cleanup of noncurrent versions.
- Grant public read access only to objects under the `public/` prefix.
- Enable S3 server access logging, verify log delivery, and clean up AWS resources after evidence collection.

## 🛠️ AWS Services and Concepts Used

- Amazon S3 general-purpose buckets
- S3 Versioning
- S3 Lifecycle rules
- S3 Standard-IA
- S3 Glacier Flexible Retrieval
- S3 bucket policies and Block Public Access settings
- S3 Server Access Logging
- Chrome Incognito for anonymous public-access verification

## 🏗️ Logical Architecture

```text
                         Test user / browser
                           |             |
               Public URL  |             | Private object URL
                           v             v
                 +--------------------------------+
                 | Source S3 bucket               |
                 | assignment-09-amzn-s3-bucket  |
                 |                                |
                 | public/                        |
                 |   public-demo.txt              |
                 |   Public read only             |
                 |                                |
                 | version-demo.txt               |
                 |   Private; two object versions |
                 +----------------+---------------+
                                  |
                                  | Server access logs
                                  | prefix: access-logs/
                                  v
                 +--------------------------------+
                 | Logging destination bucket     |
                 | assignment-09-amzn-s3-logs-... |
                 +--------------------------------+

                 Lifecycle policy (configured):
                 Day 30  -> S3 Standard-IA
                 Day 90  -> S3 Glacier Flexible Retrieval
                 Day 365 -> Expire current object version
```

## ⚙️ Implementation Summary

### 1. Created the Source Bucket

- **Bucket name:** `assignment-09-amzn-s3-bucket`
- **AWS Region:** Asia Pacific (Mumbai), `ap-south-1`
- **Bucket type:** General purpose
- Kept default encryption enabled.
- Kept ACLs disabled / Bucket owner enforced.
- Kept Block Public Access enabled initially; later adjusted only the bucket-policy-related blocking settings needed for the specific public-read policy.

### 2. Enabled and Tested Versioning

Enabled S3 Bucket Versioning from **Properties → Bucket Versioning**.

Uploaded `version-demo.txt`, changed its contents, and uploaded the modified file with the same key. In the S3 console, **Show versions** displayed two entries with different Version IDs, verifying that S3 retained multiple versions rather than overwriting the previous version permanently.

### 3. Configured Lifecycle Management

Created the enabled lifecycle rule `a9-lifecycle-30-90-365`, scoped to the entire bucket.

| Action | Configured timing |
|---|---|
| Transition current objects to S3 Standard-IA | 30 days after object creation |
| Transition current objects to S3 Glacier Flexible Retrieval | 90 days after object creation |
| Expire current object versions | 365 days after object creation |
| Permanently delete noncurrent versions | 365 days after they become noncurrent |

The rule was saved and verified in the S3 Lifecycle configuration page.

**Lifecycle note:** The console displayed a default minimum object size of 128 KB for transitions. The small demonstration files were used to demonstrate versioning and access controls, not to observe real storage-class transitions. The lifecycle rule was configured, but actual transitions were not observed during this short test because the files were small and had not aged to the configured thresholds.

With versioning enabled, expiration of a current version generally creates a delete marker; older noncurrent versions are handled separately by the configured noncurrent-version expiration action.

### 4. Configured Public Read Access for One Prefix

Created the `public/` folder and uploaded `public-demo.txt`.

Applied a bucket policy granting only `s3:GetObject` to:

```text
arn:aws:s3:::assignment-09-amzn-s3-bucket/public/*
```

The policy does not grant public upload, delete, or bucket-list permissions. ACL-based public access was not used.

**Verification performed:**
- Opened `public/public-demo.txt` using the clean S3 object URL in an Incognito window; the file contents displayed without signing in.
- Tested the root-level `version-demo.txt` URL; the user reported that the private-object test returned access denied.

### 5. Enabled Server Access Logging

Created a separate destination bucket in the same account and Region.

- **Source bucket:** `assignment-09-amzn-s3-bucket`
- **Destination bucket:** `assignment-09-amzn-s3-logs-181026-5842`
- **Destination prefix:** `access-logs/`
- **Log object key format:** Default format

Server access logging was enabled and the configuration was verified in the source bucket's Properties page. Four log objects were subsequently observed under the `access-logs/` prefix, confirming successful log delivery during the test.

## 📄 Deliverables

The report and policy JSON documents are stored in the [Assignment 9 folder](https://github.com/yashsutar007/aws-cloud-computing-assignments/tree/main/Assignment%209).

- `Assignment_09_S3_Lifecycle_Management_and_Versioning_Report.pdf` — implementation report with screenshots and verification results.
- `Assignment_09_S3_Lifecycle_Management_and_Versioning_Report.docx` — editable report, if included in the folder.
- `lifecycle-policy.json` — lifecycle rule configuration JSON.
- `bucket-policy-public-folder.json` — bucket policy JSON restricted to the `public/*` prefix.

Screenshots used as evidence cover bucket creation, versioning, lifecycle configuration, bucket policy, the public object and access test, the logging destination, enabled logging, and delivered access logs.

## 🧹 Cleanup

After collecting the screenshots and JSON deliverables:

1. Disabled server access logging on the source bucket.
2. Emptied the versioned source bucket, including object versions and delete markers.
3. Deleted `assignment-09-amzn-s3-bucket`.
4. Emptied the logging destination bucket after saving evidence of the delivered logs.
5. Deleted `assignment-09-amzn-s3-logs-181026-5842`.

Both buckets were deleted after the test. The configuration is therefore documented by the saved report and screenshots; the live resources are no longer present in AWS.

## 📚 Key Learnings

- S3 Versioning preserves previous object versions and supports recovery from overwrites.
- Lifecycle rules automate storage-class transitions and expiration based on object age.
- Versioned bucket expiration and noncurrent-version deletion are different lifecycle operations.
- Bucket policies can restrict public object reads to a specific prefix instead of exposing the entire bucket.
- Public access should be granted narrowly and only to intentionally public content.
- S3 server access logs should use a separate destination bucket; log delivery can be delayed.
- Versioned buckets require care during cleanup because previous versions and delete markers must also be removed.

## 📖 References

- [Amazon S3 Lifecycle Management](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lifecycle-mgmt.html)
- [Using Versioning in S3 Buckets](https://docs.aws.amazon.com/AmazonS3/latest/userguide/Versioning.html)
- [S3 Lifecycle Rule Elements](https://docs.aws.amazon.com/AmazonS3/latest/userguide/intro-lifecycle-rules.html)
- [Amazon S3 Server Access Logging](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ServerLogs.html)
