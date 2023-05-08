#pragma once
#include "VAO.h"
#include "EBO.h"
#include "Shader.h"

class Renderer{
    public:
    void Draw(const VAO& VAO, const EBO& EBO, const Shader& Shader) const;
    void Clear() const;
};