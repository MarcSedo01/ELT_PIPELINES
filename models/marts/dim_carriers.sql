select
    CARRIER_CODE,
    CARRIER_NAME,
    TRUCK_BRAND
    
from {{ref('staging_orders')}}

group by CARRIER_CODE, CARRIER_NAME, TRUCK_BRAND
order by CARRIER_CODE