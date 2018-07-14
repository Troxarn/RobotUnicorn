//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	gl_FragColor = vec4(gl_FragColor.r + 250.0,gl_FragColor.g,gl_FragColor.b,gl_FragColor.a);
}

