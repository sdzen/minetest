
uniform sampler2D myTexture;

void main (void)
{
    vec4 col = texture2D(myTexture, vec2(gl_TexCoord[0]));
    col *= gl_Color;
    gl_FragColor = vec4(col.r, col.g, col.b, col.a);
}
