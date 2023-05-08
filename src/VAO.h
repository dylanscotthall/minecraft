#pragma once

#include <glad/glad.h>
#include "VBO.h"
#include "VBOLayout.h"

class VAO {
	private:
	unsigned int m_VAO_ID;
public:
	VAO();
	void AddBuffer(const VBO& VBO, const VBOLayout& layout);
	void Bind() const;
	void Unbind() const;
	void Delete();
};