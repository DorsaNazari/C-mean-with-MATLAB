clc;
data=SocialNetworkAds;

Gen = data.Gender;
Gender = double(Gen);

age = data.Age;
age = (age-mean(age))/std(age);

salary = data.EstimatedSalary;
salary = (salary - mean(salary))/std(salary);

data_final = [Gender age salary data.Purchased];
[c,result] = fcm(data_final, 7,[5,1000]);



