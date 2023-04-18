select

    seq_geography.nextval AS GEO_WID,
    A.CITY,
    A.STATE,
    A.COUNTRY,
    A.TERRITORY,
    current_timestamp() AS CREATED_DATE

FROM

(select

    CITY,
    STATE,
    COUNTRY,
    TERRITORY

from {{ref('staging_orders')}}

group by CITY, STATE, COUNTRY, TERRITORY) A 