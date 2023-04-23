SELECT 
    seq_customers.nextval as CUSTOMER_WID,
    A.CUSTOMER_NAME,
    A.PHONE,
    A.ADDRESS_LINE,
    A.POSTAL_CODE,
    A.CONTACT_NAME,
    current_timestamp() as CREATED_DATE
   FROM 
(select


    CUSTOMER_NAME,
    PHONE,
    ADDRESS_LINE,
    POSTAL_CODE,
    CONTACT_NAME

from {{ref('staging_orders')}}

group by CUSTOMER_NAME, PHONE, ADDRESS_LINE, POSTAL_CODE, CONTACT_NAME) A