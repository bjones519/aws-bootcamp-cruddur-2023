INSERT INTO public.users (display_name, handle, email, cognito_user_id)
VALUES
  ('Brittney', 'bj', 'bjones51997@gmail.com' ,'MOCK'),
  ('Andrew Bayko', 'bayko', 'bayko@exampro.co' ,'MOCK'),
  ('Londo Mollari','londo' ,'lmollari@centari.com','MOCK');

INSERT INTO public.activities (user_uuid, message, expires_at)
VALUES
  (
    (SELECT uuid from public.users WHERE users.handle = 'bj' LIMIT 1),
    'This was imported as seed data!',
    current_timestamp + interval '10 day'
  )