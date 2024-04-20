lspci -nn | grep -e 'AMD/ATI'
echo "options vfio-pci ids=1002:15bf,1002:1640" >> /etc/modprobe.d/vfio.conf
lspci -nnk
echo "softdep radeon pre: vfio-pci" >> /etc/modprobe.d/vfio.conf
echo "softdep amdgpu pre: vfio-pci" >> /etc/modprobe.d/vfio.conf
echo "softdep snd_hda_intel pre: vfio-pci" >> /etc/modprobe.d/vfio.conf