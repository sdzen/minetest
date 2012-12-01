
uniform mat4 mWorldViewProj;
uniform mat4 mInvWorld;
uniform mat4 mTransWorld;

void main(void)
{
	gl_Position = mWorldViewProj * gl_Vertex;

	gl_FrontColor = gl_BackColor = gl_Color;

	gl_TexCoord[0] = gl_MultiTexCoord0;
}
