package com.webis.webis_backend.controller;

import com.webis.webis_backend.model.Planta;
import com.webis.webis_backend.service.PlantaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/plantas")
@CrossOrigin(origins = "*") // Permite acceso desde cualquier frontend
public class PlantaController {

    @Autowired
    private PlantaService plantaService;

    // =========================
    // GET todas las plantas
    // =========================
    @GetMapping
    public List<Planta> obtenerPlantas() {
        return plantaService.obtenerPlantas();
    }

    // =========================
    // GET planta por id
    // =========================
    @GetMapping("/{id}")
    public Planta obtenerPlantaPorId(@PathVariable Long id) {
        return plantaService.obtenerPlantaPorId(id);
    }

    // =========================
    // POST nueva planta
    // =========================
    @PostMapping
    public Planta crearPlanta(@RequestBody Planta planta) {
        return plantaService.guardarPlanta(planta);
    }

    // =========================
    // PUT actualizar planta completa
    // =========================
    @PutMapping("/{id}")
    public Planta actualizarPlanta(
            @PathVariable Long id,
            @RequestBody Planta plantaActualizada
    ) {

        Planta planta = plantaService.obtenerPlantaPorId(id);

        if (planta != null) {
            planta.setNombre(plantaActualizada.getNombre());
            planta.setValor(plantaActualizada.getValor());
            planta.setStock(plantaActualizada.getStock());
            planta.setDescripcion(plantaActualizada.getDescripcion());
            planta.setImgPrincipal(plantaActualizada.getImgPrincipal());
            planta.setImgHover(plantaActualizada.getImgHover());

            return plantaService.guardarPlanta(planta);
        }

        return null;
    }

    // =========================
    // PUT actualizar SOLO el precio (ADMIN)
    // =========================
    @PutMapping("/{id}/precio")
    public Planta actualizarPrecio(
            @PathVariable Long id,
            @RequestBody Planta plantaActualizada
    ) {
        Planta planta = plantaService.obtenerPlantaPorId(id);

        if (planta == null) {
            return null;
        }

        planta.setValor(plantaActualizada.getValor());
        return plantaService.guardarPlanta(planta);
    }


    // =========================
    // DELETE planta
    // =========================
    @DeleteMapping("/{id}")
    public void eliminarPlanta(@PathVariable Long id) {
        plantaService.eliminarPlanta(id);
    }
}
