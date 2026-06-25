CREATE SCHEMA IF NOT EXISTS db_vetpet;
USE db_vetpet;

CREATE TABLE Tutor (
    id_tutor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE Veterinario (
    id_vet INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    crmv VARCHAR(20) UNIQUE NOT NULL,
    salario DECIMAL(10, 2) NOT NULL
);

CREATE TABLE Animal (
    id_animal INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especie VARCHAR(50) NOT NULL,
    idade INT,
    id_tutor INT,
    CONSTRAINT fk_animal_tutor FOREIGN KEY (id_tutor) REFERENCES Tutor(id_tutor) ON DELETE SET NULL
);

CREATE TABLE Consulta (
    id_consulta INT AUTO_INCREMENT PRIMARY KEY,
    data_consulta DATE NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    id_animal INT NOT NULL,
    id_vet INT NOT NULL,
    CONSTRAINT fk_consulta_animal FOREIGN KEY (id_animal) REFERENCES Animal(id_animal),
    CONSTRAINT fk_consulta_vet FOREIGN KEY (id_vet) REFERENCES Veterinario(id_vet)
);

CREATE TABLE Adocao (
    id_adocao INT AUTO_INCREMENT PRIMARY KEY,
    data_adocao DATE NOT NULL,
    id_animal INT NOT NULL UNIQUE,
    id_tutor INT NOT NULL,
    CONSTRAINT fk_adocao_animal FOREIGN KEY (id_animal) REFERENCES Animal(id_animal),
    CONSTRAINT fk_adocao_tutor FOREIGN KEY (id_tutor) REFERENCES Tutor(id_tutor)
);