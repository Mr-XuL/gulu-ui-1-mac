<template>
  <div>
    <Topnav />
    <div class="constent">
      <aside>
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
import Topnav from "../components/Topnav.vue";
export default {
  components: { Topnav },
};
</script>

