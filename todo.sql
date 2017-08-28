CREATE TABLE todos (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details VARCHAR,
  priority INT NOT NULL DEFAULT 1,
  created_at TIMESTAMP NOT NULL,
  completed_at TIMESTAMP
);

INSERT INTO todos (title, details, priority, created_at) VALUES ('Do Laundry', 'Wash work clothes first', 4, '2017-7-28 14:46:00');
INSERT INTO todos (title, details, priority, created_at) VALUES ('Pick up prescription', 'Take new insurance card, hope it works', 2, '2017-7-28 11:00:00');
INSERT INTO todos (title, details, priority, created_at) VALUES ('Mail ATT router', 'go to UPS', 3, '2017-7-28 13:16:00');
INSERT INTO todos (title, details, priority, created_at) VALUES ('Go to TXDOT', 'turn in Highlander paperwork, take CRV off registration', 5, '2017-7-28 10:30:00');
INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('Cancel Car Insurance', 'Get mother off my back', 1, '2017-7-28 11:00:00', '2017-7-28 11:30:00');

SELECT * from todos WHERE completed_at = NULL;
SELECT * from todos WHERE priority > 1;

UPDATE todos SET completed_at = '2017-7-28 13:05:00' WHERE id = 2;
DELETE FROM todos WHERE completed_at IS NOT NULL;
