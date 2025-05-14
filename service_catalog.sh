#! /usr/bin/bash
clear
echo
echo "****************** Service Katalog ***********************"
echo "*                                                        *"
echo "*    Demo, Hamburg 2025 - 03.04.2025                    *"
echo "*                                                        *"
echo "*                                                        *"
echo "*    1  Hausputz 07.04.2025 19:49 Uhr läuft              *"
echo "*    2  IPv6     07.04.2025 19:00 Uhr ubuntu + igw01     *"
echo "*    3  VARS und J2                                      *"
echo "*    4  Ende                                             *"
echo "*                                                        *"
echo "********************** end *******************************"
echo
echo 
PS3='Auswahl: '
options=("A" "B" "C" "Ende")
select opt in "${options[@]}"
do
    case $opt in
        "A")
            echo "Auswahl Hausputz"
            sudo ansible-playbook -i /home/cumulus/HB/inventory/files/hosts /home/cumulus/HB/.cleanup/main.yaml
            break
            ;;
        "B")
            echo "Auswahl IPv6"
            sudo ansible-playbook -i /home/cumulus/HB/inventory/files/hosts /home/cumulus/HB/.D/main.yaml
            break
            ;;
        "C")
            echo "Auswahl Tunnel"
            sudo ansible-playbook -i /home/cumulus/HB/inventory/files/hosts /home/cumulus/HB/.E/main.yaml
            break
            ;;
         "Ende")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
