package com.duoc.Actividad9.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.duoc.Actividad9.model.Cliente;

public interface IClienteRepository extends JpaRepository<Cliente, String> {

	List<Cliente> findByRut(String rut);
}
