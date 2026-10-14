# Projet Entrée / Sortie.

## À  propos



Dans une volonté de standardiser le processus d'entrée/sortie actuel des agents, la  DSIUN c'est proposé d'offrir une application web dédiée au traitement de l'entrée et de la sortie des agents. Vous trouverez dans ce repot toutes les informations nécessaires afin de découvrir et apporter votre contribution au projet.

## Table des matières
-   [À  propos]()
- [🔗 Prérequis]()
- [Installation]()
- [🎯 Utilisation]()
- [Contribution]()
- [Construit avec]()
- [📜 Documentation]()
- [📥 Démarrage rapide]()
- [📥 Liens utiles]()

## Prérequis
  - Node.js
  - npm
  - Java 21+ (backend Spring Boot)
  - PostgeSQL
  - Git
  - Vite
  - Maven (Optionnel)
### Documenation
Backend:
  -  [Harchitecture Hexagonale](https://blog.octo.com/architecture-hexagonale-trois-principes-et-un-exemple-dimplementation)
  - [Spring Boot](https://spring.io/projects/spring-boot)
Frontend: 
  -  [Shadcn](https://ui.shadcn.com/) (pour les composants ui)
  - [magicui](https://magicui.design/) (pour les composants avec effets)
  - [tweakcn](https://tweakcn.com/) (pour les couleurs et la typographie du site)

### Backend
##### 1) Configurer la base de donnée PostgreSQL
      - DB: "projet_entre_sortie"
      - user: "entre_sortie_user"
      - password: "user"
#### 2) lancer le backend
    - cd process_entrée_sortie
    - mvnw spring-boot:run (sans Maven)
    - mvn spring-boot:run  (avec Maven)
### Frontend
##### Lancer le Frontend
    - cd frontEnd-projet-entre-sortie
    - npm run dev
## Installation

Installer du frontEnd avec npm

```bash
  npm install frontEnd-projet-entre-sortie
  cd frontEnd-projet-entre-sortie
```
    
## Utilisation

1) Demarrer le backend et le frontend (voir section Installation).
2) Ouvrir l'application dans le navigateur: `http://localhost:5173`.
3) Acceder aux ecrans principaux:
   - Tableau de bord des processus
   - Detail d'un agent
   - Detail d'un processus
   - Suivi des taches et formulaires
4) Creer ou demarrer un processus depuis un template (entree, sortie, mobilite interne).
5) Suivre l'avancement et finaliser les taches.
## Contribution

- Marcel Pecqueux
- Henri Eke Priso
## Construit avec

### Langages & Frameworks

#### Backend
- Java 21
- Spring Boot (Web, Security, Data JPA)
- PostgreSQL
- Springdoc OpenAPI (Swagger)

#### Frontend
- React
- TypeScript
- Vite
- Tailwind CSS
- shadcn/ui + Radix UI
- React Router
- Axios
## Démarrage rapide
1. Architecture → voir ARCHITECTURE.md
2. Base de données → voir DATABASE.md
3. Guide des écrans → voir SCREENS.md
4. Conventions de code → voir CODE_GUIDE.md
## Liens utiles
- Maquettes écran Figma : https://www.figma.com/design/u9H2zjApFRb3oYlobKoddk/wireframe-entr%C3%A9e-sortie?node-id=1-2&t=ApZupikDs4TAqr8p-1
- Diagrammes cas d'utilisation : voir /docs/annexes/
- MCD : voir DATABASE.md