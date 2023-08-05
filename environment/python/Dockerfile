FROM python:3.11.3-buster  AS python-base

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

RUN apt-get update --fix-missing && \
    apt-get install -y vim && \
    apt-get clean

ENV PYTHONPATH="$PYTHONPATH:/tester/"
COPY ./ /tester
VOLUME ["/tester"]

RUN ls -l tester

RUN pip install -r tester/requirements.txt

CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root", "--NotebookApp.iopub_data_rate_limit=1e10"]

RUN rm -r /root/.cache/pip && \
    apt-get clean && apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
