
uniform sampler2D myTexture;

varying vec3 vPosition;

void main (void)
{
    //vec4 col = texture2D(myTexture, vec2(gl_TexCoord[0]));
	/*if(col.r > 0.7){
		col.r = 0.7 + (col.r - 0.7) * 1.3;
		col.g = 0.7 + (col.g - 0.7) * 1.3;
		col.b = 0.7 + (col.b - 0.7) * 1.3;
	}*/
    //col *= gl_Color;
	/*if(col.r < 0.1 && col.g < 0.1 && col.b < 0.1){
		col.r += (0.1 - col.r) / 2.0;
		col.g += (0.1 - col.g) / 2.0;
		col.b += (0.1 - col.b) / 2.0;
	}*/
	//col *= 1.5;
    vec4 col = vec4(0.0, 0.0, 0.0, 1.0);
	//col.r = gl_FragCoord.x / 1000.0;
	//col.g = gl_FragCoord.y / 700.0;
	//col.b = gl_FragCoord.z / 3.0;
	//col.b = gl_Position.z / 3.0;
	col.b = vPosition.z / 100.0;
    gl_FragColor = vec4(col.r, col.g, col.b, col.a);
}
