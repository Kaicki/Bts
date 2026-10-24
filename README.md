# Pontua

Minijogos (Memória e Reflexo), recompensa diária, ranking, painel, FAQ e suporte.
React + TypeScript + Tailwind CSS + Supabase (opcional). Os pontos são virtuais: sem apostas nem dinheiro.

## Rodar
```
npm install
npm run dev
```
Sem `.env`, roda em **modo demonstração** (dados no navegador).

## Ativar o Supabase
1. Crie um projeto em supabase.com e execute `supabase.sql` no SQL Editor.
2. Copie `.env.example` para `.env` e preencha URL e chave **anon** (pública).
3. Nunca use a chave `service_role` no frontend.
4. Para publicar: `npm run build` e envie a pasta `dist` (Netlify, Vercel etc.).
