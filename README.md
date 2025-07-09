# DynamicRouting
Konfiguracja urządzeń cisco/mikrotik do komunikacji przy użyciu dynamicznych protokolow routingu

Wymagania:
- Maszyna eve-ng/pnetlab
- Obraz mikrotik Router OS v7
- Obraz L3-AdventerPrisek9-M-15.4.2T.bin

Opis plików:
   - Dokumentacja.pdf - Zawiera dokumentację techniczną dla projektu
   - R1-RC.txt - Pliki zawierające konfigurację dla routerów cisco
   - RouterA/B.rsc - zawiera konfiguracje routerów mikrotik
   - Topologia.png - zawiera zdjęcie z utworzonej topologii
   - Projekt.unl - zawiera plik do zaimportowania w EVE-NG lub PNETLAB

Jak uruchomić:
Projekt.unl należy najpierw zaimporować na interfejs Eve-ng lub Pnetlab, następnie Mikrotika należy polaczyc z chmurą maszyny celem zaimportowania konfiugracji z poziomu Winbox lub FTP oraz wgrać konfigurację dla każdego routera cisco znajdującego się w plikach projektu.
