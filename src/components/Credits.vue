<template>
  <div class="credits">
    <header class="header">
      <h1 class="title">
        <a href="https://vuejs.org/" target="_blank" rel="noopener">Vue 3</a>+<a
          href="https://tresjs.org/"
          target="_blank"
          rel="noopener"
          >TresJS</a
        >
        starter
      </h1>

      <p class="subtitle">
        by
        <a href="https://www.francescomichelini.com" target="_blank" rel="noopener"
          >Francesco Michelini</a
        >
      </p>
    </header>

    <p style="opacity: 0.85">
      Check out the
      <a href="https://github.com/kekkorider/vue-tres-starter" target="_blank" rel="noopener"
        >GitHub Repository</a
      >.<br />
      <strong>TIP</strong>: Click the box to animate it.
    </p>
  </div>
</template>

<style scoped>
.credits {
  display: flex;
  flex-direction: column;
  background-color: rgba(37, 37, 41, 0.9);
  line-height: 1.7;
  padding: 24px;
  border-radius: 12px;
  color: rgba(255, 255, 245, 0.86);
  font-family: 'Titillium Web', sans-serif;
  position: fixed;
  left: 30px;
  bottom: 30px;
  z-index: 2;
}

.header {
  margin-bottom: 1rem;
}

.title {
  font-size: 3rem;
  font-weight: 700;
  margin: 0;
}

.subtitle {
  margin-top: -0.35em;
}

p {
  margin: 0;
  font-size: 1rem;
  font-weight: 600;
}

strong {
  color: rgb(130, 219, 197);
}

a {
  color: rgb(130, 219, 197);
  font-weight: inherit;

  &:hover {
    text-decoration: none;
  }
}
</style>
