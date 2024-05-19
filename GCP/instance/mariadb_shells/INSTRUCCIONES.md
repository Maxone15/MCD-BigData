# Instructions

# Create an instance on GCP 'Compute Engine'

Equivalent code:

```
gcloud compute instances create instance-bigdata --project=bigdata2-423718 --zone=us-central1-a --machine-type=e2-medium --network-interface=network-tier=PREMIUM,stack-type=IPV4_ONLY,subnet=default --maintenance-policy=MIGRATE --provisioning-model=STANDARD --service-account=620836759706-compute@developer.gserviceaccount.com --scopes=https://www.googleapis.com/auth/cloud-platform --tags=http-server,https-server,lb-health-check --create-disk=auto-delete=yes,boot=yes,device-name=instance-bigdata,image=projects/ubuntu-os-cloud/global/images/ubuntu-2004-focal-v20240515,mode=rw,size=80,type=projects/bigdata2-423718/zones/us-central1-a/diskTypes/pd-balanced --no-shielded-secure-boot --shielded-vtpm --shielded-integrity-monitoring --labels=goog-ec-src=vm_add-gcloud --reservation-affinity=any
```

## Cloning a Single Directory from a GitHub Repository

You can clone a single directory from a GitHub repository by using a combination of Git sparse-checkout and filter features. Follow these steps:

1. **Update and upgrade system**
    ```bash
    sudo apt get update
    sudo apt get upgrade
    ```

2. **Create filename**
    ```bash
    mkdir codes
    cd codes
    ```

3. **Initialize a new Git repository:**
    ```bash
    git init
    ```

4. **Add the remote repository::**
    ```bash
    git remote add origin https://github.com/Anonymate054/MCD-BigData.git
    ```

5. **Enable the sparse-checkout feature:**
    ```bash
    git config core.sparseCheckout true
    ```

6. **Specify the directory you want to clone:**
    ```bash
    echo "GCP/instance/mariadb_shells/*" >> .git/info/sparse-checkout
    ```

7. **Pull the specified directory from the remote repository:**
    ```bash
    git pull origin main
    ```

## Instalations of mariadb

1. **Move to files:**
    ```bash
    cd GCP/instance/mariadb_shells
    ```

2. **Grand persitions:**
    ```bash
    chmod +x 1_instalar_mariadb_easy.sh
    ```

3. **Run script:**
    ```bash
    sudo ./1_instalar_mariadb_easy.sh
    ```

4. **Create user root:**
    Follow instructions, for root password, press enter (since it's the first time) and then set a new one, in this case Example123, everything else `YES` or `y`.

5. **Check if the system is running:**
    ```bash
    sudo systemctl status mariadb
    ```

6. **Check if the system is running:**
    ```bash
    sudo systemctl status mariadb
    ```

7. **Grand persitions:**
    ```bash
    chmod +x 2_crear_usuario.sh
    ```

8. **Run script:**
    ```bash
    sudo ./2_crear_usuario.sh
    ```

9. **Test connection**
    ```bash
    mysql -u big_data_user -p
    ```

10. **Test connection**
    ```bash
    mysql -u big_data_user -p
    ```
    write `exit` to exit the database.

11. **Grand persitions:**
    ```bash
    chmod +x 3_modificar_configuracion.sh
    ```

12. **Run script:**
    ```bash
    sudo ./3_modificar_configuracion.sh
    ```

13. **Grand persitions:**
    ```bash
    chmod +x 4_crear_regla_vpc.sh
    ```

14. **Run script:**
    ```bash
    sudo ./4_crear_regla_vpc.sh
    ```

15. **Reboot system:**
    ```bash
    sudo reboot
    ```

## MariaDB

Crear db:
```sql
MariaDB [(none)]> CREATE DATABASE QQP;
```

Crear tabla:

```sql
MariaDB [(none)]> USE QQP;

MariaDB [QQP]> CREATE TABLE IF NOT EXISTS `QQP_DETAIL` (
    `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `PRODUCT` varchar(65),
    `PRESENTATION` varchar(180),
    `BRAND` varchar(65),
    `CATEGORY` varchar(65),
    `CATALOG` varchar(65),
    `PRICE` decimal(18,2),
    `REGISTRATION_DATE` datetime,
    `COMMERCIAL_CHAIN` varchar(65),
    `BUSINESS_LINE` varchar(65),
    `COMMERCIAL_NAME` varchar(120),
    `ADDRESS` varchar(255),
    `STATE` varchar(120),
    `MUNICIPALITY` varchar(120),
    `LATITUDE` decimal(18,6),
    `LONGITUDE` decimal(18,6)
);

```

Cambié el tipo de `title` a `TEXT` porque me harté de cambiarlo de tamaño.
También cambié el tamaño de `awarded_offers_supplier_name`.