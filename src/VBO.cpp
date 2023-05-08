#include "VBO.h"

VBO::VBO(const void* vertices, unsigned int size) {
	glGenBuffers(1, &m_VBO_ID);
	//binds the buffer to make it in the current context
	glBindBuffer(GL_ARRAY_BUFFER, m_VBO_ID);
	glBufferData(GL_ARRAY_BUFFER, size, vertices, GL_STATIC_DRAW);
}

void VBO::Bind() const{
	glBindBuffer(GL_ARRAY_BUFFER, m_VBO_ID);
}

void VBO::Unbind() const{
	glBindBuffer(GL_ARRAY_BUFFER, 0);
}

void VBO::Delete() {
	glDeleteBuffers(1, &m_VBO_ID);
}

// #include "VBO.h"

// VBO::VBO(const void* vertices, unsigned int size) {
// 	glGenBuffers(1, &m_VBO_ID);
// 	//binds the buffer to make it in the current context
// 	glBindBuffer(GL_ARRAY_BUFFER, m_VBO_ID);
// 	glBufferData(GL_ARRAY_BUFFER, size, vertices, GL_STATIC_DRAW);
// }

// VBO::~VBO(){
// 	glDeleteBuffers(1, &m_VBO_ID);
// }

// void VBO::Bind() const{
// 	glBindBuffer(GL_ARRAY_BUFFER, m_VBO_ID);
// }

// void VBO::Unbind() const{
// 	glBindBuffer(GL_ARRAY_BUFFER, 0); 
// }

// void VBO::Delete() {
// 	glDeleteBuffers(1, &m_VBO_ID);
// }