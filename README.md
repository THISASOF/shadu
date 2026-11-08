# Peluquería SHADU — Landing Page

Landing page estática optimizada para SEO local, GEO (Generative Engine Optimization) y AEO (Answer Engine Optimization) para **Peluquería SHADU**, ubicada en Bogotá, Colombia.

Desarrollada por [thisa.cloud](https://thisa.cloud).

---

## Proyecto

| | |
|---|---|
| **Cliente** | Peluquería SHADU |
| **Dirección** | Carrera 90H #91-52, Bogotá, Colombia |
| **Contacto** | 313 485 6080 |
| **Stack** | HTML5 · CSS3 · nginx · Docker |
| **Deployment** | Coolify (auto-deploy desde `main`) |

---

## Características

- **SEO local** — Schema.org `HairSalon`, `FAQPage`, `Person`, Open Graph, Twitter Cards
- **GEO** — Entidades locales, datos estructurados, contenido semántico para AI Overviews
- **AEO** — FAQs con respuestas directas, preparadas para ChatGPT, Perplexity, Claude, Bing Copilot
- **Mobile-first** — Diseño 100% responsive desde 320px
- **Performance** — Sin frameworks JS, fuentes via Google Fonts, lazy loading en imágenes
- **Accesibilidad** — ARIA labels, roles semánticos, contraste WCAG AA
- **CTAs WhatsApp** — Botones con texto pre-cargado por servicio y por estilista
- **Seguridad** — CSP, HSTS, X-Frame-Options, security headers completos via nginx

---

## Estructura

```
shadu/
├── index.html          # Landing page (único archivo HTML)
├── img/                # Imágenes optimizadas del negocio
│   ├── logo.jpg
│   ├── hero.jpg
│   ├── team.jpg
│   ├── salon.jpg
│   └── gallery-01..07.jpg
├── Dockerfile          # nginx:alpine, sin build step
├── nginx.conf          # Configuración nginx con security headers
└── README.md
```

---

## Deployment en Coolify

### Variables requeridas

Ninguna — sitio estático sin variables de entorno.

### Pasos

1. Conectar repositorio `git@github.com:THISASOF/shadu.git` en Coolify
2. Build pack: **Dockerfile**
3. Puerto expuesto: **80**
4. Branch: `main`
5. Auto-deploy: activar en push a `main`

### Docker local

```bash
docker build -t shadu .
docker run -p 8080:80 shadu
# Abrir http://localhost:8080
```

---

## Secciones de la landing

| Sección | Propósito |
|---|---|
| Nav sticky | Navegación + CTA WhatsApp |
| Hero | Headline principal + foto + animación CSS |
| Stats | 30+ años de experiencia, promos L-V |
| Servicios | 6 cards (color, corte, cepillado, manicure, asesoría) |
| Galería | 7 fotos reales del salón y resultados |
| Equipo | Bio de Héctor Niño y Susana Barbosa Barrios |
| Promociones | Cards por día de semana (L-V) |
| Proceso | 4 pasos de una visita |
| Productos | Marcel France + Salerm |
| FAQ | 7 preguntas AEO-optimizadas |
| Contacto | Mapa + dirección + horarios |
| Footer | Links + crédito thisa.cloud |

---

## Pendiente (completar con el cliente)

- [ ] Horarios exactos de atención
- [ ] Porcentajes de descuento por día (promos L-V)
- [ ] Instagram / redes sociales
- [ ] URL definitiva → actualizar `canonical` en `<head>` y Schema.org
- [ ] Medios de pago confirmados (tarjeta, Nequi, Daviplata)
- [ ] Reseñas reales de Google para sección testimonios

---

*Desarrollado por [thisa.cloud](https://thisa.cloud) · 2026*
