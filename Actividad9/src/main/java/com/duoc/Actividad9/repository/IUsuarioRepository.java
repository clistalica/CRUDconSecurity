package com.duoc.Actividad9.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.duoc.Actividad9.model.Usuario;

public interface IUsuarioRepository extends JpaRepository<Usuario, Integer> {

	
}
