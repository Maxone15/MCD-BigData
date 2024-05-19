# Instructions

# Create an instance on GCP 'Compute Engine'

Equivalent code:

```
gcloud compute instances create instance-bigdata --project=bigdata2-423718 --zone=us-central1-a --machine-type=e2-medium --network-interface=network-tier=PREMIUM,stack-type=IPV4_ONLY,subnet=default --maintenance-policy=MIGRATE --provisioning-model=STANDARD --service-account=620836759706-compute@developer.gserviceaccount.com --scopes=https://www.googleapis.com/auth/cloud-platform --tags=http-server,https-server,lb-health-check --create-disk=auto-delete=yes,boot=yes,device-name=instance-bigdata,image=projects/ubuntu-os-cloud/global/images/ubuntu-2004-focal-v20240515,mode=rw,size=80,type=projects/bigdata2-423718/zones/us-central1-a/diskTypes/pd-balanced --no-shielded-secure-boot --shielded-vtpm --shielded-integrity-monitoring --labels=goog-ec-src=vm_add-gcloud --reservation-affinity=any
```

## Cloning a Single Directory from a GitHub Repository

You can clone a single directory from a GitHub repository by using a combination of Git sparse-checkout and filter features. Follow these steps:

1. **Initialize a new Git repository:**
    ```bash
    git init
    ```

2. **Add the remote repository::**
    ```bash
    git remote add origin https://github.com/Anonymate054/MCD-BigData
    ```

3. **Enable the sparse-checkout feature:**
    ```bash
    git config core.sparseCheckout true
    ```

4. **Specify the directory you want to clone:**
    ```bash
    echo "GCP/instance/mariadb_shells/*" >> .git/info/sparse-checkout
    ```

5. **Pull the specified directory from the remote repository:**
    ```bash
    git pull origin main
    ```



```sh
1. clonar git
2. Encontrar archivo [instalar_mariadb_easy.sh]
3. Dar permisos de ejecucion= "chmod +x instalar_mariadb_easy.sh"
4. Ejecutar usando "sudo ./instalar_mariadb_easy.sh"
5. Seguir instrucciones, para 'root' password dar enter (dado que es la primera vez) y despues settear uno nuevo, en este caso 'Example123', todo lo demas 'YES' o 'y'
6. Probar que el servicio este funcionando= "sudo systemctl status mariadb"
7. Encontrar el archivo [crear_usuario.sh] y darle permisos de ejecucion= "chmod +x crear_usuario.sh"
8. Ejecutar usando "sudo ./crear_usuario.sh"
8. Probar la conexion, "mysql -u big_data_user -p"
9. Salir de la base de datos con "quit" 
10. Encontrar el archivo [modificar_configuracion.sh], darle permisos de ejecucion: "chmod +x modificar_configuracion.sh"
11. Ejecutar usando "sudo ./modificar_configuracion.sh"
12. Encontrar el archivo [crear_regla_vpc.sh]
13. Dar permisos de ejecucion = "chmod +x crear_regla_vpc.sh]
14. Ejecutar usando "sudo ./crear_regla_vpc.sh"
15. Reiniciar instancia usando sudo reboot
16. Volverse a conectar, el servidor de base de datos ya aceptara conexiones remotas y se podra usar con sqoop.
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