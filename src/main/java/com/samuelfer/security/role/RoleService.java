package com.samuelfer.security.role;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class RoleService {

    @Autowired
    private RoleRepository roleRepository;

    public Role create(Role role) {
        Optional<Role> roleExists = roleRepository.findByName(role.getName());
        if (roleExists.isPresent()) {
            throw new RuntimeException("Role already");
        }

        var newRole = Role.builder()
                .name(role.getName())
                .build();

        return roleRepository.save(newRole);
    }
}
