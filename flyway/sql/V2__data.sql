insert into requirement(id, name, registration_nomor)
values ('001', 'req 1', '190001'),
       ('002', 'req 2', '190001'),
       ('003', 'req 3', '190001'),
       ('004', 'req 4', '190001'),
       ('005', 'req 5', '190001'),
       ('006', 'req 6', '190001'),
       ('007', 'req 7', '190001'),
       ('008', 'req 8', '190001');

insert into test_script(id, file_name, requirement_id)
values ('001', 'login normal flow', '001'),
       ('002', 'login username salah', '001'),
       ('003', 'login password salah', '001'),
       ('004', 'login user disabled', '001'),
       ('005', 'login user blocked', '001'),
       ('006', 'create registration normal flow', '002'),
       ('007', 'create registration missing column', '002'),
       ('008', 'update registration', '002'),
       ('009', 'delete registration', '002'),
       ('010', 'copy from parent', '003'),
       ('011', 'create registration missing column', '003');

insert into design_step(id, step_name, test_script_id)
values (uuid(), 'input valid username', '001'),
       (uuid(), 'input valid password', '001'),
       (uuid(), 'klick button submit', '001'),
       (uuid(), 'masuk ke halaman utama', '001'),
       (uuid(), 'input wrong username!', '002'),
       (uuid(), 'input valid password', '002'),
       (uuid(), 'click button submit', '002'),
       (uuid(), 'notification username & password salah', '002'),
       (uuid(), 'input valid username', '003'),
       (uuid(), 'input wrong password!', '003'),
       (uuid(), 'click button submit', '003'),
       (uuid(), 'show notification username & password salah', '003'),
       (uuid(), 'setelah login, masuk ke menu registration list', '006'),
       (uuid(), 'click new registration', '006'),
       (uuid(), 'pilih type project new registration', '006'),
       (uuid(), 'input nama project', '006'),
       (uuid(), 'click button submit', '006'),
       (uuid(), 'muncul notification registration created!', '006');
