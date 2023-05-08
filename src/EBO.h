#pragma once
#include <glad/glad.h>

class EBO {
	private: 
	unsigned int m_EBO_ID;
	unsigned int m_Count;
public:
	EBO(const unsigned int* indices, unsigned int count);

	void Bind() const;
	void Unbind() const;
	void Delete();
	inline unsigned int GetCount() const {return m_Count;}
};