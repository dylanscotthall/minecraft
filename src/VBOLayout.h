#pragma once
#include <vector>
#include <glad/glad.h>
#include <GLFW/glfw3.h>
struct VBOElement
{
    unsigned int type;
    unsigned int count;
    unsigned char normalized;

    static unsigned int GetSizeOfType(unsigned int type)
    {
        switch (type)
        {
        case GL_FLOAT:
            return 4;
        case GL_UNSIGNED_INT:
            return 4;
        case GL_UNSIGNED_BYTE:
            return 1;
        }
        return 0;
    }
};

class VBOLayout
{
private:
    std::vector<VBOElement> m_Elements;
    unsigned int m_Stride;

public:
    VBOLayout() : m_Stride(0) {}

    template <typename t, class Dummy=int>
    void Push(unsigned int count)
    {
        ;
    }

    inline const std::vector<VBOElement> GetElements() const { return m_Elements; }
    inline unsigned int GetStride() const { return m_Stride; }
};

template<> inline void VBOLayout::Push<float>(unsigned int count)
    {
        m_Elements.push_back({GL_FLOAT, count, GL_FALSE});
        m_Stride += count * VBOElement::GetSizeOfType(GL_FLOAT);
    }

template<> inline void VBOLayout::Push<unsigned int>(unsigned int count)
    {
        m_Elements.push_back({GL_UNSIGNED_INT, count, GL_FALSE});
        m_Stride += count * VBOElement::GetSizeOfType(GL_UNSIGNED_INT);
    }

template<> inline void VBOLayout::Push<unsigned char>(unsigned int count)
    {
        m_Elements.push_back({GL_UNSIGNED_BYTE, count, GL_TRUE});
        m_Stride += count * VBOElement::GetSizeOfType(GL_UNSIGNED_BYTE);
    }