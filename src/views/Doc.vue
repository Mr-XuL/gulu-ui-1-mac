<template>
  <div class="layout">
    <Topnav  toggleMenuButtonVisible  class="nav" />
    <div class="content">
      <aside v-if="menuvisible">
      <h2>文档</h2>
        <ol>
          <li>
            <router-link to="/doc/intro">介绍</router-link>
          </li><li>
            <router-link to="/doc/get-started">开始</router-link>
          </li><li>
            <router-link to="/doc/install">安装</router-link>
          </li>
        </ol>
        <h2>组件列表</h2>
        <ol>
          <li>
            <router-link to="/doc/switch">Switch组件</router-link>
          </li>
          <li>
            <router-link to="/doc/Button">Button组件</router-link>
          </li>
          <li>
            <router-link to="/doc/Dialog">Dialog组件</router-link>
          </li>
          <li>
            <router-link to="/doc/Tabs">Tabs组件</router-link>
          </li>
        </ol>
      </aside>
      <main>
        <router-view />
      </main>
    </div>
  </div>
</template>

<script lang="ts">
import { inject, Ref } from "vue";
import Topnav from "../components/Topnav.vue";
export default {
  components: { Topnav },
  setup() {
    const menuvisible = inject<Ref<boolean>>("menuVisible");
    return { menuvisible };
  },
};
</script>
<style lang="scss" scoped>
$aside-index : 10;
.layout {
  display: flex;
  flex-direction: column;
  height: 100vh;
  > .nav {
    flex-shrink: 0;
  }
  > .content {
    flex-grow: 1;
    padding-top: 60px;
    padding-left: 156px;
    @media (max-width: 500px) {
      padding-left: 0;
    }
  }
}
.content {
  display: flex;
  > aside {
    flex-shrink: 0;
  }
  > main {
    flex-grow: 1;
    padding: 16px;
    background: white ;
  }
}
aside {
  background: lightblue;
  width: 150px;
  position: fixed;
  top: 0;
  left: 0;
  padding-top: 70px;
  height: 100%;
  z-index: $aside-index;
  > h2 {
    margin-bottom: 4px;
    padding: 0 16px;
  }
  > ol {
    > li {
      >a{
        text-decoration:underline;
        display: block;
        padding: 16px;
        text-decoration:none;
      }
      .router-link-active{

        background:white;
}
    }
  }
}
main {
  overflow: auto;
}
</style>
