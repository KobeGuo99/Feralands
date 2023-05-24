//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float flash;

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	gl_FragColor = vec4(
		gl_FragColor.r + flash,
		gl_FragColor.g,
		gl_FragColor.b,
		gl_FragColor.a
	);
}
