varying vec3 vPosition;
varying vec3 vNormal;

void main() {
  #include <uv_vertex>

  #include <begin_vertex>
  #include <project_vertex>

  vPosition = transformed;
  vNormal = normal;
}
