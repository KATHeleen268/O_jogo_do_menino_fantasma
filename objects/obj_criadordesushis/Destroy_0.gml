/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

repeticao = random_range(10, 100);

repeat(repeticao)
{
instance_create_layer(x, y, layer, obj_pparticula);
}