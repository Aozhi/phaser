#define SHADER_NAME PHASER_QUAD_SHADER_VS

precision mediump float;

//  These are set in ModelViewProjection.mvpUpdate
uniform mat4 uProjectionMatrix;
uniform mat4 uViewMatrix;
uniform mat4 uModelMatrix;

//  These are set in QuadShaderPipeline
attribute vec2 inPosition;

varying vec2 fragCoord;

void main () 
{
    gl_Position = uProjectionMatrix * uViewMatrix * uModelMatrix * vec4(inPosition, 1.0, 1.0);

    fragCoord = inPosition;
}
