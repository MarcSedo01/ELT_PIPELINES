select

    ORDER_NUMBER,
    ORDER_LINE_NUMBER,
    PROD.PRODUCT_WID,
    CUST.CUSTOMER_WID,
    GEO.GEO_WID,
    DATE_WID,
    QUANTITY_ORDERED,
    PRICE_EACH AS "UNITARY_PRICE",
    SALES,
    STATUS,
    ORDER_DATE,
    DELIVERY_DATE,
    DEAL_SIZE,
    LIMIT_DATE_CODE

from {{ref('staging_orders')}} ORD


LEFT JOIN dim_products PROD ON ORD.PRODUCT_CODE = PROD.PRODUCT_CODE
LEFT JOIN dim_customers CUST ON ORD.CUSTOMER_NAME = CUST.CUSTOMER_NAME
LEFT JOIN dim_geography GEO ON ORD.CITY = GEO.CITY AND ORD.COUNTRY = GEO.COUNTRY
LEFT JOIN dim_delivery DEL on ORD.LIMIT_DATE_CODE = DEL.LIMIT_CODE
--LEFT JOIN dim_date DAT ON ORD.DATE_WID = DAT.DATE_ID