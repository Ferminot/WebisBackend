package com.webis.webis_backend.controller;

import com.webis.webis_backend.model.Servicio;
import com.webis.webis_backend.service.ServicioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/servicios")
@CrossOrigin(origins = "*")
public class ServicioController {

    @Autowired
    private ServicioService servicioService;

    // GET todos los servicios
    @GetMapping
    public List<Servicio> obtenerServicios() {
        return servicioService.obtenerServicios();
    }

    // GET servicio por ID
    @GetMapping("/{id}")
    public Servicio obtenerServicioPorId(@PathVariable Long id) {
        return servicioService.obtenerServicioPorId(id);
    }

    // POST crear servicio
    @PostMapping
    public Servicio crearServicio(@RequestBody Servicio servicio) {
        return servicioService.guardarServicio(servicio);
    }

    // PUT actualizar servicio completo (si lo usas)
    @PutMapping("/{id}")
    public Servicio actualizarServicio(
            @PathVariable Long id,
            @RequestBody Servicio servicioActualizado
    ) {
        return servicioService.actualizarServicio(id, servicioActualizado);
    }

    // PUT SOLO actualizar precio (ADMIN)
    @PutMapping("/{id}/precio")
    public Servicio actualizarPrecioServicio(
            @PathVariable Long id,
            @RequestBody Servicio servicioBody
    ) {
        Servicio servicio = servicioService.obtenerServicioPorId(id);

        if (servicio != null) {
            servicio.setValor(servicioBody.getValor());
            return servicioService.guardarServicio(servicio);
        }

        return null;
    }


    // DELETE servicio
    @DeleteMapping("/{id}")
    public void eliminarServicio(@PathVariable Long id) {
        servicioService.eliminarServicio(id);
    }
}
