FROM archlinux/base

RUN pacman -Syy --noconfirm archiso cdrkit grep base-devel
RUN useradd arched -m
RUN usermod -a -G wheel arched
RUN echo "%wheel ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/wheel
