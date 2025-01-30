-- {% set order_status_list = ['created', 'shipped', 'approved', 'canceled', 'invoiced', 'delivered', 'processing', 'unavailable'] %}

SELECT
    {% for order_status in var('order_status_accepted_values_list') %}
    SUM(CASE WHEN order_status = '{{order_status}})' THEN total_order_amount END) AS total_{{order_status}}_order_amount
    {% endfor %}
FROM {{ ref('int_sales_database__order') }}