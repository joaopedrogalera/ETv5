#!/bin/bash
# After network-online pode ser usado para que o serviço rode apenas após as interfaces de rede estarem prontas
# After mount pode ser usado para que o serviço rode apenas após um mount no fstab
# o nome do mnt-[coisa].mount pode ser descoberto com o seguinte comando:
# systemctl list-units | grep '/path/to/mount' | awk '{ print $1 }'
echo '[Unit]
Wants=network-online.target
After=network-online.target mnt-suporte.mount

[Service]
ExecStart=/bin/bash /mnt/suporte/etv4/scripts/boot.sh

[Install]
WantedBy=multi-user.target' > /etc/systemd/system/cmc-network-script.service

systemctl enable cmc-network-script.service

# Pegar hostname da rede
rm -f /etc/hostname
