package com.webis.webis_backend.controller;

import com.webis.webis_backend.model.Pedido;
import com.webis.webis_backend.repository.PedidoRepository;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/pedidos")
@CrossOrigin(origins = "*")
public class PedidoController {

    private final PedidoRepository pedidoRepository;

    public PedidoController(PedidoRepository pedidoRepository) {
        this.pedidoRepository = pedidoRepository;
    }

    @PostMapping
    public ResponseEntity<?> crearPedido(@RequestBody Pedido pedido) {
        // Guardamos el pedido directamente
        Pedido nuevoPedido = pedidoRepository.save(pedido);
        return ResponseEntity.ok(nuevoPedido);
    }
}
