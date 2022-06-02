select NAV_DATE, t4.CODE as code, t4.maximum, t4.minimum
from "ANALYTICS"."DBT"."NAVHISTORY" t3 join
(select t1.CODE as code, max(t2.NAV) as maximum, min(t2.NAV) as minimum
from "ANALYTICS"."DBT"."MUTUALFUND" t1 join "ANALYTICS"."DBT"."NAVHISTORY" t2
on t1.CODE = t2.CODE group by t1.CODE) t4
where t3.CODE = t4.CODE
