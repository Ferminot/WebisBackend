package com.webis.webis_backend.controller;

import com.webis.webis_backend.model.Usuario;
import com.webis.webis_backend.repository.UsuarioRepository;
import com.webis.webis_backend.security.JwtUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/auth")
@CrossOrigin(origins = "*")
public class AuthController {

    @Autowired
    private UsuarioRepository usuarioRepository;

    @Autowired
    private JwtUtils jwtUtils;

    private final BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

    // Registro
    @PostMapping("/register")
    public Map<String, String> register(@RequestBody Usuario usuario) {
        if (usuarioRepository.findByCorreo(usuario.getCorreo()) != null) {
            throw new RuntimeException("Usuario ya existe");
        }

        // Encriptar contraseña
        usuario.setContrasena(passwordEncoder.encode(usuario.getContrasena()));

        usuarioRepository.save(usuario);

        Map<String, String> response = new HashMap<>();
        response.put("message", "Usuario registrado correctamente");
        return response;
    }

    // Login
    @PostMapping("/login")
    public Map<String, Object> login(@RequestBody Usuario loginRequest) {

        Usuario usuario = usuarioRepository.findByCorreo(loginRequest.getCorreo());

        if (usuario == null ||
                !passwordEncoder.matches(
                        loginRequest.getContrasena(),
                        usuario.getContrasena())
        ) {
            throw new RuntimeException("Credenciales inválidas");
        }

        // 🔑 token igual que antes
        String token = jwtUtils.generarToken(usuario.getCorreo());

        // 👑 detectar admin SIN roles
        boolean isAdmin = "admin@admin.cl".equals(usuario.getCorreo());

        Map<String, Object> response = new HashMap<>();
        response.put("token", token);
        response.put("username", usuario.getUsuario());
        response.put("correo", usuario.getCorreo());
        response.put("isAdmin", isAdmin);

        return response;
    }

}
