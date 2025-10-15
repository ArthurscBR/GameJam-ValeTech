// ===== MOVIMENTO HORIZONTAL =====
var mov = 0;

if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
    mov = 1;
}
if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
    mov = -1;
}

// Aplica movimento
x += mov * velocidade;

// ===== GRAVIDADE =====
vsp += gravidade;

// ===== VERIFICAR CHÃO =====
// Aqui usamos uma checagem simples (precisa de um obj_parede/obj_chao)
if (place_meeting(x, y + 1, obj_parede)) {
    no_chao = true;
    vsp = 0;
} else {
    no_chao = false;
}
// ===== PULO =====
if (no_chao && (keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W")))) {
    vsp = pulo;
    no_chao = false;
}

// ===== APLICAR MOVIMENTO VERTICAL =====
y += vsp;

while (place_meeting(x, y, obj_parede)) {
    y -= sign(vsp);
    vsp = 0;
}