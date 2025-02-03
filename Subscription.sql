select 
    * 
from 
    cancelations 
where
    cancelation_reason1 is null 

------------------------------------------------

select 
    * 
from 
    cancelations 
where 
    cancelation_reason2 is null

------------------------------------------------

select 
    * 
from 
    cancelations 
where 
    cancelation_reason3 is null 

------------------------------------------------

select 
    cancelation_reason2,
    count(*) as num_instances,
    count(distinct subscription_id) as num_subs
from
    cancelations 
group by
    1

------------------------------------------------

select 
    cancelation_reason3,
    count(*) as num_instances,
    count(distinct subscription_id) as num_subs
from
    cancelations 
group by
    1
------------------------------------------------

with cancels as 
(
select 
    subscription_id, 
    case when cancelation_reason1 is not null then 1 else 0 end as has_reason1,
    case when cancelation_reason2 is not null then 1 else 0 end as has_reason2,
    case when cancelation_reason3 is not null then 1 else 0 end as has_reason3,
    has_reason1 + has_reason2 + has_reason3 as total_reasons,
    has_reason2 + has_reason3 as additional_reasons
from 
    cancelations 
)
select 
    avg(total_reasons) as avg_total_per_sub,
    avg(additional_reasons) as avg_additional_per_sub
from 
    cancels

------------------------------------------------

with cancel_subs as
(
select
    subscription_id,
    cancelation_reason1 as cancelation_reason
from 
    cancelations
union 
select
    subscription_id,
    cancelation_reason2 as cancelation_reason
from 
    cancelations
union
select
    subscription_id,
    cancelation_reason3 as cancelation reason
from   
    cancelations 
)
select 
    cancelation_reason, 
    count(subscription_id) as num_subs
from 
    cancel_subs
group by 
    1
---------------------------------------------------

create or replace view junk.all_cancelation_reasons_savitha as
select
    subscription_id,
    cancel_date,
    cancelation_reason1 as cancelation reason,
    1 as reason_number
from 
    cancelations
union 
select
    subscription_id,
    cancel_date,
    cancelation_reason2 as cancelation reason,
    2 as reason_number
from 
    cancelations
union
select
    subscription_id,
    cancel_id,
    cancelation_reason3 as cancelation reason,
    3 as reason_number
from 
    cancelations

---------------------------------------------------

with yearly as
(
select 
    date_trunc(‘year’, cancel_date::date) as cancel_year,
    cancelation_reason,
    count(*) as num_reason
from 
    junk.all_cancelation_reasons_savitha
group by 
    1,2
)
select 
    cancel_year,
    cancelation_reason,
    num_reason,
    sum(num_reason) over(partition by cancel_year) as year_total,
    num_reason * 100 / year_total as perc_reason_annual
from 
    yearly





