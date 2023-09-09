uniform float u_Time;

varying vec3 vPosition;
varying vec3 vNormal;

#define color_A vec3(0.6039, 0.9059, 0.0431)
#define color_B vec3(0.1176, 0.5412, 0.8627)

void main() {
  float y = sin(vPosition.y * 4.17 - u_Time*2.59);
  vec3 color = mix(color_A, color_B, normalize(vNormal) + y*0.5);

  gl_FragColor = vec4(color, 1.0);
}
