#include "renderer.h"

void Renderer::Draw(const VAO& VAO, const EBO& EBO, const Shader& Shader) const{
    Shader.Bind();
    //shaderProgram.setUniform4f("u_Color", 1.0f, 0.0f, 0.0f, 1.0f);
    VAO.Bind();
    EBO.Bind();
    glDrawElements(GL_TRIANGLES, EBO.GetCount(), GL_UNSIGNED_INT, 0);
}

void Renderer::Clear() const{
    // cleans the back buffer and assigns the new color
        glClear(GL_COLOR_BUFFER_BIT);
}