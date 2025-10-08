#!/bin/bash

{
    "Groups": [],
    "Instances": [
        {
            "AmiLaunchIndex": 0,
            "ImageId": "ami-09c813fb71547fc4f",
            "InstanceId": "i-0f987fafc543690ba",
            "InstanceType": "t3.micro",
            "LaunchTime": "2025-09-30T05:47:48+00:00",
            "Monitoring": {
                "State": "disabled"
            },
            "Placement": {
                "AvailabilityZone": "us-east-1b",
                "GroupName": "",
                "Tenancy": "default"
            },
            "PrivateDnsName": "ip-172-31-16-29.ec2.internal",
            "PrivateIpAddress": "172.31.16.29",
            "ProductCodes": [],
            "PublicDnsName": "",
            "State": {
                "Code": 0,
                "Name": "pending"
            },
            "StateTransitionReason": "",
            "SubnetId": "subnet-02af0c554c8995dfa",
            "VpcId": "vpc-001f45a6506821fa8",
            "Architecture": "x86_64",
            "BlockDeviceMappings": [],
            "ClientToken": "b2421cbe-ac61-4f34-afa7-c5d7a5ebfdb6",
            "EbsOptimized": false,
            "EnaSupport": true,
            "Hypervisor": "xen",
            "NetworkInterfaces": [
                {
                    "Attachment": {
                        "AttachTime": "2025-09-30T05:47:48+00:00",
                        "AttachmentId": "eni-attach-0ccb7ed8f373b488c",
                        "DeleteOnTermination": true,
                        "DeviceIndex": 0,
                        "Status": "attaching",
                        "NetworkCardIndex": 0
                    },
                    "Description": "",
                    "Groups": [
                        {
                            "GroupName": "allow-all",
                            "GroupId": "sg-0789ef71317d7634f"
                        }
                    ],
                    "Ipv6Addresses": [],
                    "MacAddress": "0a:ff:ce:a9:b6:7d",
                    "NetworkInterfaceId": "eni-0202a9de6590c4a30",
                    "OwnerId": "232514387178",
                    "PrivateDnsName": "ip-172-31-16-29.ec2.internal",
                    "PrivateIpAddress": "172.31.16.29",
                    "PrivateIpAddresses": [
                        {
                            "Primary": true,
                            "PrivateDnsName": "ip-172-31-16-29.ec2.internal",
                            "PrivateIpAddress": "172.31.16.29"
                        }
                    ],
                    "SourceDestCheck": true,
                    "Status": "in-use",
                    "SubnetId": "subnet-02af0c554c8995dfa",
                    "VpcId": "vpc-001f45a6506821fa8",
                    "InterfaceType": "interface"
                }
            ],
            "RootDeviceName": "/dev/sda1",
            "RootDeviceType": "ebs",
            "SecurityGroups": [
                {
                    "GroupName": "allow-all",
                    "GroupId": "sg-0789ef71317d7634f"
                }
            ],
            "SourceDestCheck": true,
            "StateReason": {
                "Code": "pending",
                "Message": "pending"
            },
            "Tags": [
                {
                    "Key": "Name",
                    "Value": "practice1"
                }
            ],
            "VirtualizationType": "hvm",
            "CpuOptions": {
                "CoreCount": 1,
                "ThreadsPerCore": 2
            },
            "CapacityReservationSpecification": {
                "CapacityReservationPreference": "open"
            },
            "MetadataOptions": {
                "State": "pending",
                "HttpTokens": "optional",
                "HttpPutResponseHopLimit": 1,
                "HttpEndpoint": "enabled",
                "HttpProtocolIpv6": "disabled",
                "InstanceMetadataTags": "disabled"
            },
            "EnclaveOptions": {
                "Enabled": false
            },
            "BootMode": "uefi-preferred",
            "PrivateDnsNameOptions": {
                "HostnameType": "ip-name",
                "EnableResourceNameDnsARecord": false,
                "EnableResourceNameDnsAAAARecord": false
            },
            "MaintenanceOptions": {
                "AutoRecovery": "default"
            },
            "CurrentInstanceBootMode": "uefi"
        }
    ],
    "OwnerId": "232514387178",
    "ReservationId": "r-05c1ebdf1a5047cf1"
}
