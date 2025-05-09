go
use Milestone2DB_24
go

INSERT INTO customer_profile (nationalID, first_name, last_name, email, address, date_of_birth)
VALUES 
(1, 'John', 'Doe', 'john.doe@example.com', '123 Elm St, Springfield', '1990-05-15'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '456 Oak St, Springfield', '1985-07-20'),
(3, 'Alice', 'Johnson', 'alice.johnson@example.com', '789 Pine St, Springfield', '1992-03-25');
INSERT INTO customer_account (mobileNo, pass, balance, account_type, start_date, status, points, nationalID)
VALUES 
('01123456789', 'password123', 100.00, 'postpaid', '2023-01-01', 'active', 500, 1),
('01123456780', 'password456', 50.00, 'prepaid', '2023-06-15', 'onhold', 200, 2),
('01123456781', 'password789', 200.00, 'pay-as-you-go', '2022-11-20', 'active', 300, 3);
INSERT INTO Service_plan (name, price, SMS_offered, minutes_offered, data_offered, description)
VALUES 
('Basic Plan', 50, 500, 100, 2000, 'Basic plan with limited data and minutes'),
('Premium Plan', 100, 1000, 200, 5000, 'Premium plan with more data and minutes'),
('Unlimited Plan', 150, 2000, 500, 10000, 'Unlimited plan with all features included');
INSERT INTO Subscription (mobileNo, planID, subscription_date, status)
VALUES 
('01123456789', 1, '2023-01-01', 'active'),
('01123456780', 2, '2023-06-15', 'onhold'),
('01123456781', 3, '2022-11-20', 'active');
INSERT INTO Plan_Usage (start_date, end_date, data_consumption, minutes_used, SMS_sent, mobileNo, planID)
VALUES 
('2023-05-01', '2023-05-31', 2000, 100, 400, '01123456789', 1),
('2023-07-01', '2023-07-31', 3000, 200, 500, '01123456780', 2),
('2023-06-01', '2023-06-30', 5000, 400, 800, '01123456781', 3);
INSERT INTO Payment (amount, date_of_payment, payment_method, status, mobileNo)
VALUES 
(50.00, '2023-01-10', 'cash', 'successful', '01123456789'),
(100.00, '2023-06-20', 'credit', 'pending', '01123456780'),
(150.00, '2023-11-05', 'credit', 'successful', '01123456781');
INSERT INTO process_payment (paymentID, planID)
VALUES 
(1, 1),
(2, 2),
(3, 3);
INSERT INTO Wallet (current_balance, currency, last_modified_date, nationalID, mobileNo)
VALUES 
(500.00, 'EGP', '2023-05-01', 1, '01123456789'),
(200.00, 'EGP', '2023-06-15', 2, '01123456780'),
(300.00, 'EGP', '2023-07-01', 3, '01123456781');
INSERT INTO transfer_money (walletID1, walletID2, amount, transfer_date)
VALUES 
(1, 2, 50.00, '2023-07-01'),
(2, 3, 100.00, '2023-08-05'),
(3, 1, 200.00, '2023-09-10');
INSERT INTO Benefits (description, validity_date, status, mobileNo)
VALUES 
('10% discount on data usage', '2023-12-31', 'active', '01123456789'),
('Free 100 SMS', '2023-06-30', 'expired', '01123456780'),
('Cashback on payments', '2023-11-30', 'active', '01123456781');
INSERT INTO Points_group (benefitID, pointsAmount, paymentId)
VALUES 
(1, 50, 1),
(3, 100, 3),
(2, 25, 2);
INSERT INTO Exclusive_offer (benefitID, internet_offered, SMS_offered, minutes_offered)
VALUES 
(1, 500, 100, 200),
(2, 1000, 200, 300),
(3, 2000, 500, 400);
INSERT INTO Cashback (benefitID, walletID, amount, credit_date)
VALUES 
(1, 1, 50, '2023-05-01'),
(3, 2, 100, '2023-06-15'),
(2, 3, 25, '2023-07-01');
INSERT INTO plan_provides_benefits (benefitid, planID)
VALUES 
(1, 1),
(2, 2),
(3, 3);
INSERT INTO shop (name, Category)
VALUES 
('Tech Store', 'Electronics'),
('Gadget Shop', 'Electronics'),
('Supermart', 'Groceries');
INSERT INTO Physical_shop (shopID, address, working_hours)
VALUES 
(1, '456 High St, Springfield', '9AM - 6PM'),
(2, '789 Market St, Springfield', '10AM - 7PM');
INSERT INTO E_shop (shopID, URL, rating)
VALUES 
(3, 'www.techshop.com', 4),
(1, 'www.gadgetshop.com', 5);
INSERT INTO Voucher (value, expiry_date, points, mobileNo, redeem_date, shopID)
VALUES 
(100, '2023-12-31', 500, '01123456789', '2023-07-01', 1),
(50, '2023-06-30', 250, '01123456780', '2023-05-01', 2),
(200, '2023-11-30', 1000, '01123456781', '2023-06-15', 3);
INSERT INTO Technical_support_ticket (mobileNo, issue_description, priority_level, status)
VALUES 
('01123456789', 'Network issue', 1, 'Open'),
('01123456780', 'Slow internet', 2, 'In progress'),
('01123456781', 'No signal', 1, 'Resolved');
