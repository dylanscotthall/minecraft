#include <iostream>
#include "main.h"
#include "shader.h"
#include "VAO.h"
#include "VBO.h"
#include "EBO.h"
#include "renderer.h"
#include "texture.h"
#include <cmath>
#include "glm/glm.hpp"
#include "glm/gtc/matrix_transform.hpp"
#include "imgui.h"
#include "imgui_impl_glfw.h"
#include "imgui_impl_opengl3.h"

GLfloat vertices[] =
    {
        200.0f, 200.0f, 0.0f, 0.0f,
        600.0f, 200.0f, 1.0f, 0.0f,
        600.0f, 600.0f, 1.0f, 1.0f,
        200.0f, 600.0f, 0.0f, 1.0f
        //     //position                              //color
        //    -0.5f, -0.5f * float(sqrt(3)) / 3,       0.0f, 0.0f, 0.0f, 1.0f,
        //     0.5f, -0.5f * float(sqrt(3)) / 3,       0.0f, 0.0f, 1.0f, 0.0f,
        //     0.0f,  0.5f * float(sqrt(3)) * 2 / 3,   0.0f, 1.0f, 0.0f, 0.0f,
        //   -0.25f,  0.5f * float(sqrt(3)) / 6,       0.0f, 0.0f, 1.0f, 0.0f,
        //    0.25f,  0.5f * float(sqrt(3)) / 6,       0.0f, 0.0f, 0.0f, 1.0f,
        //     0.0f, -0.5f * float(sqrt(3)) / 3,       0.0f, 1.0f, 0.0f, 0.0f,

};

GLuint indices[] =
    {
        0, 1, 2,
        2, 3, 0};

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

    // Creates an openGL window
    GLFWwindow *window = glfwCreateWindow(800, 800, "Minecraft", NULL, NULL);
    // some error checking
    if (window == NULL)
    {
        std::cout << "Oi OpenGL aint set up properly a window couldnt be created" << std::endl;
        glfwTerminate();
        return -1;
    }

    // introduce window into current context
    glfwMakeContextCurrent(window);
    // loads glad
    gladLoadGL();
    // sets the viewport
    glViewport(0, 0, 800, 800);

    glEnable(GL_BLEND);
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);

    glm::mat4 proj = glm::ortho(0.0f, 800.0f, 0.0f, 800.0f, -1.0f, 1.0f);
    glm::mat4 view = glm::translate(glm::mat4(1.0f), glm::vec3(0, 0, 0));

    Shader shaderProgram("../src/default.vert", "../src/default.frag");
    shaderProgram.Bind();

    Texture texture("../src/dyl.jpg");
    texture.Bind();
    shaderProgram.SetUniform1i("u_Texture", 0);

    Renderer renderer;
    VAO VAO1;
    VAO1.Bind();

    VBO VBO1(vertices, sizeof(vertices));
    EBO EBO1(indices, 9);

    VBOLayout layout;
    layout.Push<float>(2);
    layout.Push<float>(2);
    VAO1.AddBuffer(VBO1, layout);

    // Setup Dear ImGui context
    IMGUI_CHECKVERSION();
    ImGui::CreateContext();
    ImGuiIO &io = ImGui::GetIO();
    (void)io;
    io.ConfigFlags |= ImGuiConfigFlags_NavEnableKeyboard; // Enable Keyboard Controls
    io.ConfigFlags |= ImGuiConfigFlags_NavEnableGamepad;  // Enable Gamepad Controls

    // Setup Dear ImGui style
    ImGui::StyleColorsDark();
    // ImGui::StyleColorsLight();

    // Setup Platform/Renderer backends
    ImGui_ImplGlfw_InitForOpenGL(window, true);
    ImGui_ImplOpenGL3_Init("#version 330");

    glm::vec3 translationA(0, 0, 0);
    glm::vec3 translationB(200, 200, 0);

    // main loop that runs while the window is open
    while (!glfwWindowShouldClose(window))
    {
        glfwPollEvents();

        // sets background color
        glClearColor(0.1f, 0.1f, 0.1f, 1.0f);

        // // Start the Dear ImGui frame
        ImGui_ImplOpenGL3_NewFrame();
        ImGui_ImplGlfw_NewFrame();
        ImGui::NewFrame();

        {
            ImGui::Begin("Minecraft Toolkit");

            ImGui::SliderFloat3("translationA", &translationA.x, -400.0f, 400.0f);
            ImGui::SliderFloat3("translationB", &translationB.x, -400.0f, 400.0f);

            ImGui::Text("Application average %.3f ms/frame (%.1f FPS)", 1000.0f / io.Framerate, io.Framerate);
            ImGui::End();
        }

        // Rendering
        ImGui::Render();
        int display_w, display_h;
        glfwGetFramebufferSize(window, &display_w, &display_h);
        glViewport(0, 0, display_w, display_h);
        renderer.Clear();
        {
            glm::mat4 model = glm::translate(glm::mat4(1.0f), translationA);
            glm::mat4 mvp = proj * view * model;
            shaderProgram.SetUniformMat4f("u_MVP", mvp);
            renderer.Draw(VAO1, EBO1, shaderProgram);
        }
        {
            glm::mat4 model = glm::translate(glm::mat4(1.0f), translationB);
            glm::mat4 mvp = proj * view * model;
            shaderProgram.SetUniformMat4f("u_MVP", mvp);
            renderer.Draw(VAO1, EBO1, shaderProgram);
        }

        renderer.Draw(VAO1, EBO1, shaderProgram);

        ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());

        glfwSwapBuffers(window);
    }

    // destroys all objects to close nicely
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
void processInput(GLFWwindow *window)
{
    if (glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_PRESS)
        glfwSetWindowShouldClose(window, true);
}

// glfw: whenever the window size changed (by OS or user resize) this callback function executes
// ---------------------------------------------------------------------------------------------
void framebuffer_size_callback(GLFWwindow *window, int width, int height)
{
    // make sure the viewport matches the new window dimensions; note that width and
    // height will be significantly larger than specified on retina displays.
    glViewport(0, 0, width, height);
}

// clears opengls error buffer
static void GLClearError()
{
    while (glGetError() != GL_NO_ERROR)
        ;
}

static void GLCheckError()
{
    while (GLenum error = glGetError())
    {
        std::cout << "[OpenGL Error] ( " << error << " )" << std::endl;
    }
}
