
uniform sampler2D myTexture;
uniform vec4 skyBgColor;

varying vec3 vPosition;

void main (void)
{
    vec4 col = texture2D(myTexture, vec2(gl_TexCoord[0]));
	float a = col.a;
    col *= gl_Color;
	col *= 1.5;
    //vec4 col = vec4(1.0, 0.0, 0.0, 1.0);
	float d = max(0.0, min(vPosition.z / 800.0 - 0.8, 1.0));
	col = mix(col, skyBgColor, d);
    gl_FragColor = vec4(col.r, col.g, col.b, a);
}
