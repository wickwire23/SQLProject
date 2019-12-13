--Retrieves trainer assigned to customer
select trainer.name
from trainer, customer
where trainer.trainerid = customer.trainerid
and customer.name='Sam Lademan';

--Retrieves names of activities that James specializes in
select activity.activity_name
from trainer, activity
where trainer.trainerid = activity.trainerid
and trainer.name = 'James';

--Retrevies activity name that is of easy difficulty
select activity.activity_name
from activity, activity_type
where activity_type.difficult_level = 'easy'
and activity_type.activitytypeid = activity.activitytypeid;

--Retrieves name of customer who's trainer specializes in cardio
select customer.name
from customer, trainer, activity, activity_type
where customer.trainerid=trainer.trainerid
and trainer.trainerid = activity.trainerid
and activity.activitytypeid = activity_type.activitytypeid
and activity_type.type_of_activity = 'cardio';

--Finds Average Weight
select avg(progress.current_weight)
FROM progress;