package com.duoc.Actividad9.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.duoc.Actividad9.model.Cliente;
import com.duoc.Actividad9.repository.IClienteRepository;

@Controller
public class MainController {

	@Autowired
	private IClienteRepository repo;

	@ModelAttribute("cliente")
	public Cliente setCliente() {
		return new Cliente();
	}

	@GetMapping("/")
	public String getIndex() {
		return "index";
	}
	
	@GetMapping("/login")
	public String getLogin() {
		return "login";
	}

	
	@GetMapping("index")
	public String redirectIndex() {
		return "index";
	}

	@GetMapping("listar")
	public String getListar(Model model) {
		model.addAttribute("listar", repo.findAll());
		return "listar";
	}

	@GetMapping("mostrarCrear")
	public String mostrarAgregar() {
		return "crear";
	}

	@PostMapping("agregar")
	public String agregar(@Valid @ModelAttribute("cliente") Cliente cl, BindingResult br, Model model) {
		if (br.hasErrors()) {
			return "crear";
		} else {
			repo.save(cl);
			model.addAttribute("listar", repo.findAll());
			return "listar";
		}
	}

	@RequestMapping("modificar")
	public String getModificar(String rut, Model model) {
		model.addAttribute("cl", repo.getOne(rut));
		return "modificar";
	}

	@PostMapping("modificarC")
	public String PostModificar(@Valid @ModelAttribute("cliente") Cliente cl, BindingResult br, Model model) {
		if (br.hasErrors()) {
			return "modificar";
		} else {
			repo.save(cl);
			model.addAttribute("listar", repo.findAll());
			return "listar";
		}

	}

	@RequestMapping("eliminar")
	public String postEliminar(String rut, Model model) {
		repo.deleteById(rut);
		model.addAttribute("listar", repo.findAll());
		return "listar";
	}

	@PostMapping("buscar")
	public String postBuscar(String rut, Model model) {
		model.addAttribute("listar", repo.findByRut(rut));
		return "listar";
	}

}
