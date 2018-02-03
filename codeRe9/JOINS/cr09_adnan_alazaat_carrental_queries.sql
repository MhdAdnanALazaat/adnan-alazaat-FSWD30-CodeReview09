1 -
SELECT name.first_name,name.last_name,customer.Address,company_online.name from customer
INNER JOIN name on customer.fk_name_id =name.name_id
INNER JOIN company_online on customer.customer_id=company_online.fk_Customer_id;

2 -
SELECT company_online.name,sign_up.email,sign_up.password,applications.passport from register
INNER JOIN company_online on register.fk_company_online_id=company_online.company_online_id
INNER JOIN sign_up on register.fk_sign_up_id = sign_up.sign_up_id
INNER JOIN applications on register.fk_Applications_id = applications.Applications_id;