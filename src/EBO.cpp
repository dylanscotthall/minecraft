#include "EBO.h"

EBO::EBO(const unsigned int* indices, unsigned int count) 
: m_Count(count){
	glGenBuffers(1, &m_EBO_ID);
	//binds the buffer to make it in the current context
	glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, m_EBO_ID);
	//ensure GLuint is 4 bytes so that it equals a unsigned int i know it does on my pc
	glBufferData(GL_ELEMENT_ARRAY_BUFFER, count * sizeof(unsigned int), indices, GL_STATIC_DRAW);
}

void EBO::Bind() const{
	glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, m_EBO_ID);
}

void EBO::Unbind() const{
	glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
}

void EBO::Delete() {
	glDeleteBuffers(1, &m_EBO_ID);
}