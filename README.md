<h1 align="center">
  <br>
  <b>Pricing Analysis Platform</b>
  <br>
</h1>

<p align="center">
  The portal where the information is obtained is: <a href="https://www.profeco.gob.mx/precios/canasta/default.aspx">Quién es Quién en los Precios by PROFECO</a>.
  <br>
</p>


## Description

The Quién es Quién en los Precios (QQP) program collects and disseminates price information for regularly consumed household products, such as food, beverages, personal care products, household items, medicines, appliances, and seasonal items. This information aims to help you make informed purchasing decisions by comparing prices.

Prices are collected by visiting a sample of major establishments in each of the cities participating in the program during the five business days of the week.

The prices displayed include the date they were taken; however, they are subject to change as some establishments may vary their prices more than once per day. Therefore, they should be considered reference prices.

## Technologies Used

- Python 3 ![Python](https://img.shields.io/badge/Python-3.x-blue)
- pySpark 3.3.0 ![pySpark](https://img.shields.io/badge/pySpark-3.3.0-orange)
- Hadoop 3.3.0 ![Hadoop](https://img.shields.io/badge/pySpark-3.3.0-orange)
- GCP with Data Proc ![GCP Data Proc](https://img.shields.io/badge/GCP-Data%20Proc-brightgreen)
- GCP with Compute Engine ![GCP Compute Engine](https://img.shields.io/badge/GCP-Compute%20Engine-brightgreen)
- MariaDB ![MariaDB](https://img.shields.io/badge/MariaDB-10.x-blue)
- Grafana Cloud for visualization ![Grafana](https://img.shields.io/badge/Grafana-Cloud-orange)

## Project Objective

The objective of this project is to create a platform for analyzing large volumes of data obtained from the PROFECO page.

The project includes a scraper that extracts and downloads the links of the files, subsequently importing them into an HDFS system for analysis in pySpark.

## Analysis Section

The analysis will consist of a forecast of the basic basket where the analysis of large volumes of data will be compared using pySpark models, considering all available data. This will be compared to a Python system using a smaller amount of data referencing the basic basket in Mexico.
