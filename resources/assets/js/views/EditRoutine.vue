<template>
        <routine-form 
            :routine="routine"
            :onSubmit="updateRoutine"
            title="Edit Routine"
            buttonText="Update"
        />
</template>

<script>

import RoutineForm from '../components/RoutineForm'
import { mapActions, mapGetters } from 'vuex'

export default {

    components: {
        RoutineForm
    },

    methods: {

        ...mapActions([
            'updateRoutine'
        ])

    },

    computed: {

        routine: function() {
            //TODO: api call if not found (direct route load)
            return this.getRoutine(this.$route.params.id)
        },

        ...mapGetters([
            'getRoutine'
        ])

    }

}

</script>
