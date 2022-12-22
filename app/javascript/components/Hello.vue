<template lang="">
 <div id='hello'>
   {{message}}
   <app></app>
 </div>
</template>

<script>
import Counter from './Counter.vue'
export default {
    components: {
        Counter
    }
}
</script>

<style lang="">
    
</style>