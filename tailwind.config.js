export default {
  content: ['./index.html', './src/**/*.{ts,tsx}'],
  theme: {
    extend: {
      colors: { ink: '#0B1020', panel: '#151C3A', line: '#2A3466', violet: '#8B6BFF', mint: '#3DF5C0', sun: '#FFC857' },
      fontFamily: { display: ['"Bricolage Grotesque"', 'system-ui', 'sans-serif'], sans: ['"DM Sans"', 'system-ui', 'sans-serif'] }
    }
  },
  plugins: []
}
