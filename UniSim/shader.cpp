#include "shader.h"

std::string get_file_contents(const char* filename) {
	std::ifstream in(filename, std::ios::binary);
	if (in) {
		std::string contents;
		in.seekg(0, std::ios::end);
		contents.resize(in.tellg());
		in.seekg(0, std::ios::beg);
		in.read(&contents[0], contents.size());
		in.close();
		return(contents);
	}
	throw(errno);
}

Shader::Shader(const char* vertexFile, const char* fragmentFile) {
	std::string vertexCode = get_file_contents(vertexFile);
	std::string fragmentCode = get_file_contents(fragmentFile);

	const char* vertexSource = vertexCode.c_str();
	const char* fragmentSource = fragmentCode.c_str();

    //creates an unsigned int to represent a gl shader and set the shader to be a vertex shader
    GLuint vertexShader = glCreateShader(GL_VERTEX_SHADER);
    //provides the source for the fragmentShader, first point to vertexShader, then number of screen which is 1, then the source and last is unimportant
    glShaderSource(vertexShader, 1, &vertexSource, NULL);
    //compiles the shader so openGL knows whats cutting
    glCompileShader(vertexShader);

    //same as above except will be a fragment shader instead of vertex shader
    GLuint fragmentShader = glCreateShader(GL_FRAGMENT_SHADER);
    glShaderSource(fragmentShader, 1, &fragmentSource, NULL);
    glCompileShader(fragmentShader);

    //creates reference for a shader program and creates it 
    ID = glCreateProgram();
    //passes both the fragment and vertex shader to the shader program
    glAttachShader(ID, vertexShader);
    glAttachShader(ID, fragmentShader);

    //tells openGL to use the shader program
    glLinkProgram(ID);

    //deletes shaders since we dont need them as they are already in the shader program
    glDeleteShader(vertexShader);
    glDeleteShader(fragmentShader);

}

void Shader::Activate() {
    glUseProgram(ID);
}

void Shader::Delete() {
    glDeleteProgram(ID);
}