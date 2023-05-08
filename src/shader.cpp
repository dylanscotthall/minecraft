#include "shader.h"

std::string get_file_contents(const char *filename)
{
    std::ifstream in(filename, std::ios::binary);
    if (in)
    {
        std::string contents;
        in.seekg(0, std::ios::end);
        contents.resize(in.tellg());
        in.seekg(0, std::ios::beg);
        in.read(&contents[0], contents.size());
        in.close();
        return (contents);
    }
    throw(errno);
}

Shader::Shader(const char *vertexFile, const char *fragmentFile) : m_filePath(((std::string) "vertex: ", vertexFile, "\nfragment", fragmentFile)), m_Shader_ID(0)
{
    std::string vertexCode = get_file_contents(vertexFile);
    std::string fragmentCode = get_file_contents(fragmentFile);

    const char *vertexSource = vertexCode.c_str();
    const char *fragmentSource = fragmentCode.c_str();

    // creates an unsigned int to represent a gl shader and set the shader to be a vertex shader
    GLuint vertexShader = glCreateShader(GL_VERTEX_SHADER);
    // provides the source for the fragmentShader, first point to vertexShader, then number of screen which is 1, then the source and last is unimportant
    glShaderSource(vertexShader, 1, &vertexSource, NULL);
    // compiles the shader so openGL knows whats cutting
    glCompileShader(vertexShader);

    // same as above except will be a fragment shader instead of vertex shader
    GLuint fragmentShader = glCreateShader(GL_FRAGMENT_SHADER);
    glShaderSource(fragmentShader, 1, &fragmentSource, NULL);
    glCompileShader(fragmentShader);

    // creates reference for a shader program and creates it
    m_Shader_ID = glCreateProgram();
    // passes both the fragment and vertex shader to the shader program
    glAttachShader(m_Shader_ID, vertexShader);
    glAttachShader(m_Shader_ID, fragmentShader);

    // tells openGL to use the shader program
    glLinkProgram(m_Shader_ID);

    // deletes shaders since we dont need them as they are already in the shader program
    glDeleteShader(vertexShader);
    glDeleteShader(fragmentShader);
}

void Shader::Delete()
{
    glDeleteProgram(m_Shader_ID);
}

void Shader::Bind() const
{
    glUseProgram(m_Shader_ID);
}
void Shader::Unbind() const
{
    glUseProgram(0);
}
void Shader::SetUniform1i(const std::string &name, int value)
{
    glUniform1i(GetUniformLocation(name), value);
}
void Shader::SetUniform1f(const std::string &name, float value)
{
    glUniform1f(GetUniformLocation(name), value);
}
void Shader::SetUniform4f(const std::string &name, float v0, float v1, float v2, float v3)
{
    glUniform4f(GetUniformLocation(name), v0, v1, v2, v3);
}
void Shader::SetUniformMat4f(const std::string& name, const glm::mat4& matrix)
{
    glUniformMatrix4fv(GetUniformLocation(name), 1, GL_FALSE, &matrix[0][0]);
}
int Shader::GetUniformLocation(const std::string &name) const
{
    if (m_UniformLocationCache.find(name) != m_UniformLocationCache.end())
    {
        return m_UniformLocationCache[name];
    }
    int location = glGetUniformLocation(m_Shader_ID, name.c_str());
    if (location == -1)
    {
        std::cout << "Warning: uniform " << name << " doesnt exist." << std::endl;
    }
    m_UniformLocationCache[name] = location;
    return location;
}
