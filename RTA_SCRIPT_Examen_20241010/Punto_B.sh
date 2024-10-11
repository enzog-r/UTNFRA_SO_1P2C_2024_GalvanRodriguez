#!/bin/bash
DISCO="/dev/sdb"
let contador=1
while (( $contador <= 11 ));do

        if (($contador  <= 3));then
                echo -e "n\n\n\n\n+1024M\nw" | fdisk $DISCO
        elif (($contador == 4));then
                echo -e "n\n\n\n\nw" | fdisk $DISCO
        elif (($contador == 11));then
                echo -e "n\n\n\nw" | fdisk $DISCO
        else
                echo -e "n\n\n+1024M\nw" | fdisk $DISCO
        fi

        contador=$((contador + 1))
        echo "$contador"

        sleep 0.5
done

sudo mkfs.ext4 /dev/sdb1
sudo mkfs.ext4 /dev/sdb2
sudo mkfs.ext4 /dev/sdb3
sudo mkfs.ext4 /dev/sdb5
sudo mkfs.ext4 /dev/sdb6
sudo mkfs.ext4 /dev/sdb7
sudo mkfs.ext4 /dev/sdb8
sudo mkfs.ext4 /dev/sdb9
sudo mkfs.ext4 /dev/sdb10
sudo mkfs.ext4 /dev/sdb11

echo "/dev/sdb1  /home/osboxes/repogit/UTNFRA_SO_1P2C_2024_GalvanRodriguez/RTA_SCRIPT_Examen_20241010/Examenes-UTN/alumno_1/parcial_1  ext4  defaults  0  2" | sudo tee -a /etc/fstab
echo "/dev/sdb2  /home/osboxes/repogit/UTNFRA_SO_1P2C_2024_GalvanRodriguez/RTA_SCRIPT_Examen_20241010/Examenes-UTN/alumno_1/parcial_2  ext4  defaults  0  2" | sudo tee -a /etc/fstab
echo "/dev/sdb3  /home/osboxes/repogit/UTNFRA_SO_1P2C_2024_GalvanRodriguez/RTA_SCRIPT_Examen_20241010/Examenes-UTN/alumno_1/parcial_3  ext4  defaults  0  2" | sudo tee -a /etc/fstab
echo "/dev/sdb5  /home/osboxes/repogit/UTNFRA_SO_1P2C_2024_GalvanRodriguez/RTA_SCRIPT_Examen_20241010/Examenes-UTN/alumno_2/parcial_1  ext4  defaults  0  2" | sudo tee -a /etc/fstab
echo "/dev/sdb6  /home/osboxes/repogit/UTNFRA_SO_1P2C_2024_GalvanRodriguez/RTA_SCRIPT_Examen_20241010/Examenes-UTN/alumno_2/parcial_2  ext4  defaults  0  2" | sudo tee -a /etc/fstab
echo "/dev/sdb7  /home/osboxes/repogit/UTNFRA_SO_1P2C_2024_GalvanRodriguez/RTA_SCRIPT_Examen_20241010/Examenes-UTN/alumno_2/parcial_3  ext4  defaults  0  2" | sudo tee -a /etc/fstab
echo "/dev/sdb8  /home/osboxes/repogit/UTNFRA_SO_1P2C_2024_GalvanRodriguez/RTA_SCRIPT_Examen_20241010/Examenes-UTN/alumno_3/parcial_1  ext4  defaults  0  2" | sudo tee -a /etc/fstab
echo "/dev/sdb9  /home/osboxes/repogit/UTNFRA_SO_1P2C_2024_GalvanRodriguez/RTA_SCRIPT_Examen_20241010/Examenes-UTN/alumno_3/parcial_2  ext4  defaults  0  2" | sudo tee -a /etc/fstab
echo "/dev/sdb10  /home/osboxes/repogit/UTNFRA_SO_1P2C_2024_GalvanRodriguez/RTA_SCRIPT_Examen_20241010/Examenes-UTN/alumno_3/parcial_3  ext4  defaults  0  2" | sudo tee -a /etc/fstab
echo "/dev/sdb11  /home/osboxes/repogit/UTNFRA_SO_1P2C_2024_GalvanRodriguez/RTA_SCRIPT_Examen_20241010/Examenes-UTN/profesores  ext4  defaults  0  2" | sudo tee -a /etc/fstab

mount -a
