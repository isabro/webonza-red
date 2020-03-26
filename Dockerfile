From kalilinux/kali-rolling:latest
RUN apt update && \
    apt upgrade -y && \
    apt install -y vim apache2 skipfish stress sqlmap python3 python3-pip nmap git && \
    git clone https://github.com/Dionach/CMSmap && \
    cd CMSmap && \
    pip3 install . && \
    apt clean && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*
