## Analysis Setup using GCP Tools

### Introduction
This repository outlines the setup for analysis leveraging Google Cloud Platform (GCP) tools, specifically Compute Engine for creating a Linux instance with MariaDB, and Dataproc for Hadoop and Spark clusters. This infrastructure facilitates the processing of large volumes of data efficiently.

### Technologies Used

#### Google Cloud Platform (GCP) Compute Engine
Google Compute Engine is an infrastructure-as-a-service (IaaS) component of Google Cloud Platform which allows users to launch virtual machines on demand. It provides scalable and flexible computing resources, making it ideal for various workloads, including hosting databases like MariaDB.

#### MariaDB
MariaDB is an open-source relational database management system (RDBMS) that is a fork of MySQL. It is highly compatible with MySQL, meaning it can replace MySQL seamlessly while offering additional features, performance enhancements, and bug fixes. MariaDB is widely used for its reliability, scalability, and robustness in handling large datasets.

#### Google Cloud Dataproc
Google Cloud Dataproc is a managed Spark and Hadoop service that allows users to easily create clusters for big data processing. It simplifies the process of deploying, managing, and scaling clusters, enabling users to focus on their data and applications rather than infrastructure management.

#### Apache Hadoop
Apache Hadoop is an open-source framework that facilitates distributed storage and processing of large datasets across clusters of computers. It provides a scalable, reliable, and fault-tolerant storage and processing solution for big data applications.

#### Apache Spark
Apache Spark is an open-source distributed computing system that provides an interface for programming entire clusters with implicit data parallelism and fault tolerance. It is designed for speed and ease of use and supports various programming languages like Scala, Java, Python, and R. Spark is commonly used for processing large-scale data analytics tasks.

### Repository Structure
- **compute-engine**: Contains the necessary files and processes for setting up MariaDB on the Linux instance created using Compute Engine.
- **dataproc**: Contains the configurations and processes for setting up Spark clusters using Dataproc.

Feel free to explore the respective directories for detailed instructions and setup files for deploying and configuring the mentioned technologies on Google Cloud Platform.
