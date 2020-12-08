<template>
  <div>
    <iv class="topnav">
      <div class="logo">logo</div>
      <ul class="menu">
              <li>菜单1</li>
              <li>菜单2</li>
      </ul>
    </div>
    <div class="banner">
      <h1>造轮子UI</h1>
      <h2>一个自己造的小 UI框架</h2>
      <p class="actions">
        <a href="#">GitHub</a>
        <a href="#">开始</a>
      </p>
    </div>
  </div>
</template>

<style lang="scss" scoped>
.topnav {
  background: pink;
  display: flex;
  padding: 16px;
  > .logo {
    max-width: 6em;
  }
  > .menu {
    display: flex;
    white-space: nowrap;
    flex-wrap: nowrap;
    > li {
      margin: 0 1em;
    }
  }
}
</style>