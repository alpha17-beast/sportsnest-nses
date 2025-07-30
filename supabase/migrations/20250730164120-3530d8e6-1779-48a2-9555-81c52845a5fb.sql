-- First, let's get the user_id for the existing user
INSERT INTO user_roles (user_id, role, assigned_by)
SELECT user_id, 'admin'::app_role, user_id
FROM profiles 
WHERE email = 'clarexpsgaming@gmail.com'
ON CONFLICT (user_id, role) DO NOTHING;