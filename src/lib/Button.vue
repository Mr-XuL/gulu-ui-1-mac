<template>
  <button>
    <slot />
  </button>
</template>

<script lang="ts">
export default {
  inheritAttrs: false,
  props: {},
  setup(props, context) {
    const { size, ...rest } = context.attrs;
    return { size, rest };
  },
};
</script>