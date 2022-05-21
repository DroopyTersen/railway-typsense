FROM typesense/typesense:0.22.2

ENV TYPESENSE_API_KEY=abc123
ENV TYPESENSE_DATA_DIR=/data
ENV TYPESENSE_API_PORT=$PORT
ENV TYPESENSE_THREAD_POOL_SIZE=1
ENV TYPESENSE_NUM_COLLECTIONS_PARALLEL_LOAD=1

VOLUME data
CMD echo Port=$PORT
CMD /opt/typesense-server --api-port=$PORT