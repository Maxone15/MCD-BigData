<h1 align="center">
  <br>
  <b>Data Extraction and Analysis Platform</b>
  <br>
</h1>

<p align="center">
  This project demonstrates two methods for extracting and analyzing data: using PySpark and Python Classic.
  <br>
</p>

## Structure

The project is organized into two main sections: PySpark and Python Classic, located within the `notebooks/pyspark` folder. The shared resources are located in the `shells` folder.

## Extraction Methods

There are two ways to extract information:

### Using Jupyter Notebooks

1. **Scrapper Notebook**: Run `Scrapper.ipynb` to obtain the files.
2. **Upload Data Notebook**: Run `upload_data.ipynb` to upload the files to an HDFS system using pandas (in progress).

### Using Python Scripts

1. **Get Links Script**: Execute `get_links.py` to retrieve the links.
2. **Scrapper Utils Script**: Execute `Scrapper_utils.py` for additional scraping utilities.

### Setting Up Python Environment for Python - Classic

1. **Create python venv:**
    ```bash
    python3 -m venv venv
    ```

2. **Activate venv:**
    ```bash
    source venv/bin/activate
    ```

3. **Upgrade pip:**
    ```bash
    pip install --upgrade pip
    ```

4. **Install requirements:**
    ```bash
    pip install -r requirements.txt
    ```

### Upload Information

1. **Create environmental variables:**
    Create a `.env` file and configure the following environment variables:
    ```env
    database_user = 'your user'
    database_password = 'your password'
    database_host = 'your host'
    database = 'your database'
    ```
   Replace the values with your desired usernames, passwords, and database information.

2. **Activate environmental variables:**
    ```bash
    source .env
    ```

## PySpark Section

### Notebooks

1. **Scrapper Notebook**: Run `Scrapper.ipynb` to download the files and send them to the HDFS system.
2. **PySpark Analysis Notebook**: Run `pySpark-analysis.ipynb` for the corresponding analysis.

### Shared Resources

The `shells` folder contains scripts and resources shared between the PySpark and Python Classic sections.

## Technologies Used

- Python 3 ![Python](https://img.shields.io/badge/Python-3.x-blue)
- pySpark 3.5.0 ![pySpark](https://img.shields.io/badge/pySpark-3.5.0-orange)

