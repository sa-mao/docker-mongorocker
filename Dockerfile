FROM javierjeronimo/rockmongo

ADD ./config.php /app/config.php
ADD ./entrypoint.sh /app/entrypoint.sh

RUN cat /app/config.php

ENTRYPOINT /app/entrypoint.sh
