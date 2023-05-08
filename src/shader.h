#pragma once
#include <glad/glad.h>
#include <string>
#include <fstream>
#include <sstream>
#include <iostream>
#include <cerrno>
#include <unordered_map>
#include "glm/glm.hpp"

std::string get_file_contents(const char* filename);

class Shader {
	private:
	unsigned int m_Shader_ID;
	std::string m_filePath;
	mutable std::unordered_map<std::string, int> m_UniformLocationCache;

public:
	Shader(const char* vertexFile, const char* fragmentFile);

	void Delete();

	void Bind() const;
	void Unbind() const;

	void SetUniform1i(const std::string & name, int value);
	void SetUniform1f(const std::string & name, float value);
	void SetUniform4f(const std::string& name, float v0, float v1, float f2, float f3);
	void SetUniformMat4f(const std::string& name, const glm::mat4& matrix);
	private:
	int GetUniformLocation(const std::string& name) const;
};