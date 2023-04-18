
select

    seq_delivery.nextval AS DELIVERY_WID,
    A.LIMIT_DELIVERY_HOURS,
    A.DELIVERY_PRICE,
    current_timestamp() AS CREATED_DATE

FROM

(select

    LIMIT_DELIVERY_HOURS,
    DELIVERY_PRICE
    
from {{ref('staging_orders')}}

group by LIMIT_DELIVERY_HOURS, DELIVERY_PRICE) A 