#version 330 core

layout (location = 0) in vec3 vertexPos;
layout (location = 1) in vec3 vertexColor;

out vec3 outputColor;

uniform mat4 projection;
uniform mat4 transform;
uniform mat4 view;

void main()
{
    gl_Position = projection * view * transform * vec4(vertexPos, 1.0);
    outputColor = vertexColor;
}