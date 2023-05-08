#version 330 core
out vec4 FragColor;

uniform sampler2D u_Texture;

in vec2 v_texCoord;

void main(){
   vec4 texColor = texture(u_Texture, v_texCoord);
   FragColor = texColor;
}