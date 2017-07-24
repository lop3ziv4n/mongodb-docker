FROM mongo:3.4

# Enviroment
ENV AUTH yes
ENV STORAGE_ENGINE wiredTiger
ENV JOURNALING yes

# Add files required to build this image
ADD scripts /scripts
RUN chmod +x /scripts/*.sh

# Command to run
CMD ["/scripts/run.sh"]