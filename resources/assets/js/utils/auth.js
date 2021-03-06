import store from '../store/store'

export const checkAndSetAuthenticated = () => {
    const accessToken = localStorage.getItem('accessToken')
    const expiresIn = localStorage.getItem('expiresIn')
    if (accessToken && expiresIn) {
        store.commit('initializeAuth', {
            accessToken,
            expiresIn
        })
    }
}
