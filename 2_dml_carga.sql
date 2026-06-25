USE db_vetpet;

-- 1. Inserindo 25 Tutores
INSERT INTO Tutor (nome, telefone, email) VALUES
('Ana Silva', '61988881111', 'ana@email.com'), ('Carlos Mendes', '61988882222', 'carlos@email.com'),
('Beatriz Costa', '61988883333', 'beatriz@email.com'), ('Daniel Souza', '61988884444', 'daniel@email.com'),
('Eduarda Lima', '61988885555', 'eduarda@email.com'), ('Fabio Santos', '61988886666', 'fabio@email.com'),
('Gabriela Rocha', '61988887777', 'gabriela@email.com'), ('Henrique Alves', '61988888888', 'henrique@email.com'),
('Isabela Martins', '61988889999', 'isabela@email.com'), ('João Pedro', '61988880000', 'joao@email.com'),
('Karla Dias', '61999991111', 'karla@email.com'), ('Lucas Pereira', '61999992222', 'lucas@email.com'),
('Mariana Gomes', '61999993333', 'mariana@email.com'), ('Nicolas Moraes', '61999994444', 'nicolas@email.com'),
('Olivia Pinto', '61999995555', 'olivia@email.com'), ('Paulo Castro', '61999996666', 'paulo@email.com'),
('Quintino Lemos', '61999997777', 'quintino@email.com'), ('Rafaela Nunes', '61999998888', 'rafaela@email.com'),
('Samuel Pires', '61999999999', 'samuel@email.com'), ('Tatiana Faria', '61999990000', 'tatiana@email.com'),
('Ulysses Melo', '61977771111', 'ulysses@email.com'), ('Vanessa Cruz', '61977772222', 'vanessa@email.com'),
('Wagner Luz', '61977773333', 'wagner@email.com'), ('Xuxa Meneghel', '61977774444', 'xuxa@email.com'),
('Yasmin Freitas', '61977775555', 'yasmin@email.com');

-- 2. Inserindo 5 Veterinários
INSERT INTO Veterinario (nome, crmv, salario) VALUES
('Dr. Roberto', 'CRMV-DF 1234', 6500.00), ('Dra. Camila', 'CRMV-DF 5678', 7200.00),
('Dr. Fernando', 'CRMV-DF 9012', 5800.00), ('Dra. Leticia', 'CRMV-DF 3456', 8100.00),
('Dr. Marcos', 'CRMV-DF 7890', 6000.00);

-- 3. Inserindo 35 Animais (Alguns vinculados a tutores, outros disponíveis para adoção)
INSERT INTO Animal (nome, especie, idade, id_tutor) VALUES
('Rex', 'Cachorro', 3, 1), ('Mia', 'Gato', 2, 2), ('Thor', 'Cachorro', 5, 3),
('Luna', 'Cachorro', 1, 4), ('Nina', 'Gato', 4, 5), ('Bolinha', 'Cachorro', 2, 6),
('Simba', 'Gato', 3, 7), ('Mel', 'Cachorro', 6, 8), ('Bob', 'Cachorro', 1, 9),
('Fred', 'Cachorro', 7, 10), ('Amora', 'Gato', 2, 11), ('Theo', 'Cachorro', 4, 12),
('Julie', 'Cachorro', 8, 13), ('Toby', 'Cachorro', 3, 14), ('Chico', 'Gato', 5, 15),
('Pipoca', 'Cachorro', 1, 16), ('Lola', 'Cachorro', 2, 17), ('Zeca', 'Cachorro', 4, 18),
('Max', 'Cachorro', 6, 19), ('Pitoco', 'Cachorro', 3, 20), ('Frajola', 'Gato', 2, 21),
('Garfield', 'Gato', 5, 22), ('Belinha', 'Cachorro', 1, 23), ('Snoop', 'Cachorro', 4, 24),
('Marley', 'Cachorro', 7, 25),
('Bidu', 'Cachorro', 1, NULL), ('Mimi', 'Gato', 2, NULL), ('Toto', 'Cachorro', 3, NULL),
('Mingau', 'Gato', 1, NULL), ('Lassie', 'Cachorro', 4, NULL), ('Branca', 'Gato', 2, NULL),
('Negão', 'Cachorro', 5, NULL), ('Fofinho', 'Gato', 1, NULL), ('Valente', 'Cachorro', 3, NULL),
('Princesa', 'Gato', 2, NULL);

-- 4. Inserindo 25 Consultas
INSERT INTO Consulta (data_consulta, valor, id_animal, id_vet) VALUES
('2026-05-01', 150.00, 1, 1), ('2026-05-02', 200.00, 2, 2), ('2026-05-03', 180.00, 3, 3),
('2026-05-04', 120.00, 4, 4), ('2026-05-05', 250.00, 5, 5), ('2026-05-06', 150.00, 6, 1),
('2026-05-07', 300.00, 7, 2), ('2026-05-08', 180.00, 8, 3), ('2026-05-09', 120.00, 9, 4),
('2026-05-10', 200.00, 10, 5), ('2026-05-11', 150.00, 11, 1), ('2026-05-12', 250.00, 12, 2),
('2026-05-13', 180.00, 13, 3), ('2026-05-14', 120.00, 14, 4), ('2026-05-15', 300.00, 15, 5),
('2026-05-16', 150.00, 16, 1), ('2026-05-17', 200.00, 17, 2), ('2026-05-18', 180.00, 18, 3),
('2026-05-19', 120.00, 19, 4), ('2026-05-20', 250.00, 20, 5), ('2026-05-21', 150.00, 21, 1),
('2026-05-22', 200.00, 22, 2), ('2026-05-23', 180.00, 23, 3), ('2026-05-24', 120.00, 24, 4),
('2026-05-25', 250.00, 25, 5);

-- 5. Inserindo 10 Adoções
INSERT INTO Adocao (data_adocao, id_animal, id_tutor) VALUES
('2026-06-01', 26, 1), ('2026-06-02', 27, 2), ('2026-06-03', 28, 3),
('2026-06-04', 29, 4), ('2026-06-05', 30, 5), ('2026-06-06', 31, 6),
('2026-06-07', 32, 7), ('2026-06-08', 33, 8), ('2026-06-09', 34, 9),
('2026-06-10', 35, 10);