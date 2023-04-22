#include <iostream>
#include "Source.h"
#include "shader.h"
#include "VAO.h"
#include "VBO.h"
#include "EBO.h"
#include <cmath>

GLfloat vertices[] =
{
    //position                              //color
//    -0.5f, -0.5f * float(sqrt(3)) / 3,       0.0f, 0.0f, 0.0f, 1.0f,
//     0.5f, -0.5f * float(sqrt(3)) / 3,       0.0f, 0.0f, 1.0f, 0.0f,
//     0.0f,  0.5f * float(sqrt(3)) * 2 / 3,   0.0f, 1.0f, 0.0f, 0.0f,
//   -0.25f,  0.5f * float(sqrt(3)) / 6,       0.0f, 0.0f, 1.0f, 0.0f,
//    0.25f,  0.5f * float(sqrt(3)) / 6,       0.0f, 0.0f, 0.0f, 1.0f,
//     0.0f, -0.5f * float(sqrt(3)) / 3,       0.0f, 1.0f, 0.0f, 0.0f,
    0.0f, 0.0f ,0.0f, 1.0f, 0.0f, 0.0f,
    -0.1f, -0.1f, 0.0f, 0.0f, 0.0f, 1.0f,
    0.1f, 0.1f, 0.0f, 0.0f, 1.0f, 0.0f

  // -0.5f, -0.5f * float(sqrt(3)) / 3,       0.0f, 0.8f,  0.3f, 0.02f,
  //  0.5f, -0.5f * float(sqrt(3)) / 3,       0.0f, 0.8f, 0.3f, 0.02f,
  //  0.0f,  0.5f * float(sqrt(3)) * 2 / 3,   0.0f, 1.0f, 0.6f, 0.32f,
  //-0.25f,  0.5f * float(sqrt(3)) / 6,       0.0f, 0.9f, 0.45f, 0.17f,
  // 0.25f,  0.5f * float(sqrt(3)) / 6,       0.0f, 0.9f, 0.45f, 0.17f,
  //  0.0f, -0.5f * float(sqrt(3)) / 3,       0.0f, 0.8f, 0.3f, 0.02f

};

GLuint indices[] =
{
    // 0, 3, 5,
    // 3, 2, 4,
    // 5, 4, 1
    0, 1, 2
};

int main()
{
    // glfw: initialize and configure
    // ------------------------------
    glfwInit();
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

#ifdef __APPLE__
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
#endif


    //Creates an openGL window
    GLFWwindow* window = glfwCreateWindow(800, 800, "UniSim", NULL, NULL);
    //some error checking
    if (window == NULL) {
        std::cout << "Oi OpenGL aint set up properly a window couldnt be created" << std::endl;
        glfwTerminate();
        return -1;
    }

    //introduce window into current context
    glfwMakeContextCurrent(window);
    //loads glad
    gladLoadGL();
    //sets the viewport
    glViewport(0, 0, 800, 800);

    Shader shaderProgram("../src/default.vert", "../src/default.frag");

    VAO VAO1;
    VAO1.Bind();

    VBO VBO1(vertices, sizeof(vertices));
    EBO EBO1(indices, sizeof(indices));

    VAO1.LinkAttrib(VBO1, 0, 3, GL_FLOAT, 6 * sizeof(float), (void*)0);
    VAO1.LinkAttrib(VBO1, 1, 3, GL_FLOAT, 6 * sizeof(float), (void*)(3 * sizeof(float)));
    VAO1.Unbind();

    //main loop that runs while the window is open
    while (!glfwWindowShouldClose(window)) {
        //polls events
        glfwPollEvents();

        //sets background color
        glClearColor(0.1f, 0.1f, 0.1f, 1.0f);
        //cleans the back buffer and assigns the new color
        glClear(GL_COLOR_BUFFER_BIT);

        shaderProgram.Activate();
        VAO1.Bind();

        GLClearError();
        glDrawElements(GL_TRIANGLES, 3, GL_UNSIGNED_INT, 0);
        GLCheckError();
        //swaps the buffers to see the color
        glfwSwapBuffers(window);
        
    }

    //destroys all objects to close nicely
    VAO1.Delete();
    VBO1.Delete();
    EBO1.Delete();
    shaderProgram.Delete();
    glfwDestroyWindow(window);
    glfwTerminate();
    return 0;

}

// process all input: query GLFW whether relevant keys are pressed/released this frame and react accordingly
// ---------------------------------------------------------------------------------------------------------
void processInput(GLFWwindow* window)
{
    if (glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_PRESS)
        glfwSetWindowShouldClose(window, true);
}

// glfw: whenever the window size changed (by OS or user resize) this callback function executes
// ---------------------------------------------------------------------------------------------
void framebuffer_size_callback(GLFWwindow* window, int width, int height)
{
    // make sure the viewport matches the new window dimensions; note that width and 
    // height will be significantly larger than specified on retina displays.
    glViewport(0, 0, width, height);
}

//clears opengls error buffer
static void GLClearError(){
    while(glGetError() != GL_NO_ERROR);
}

static void GLCheckError(){
    while(GLenum error = glGetError()){
        std::cout << "[OpenGL Error] ( " << error << " )" << std::endl;  
    }
}
