<template>
  <div>
    <Topnav />
    <div class="constent">
      <aside v-if="menuvisible">
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
      <main>主内容</main>
    </div>
  </div>
</template>

<script lang="ts">
import { inject, Ref } from "vue";
import Topnav from "../components/Topnav.vue";
export default {
  components: { Topnav },
  setup() {
    const menuvisible = inject<Ref<boolean>>("xxx");
    return { menuvisible };
  },
};
</script>

<style lang="scss">
aside {
  background: lightblue;
  width: 150px;
  padding: 16px;
  position: fixed;
  top: 0;
  left: 0;
  padding-top: 70px;
  > h2 {
    margin-bottom: 4px;
  }
  > ol {
    > li {
      padding: 4px 0;
    }
  }
}
</style>

