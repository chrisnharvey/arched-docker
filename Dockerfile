FROM archlinux:latest

RUN pacman -Syy --noconfirm archiso cdrkit grep base-devel && \
    useradd arched -m && \
    usermod -a -G wheel arched && \
    echo "%wheel ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/wheel
