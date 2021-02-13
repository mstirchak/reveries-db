FROM webdevops/liquibase:postgres AS base
RUN mkdir -p /usr/liquibase
WORKDIR /usr/liquibase
COPY liquibase ./
ENV LIQUIBASE_CHANGELOG /usr/liquibase/changelog/changelog.xml
CMD /usr/liquibase/scripts/wait-for-it.sh ${DB_URL} -- /usr/liquibase/scripts/liquibase-init.sh