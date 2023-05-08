#pragma once
#include "renderer.h"
class Texture
{
public:
    unsigned int m_Tex_ID;
    std::string m_filePath;
    unsigned char* m_localBuffer;
    int m_width, m_height, m_BPP;

    Texture(const std::string& path);
    ~Texture();

    void Bind(unsigned int slot = 0) const ;
    void Unbind() const;

    inline int GetWidth() const {return m_width;}
    inline int GetHeight() const {return m_height;}
};