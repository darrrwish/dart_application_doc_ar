## رسم المخططات 

هنا نشرح كيفية استخدام Mermaid لرسم المخططات داخل ملفات Markdown:


::: mermaid
graph TD;
    ahmed-->khaled;
    khaled-->omar
    omar-->darwish
    darwish-->ahmed


::: 

::: mermaid

graph TD;
    A-->B;

:::

:::mermaid
graph RL
    fa:fa-user-plus --> fa:fa-phone
:::



##  دعم الأيقونات
أحيانًا تحتاج تحط أيقونات (صور مصغرة) داخل الرسم.
Mermaid يسمح لك تستخدم مكتبات أيقونات مثل:
- mdi (Material Design Icons)
- logos (شعارات مثل AWS, Github)

✅ هذا القسم بيعلمك كيف تضيف أيقونات داخل الرسومات بدل النصوص فقط.

::: mermaid
architecture-beta
    service user(mdi:account)
    service sitemap(mdi:sitemap-outline)
    service server(mdi:server-network)
    service cellphone(mdi:cellphone)
    service database(mdi:database-outline)


    server:L --> R:database 
    database:L --> R:sitemap 
    sitemap:L --> R:cellphone 
    cellphone:L --> R:user 

:::

::: mermaid
architecture-beta
    service sms(mdi:sms)
    service user(mdi:account)
    service sitemap(mdi:sitemap-outline)
    service server(mdi:server-network)
    service cellphone(mdi:cellphone)
    service database(mdi:database-outline)


    user:R --> L:sitemap 
    server:L --> R:cellphone 
    database:L --> R:sms 



:::


