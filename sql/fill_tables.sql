INSERT INTO
    users (user_id, name, phone_number)
VALUES
    (
        '2897d37b-0dcf-42bf-9e9d-71b8610f5180',
        'Ali',
        '+96171236834'
    ),
    (
        '8e529e51-8b0d-499b-8f46-21f7e85a0159',
        'Hasan',
        '+96170149293'
    ),
    (
        '16f289eb-bdb5-4617-a9bb-c6cdb54aa29b',
        'Nesma',
        '+96171505659'
    );

INSERT INTO
    roles (role_id, name)
VALUES
    ('1234', 'admin'),
    ('3333', 'supervisor'),
    ('5051', 'doorkeeper');

INSERT INTO
    permissions (permission_id, action, resource)
VALUES
    ('001', 'create', 'event'),
    ('002', 'get-one', 'event'),
    ('003', 'update', 'event'),
    ('004', 'get-all', 'event'),
    ('005', 'create', 'user'),
    ('006', 'get-one', 'user'),
    ('007', 'update', 'user'),
    ('008', 'get-all', 'user');

INSERT INTO
    users_roles (user_id, role_id)
VALUES
    ('2897d37b-0dcf-42bf-9e9d-71b8610f5180', '5051'),
    ('8e529e51-8b0d-499b-8f46-21f7e85a0159', '5051'),
    ('8e529e51-8b0d-499b-8f46-21f7e85a0159', '3333'),
    ('16f289eb-bdb5-4617-a9bb-c6cdb54aa29b', '1234');

INSERT INTO
    roles_permissions (permission_id, role_id)
VALUES
    ('001', '1234'),
    ('002', '1234'),
    ('003', '1234'),
    ('004', '1234'),
    ('007', '1234'),
    ('008', '1234'),
    ('005', '3333'),
    ('006', '3333'),
    ('003', '5051'),
    ('002', '5051');