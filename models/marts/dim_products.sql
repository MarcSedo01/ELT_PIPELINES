select

    seq_products.nextval AS PRODUCT_WID,
    A.PRODUCT_CODE,
    A.PRODUCT_LINE,
    A.MSRP,
    current_timestamp() AS CREATED_DATE

FROM

(select

    PRODUCT_CODE,
    PRODUCT_LINE,
    MSRP

from {{ref('staging_orders')}}

group by PRODUCT_CODE, PRODUCT_LINE, MSRP) A 