FROM continuumio/anaconda3:latest

RUN conda install jupyter -y --quiet

COPY <<EOF /usr/local/bin/jnotebook
#!/bin/sh
jupyter notebook --notebook-dir=notebooks --ip='*' --port=8888 --no-browser --allow-root
EOF
RUN chmod +x /usr/local/bin/jnotebook

COPY <<EOF /usr/local/bin/jlab
#!/bin/sh
jupyter notebook --notebook-dir=notebooks --ip='*' --port=8888 --no-browser --allow-root
EOF
RUN chmod +x /usr/local/bin/jlab

WORKDIR /app

EXPOSE 8888

CMD ["/bin/bash"]