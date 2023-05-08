#pragma once
#include <glad/glad.h>

class VBO {
	private:
	unsigned int m_VBO_ID;
public:
	VBO(const void* vertices, unsigned int size);
	void Bind() const;
	void Unbind() const;
	void Delete();
};
