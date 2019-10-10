FROM crystallang/crystal

WORKDIR /src

COPY src ./
COPY docker/test.cr ./

RUN crystal build -o /usr/local/bin/crystal-test test.cr
CMD ["/usr/local/bin/crystal-test"]
