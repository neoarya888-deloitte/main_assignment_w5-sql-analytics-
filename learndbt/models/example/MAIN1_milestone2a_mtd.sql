select s_date.CODE, (((e_date.NAV - s_date.NAV) / s_date.NAV) * 100) as mtd from
(select NAV, CODE, NAV_DATE from "ANALYTICS"."DBT"."NAVHISTORY" where NAV_DATE = to_date('2019-02-01')) s_date join
(select NAV, CODE, NAV_DATE from "ANALYTICS"."DBT"."NAVHISTORY" where NAV_DATE = to_date('2019-02-28')) e_date
on s_date.CODE = e_date.CODE
