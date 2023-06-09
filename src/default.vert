#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec2 texCoord;

uniform mat4 u_MVP;

out vec2 v_texCoord;

void main(){
   gl_Position = u_MVP * vec4(aPos, 1.0f);
   v_texCoord = texCoord;
}
