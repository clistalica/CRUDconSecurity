package com.duoc.Actividad9.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
public class Cliente {
	
	@Id
	@Size(min = 7, max = 8)
	@NotNull(message = "el campo no puede quedar vacio")
	public String rut;
	
	@Size(max = 1, min = 1)
	@NotNull(message = "el campo no puede quedar vacio")
	@Column(name = "digito_verificador")
	public String dv;
	
	@Size(max = 20, message = "su nombre excede los caracteres maximos")
	@NotNull(message = "el campo no puede quedar vacio")
	public String nombre;
	
	@Size(max = 20, message = "su apellido excede los caracteres maximos")
	@NotNull(message = "el campo no puede quedar vacio")
	public String apellido;
	
	@Size(max = 50, message = "su direccion excede los caracteres maximos")
	@NotNull(message = "el campo no puede quedar vacio")
	public String direccion;
	
	@Size(max = 30, message = "su ciudad excede los caracteres maximos")
	@NotNull(message = "el campo no puede quedar vacio")
	public String ciudad;
	
	public Cliente() {
		super();
	}

	public Cliente(String rut, String dv, String nombre, String apellido, String direccion, String ciudad) {
		super();
		this.rut = rut;
		this.dv = dv;
		this.nombre = nombre;
		this.apellido = apellido;
		this.direccion = direccion;
		this.ciudad = ciudad;
	}
	
	public String getRut() {
		return rut;
	}
	public void setRut(String rut) {
		this.rut = rut;
	}
	public String getDv() {
		return dv;
	}
	public void setDv(String dv) {
		this.dv = dv;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellido() {
		return apellido;
	}
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	public String getCiudad() {
		return ciudad;
	}
	public void setCiudad(String ciudad) {
		this.ciudad = ciudad;
	}

	@Override
	public String toString() {
		return "Cliente [rut=" + rut + ", dv=" + dv + ", nombre=" + nombre + ", apellido=" + apellido + ", direccion="
				+ direccion + ", ciudad=" + ciudad + "]";
	}
	
	
}
