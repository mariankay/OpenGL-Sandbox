#version 330 core

layout (location = 0) in vec3 aPos;
//layout (location = 1) in vec3 aColor;
layout (location = 1) in vec2 aTexCoords;

out vec3 color;
out vec2 texCoords;

//uniform mat4 transform;
uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;


void main() {
	gl_Position = projection * view * model * vec4(vec3(aPos), 1.0);
//	color = aColor;
	texCoords = aTexCoords;
}
