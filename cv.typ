#import "@preview/typographic-resume:0.1.0": *

#let envelope-icon = image("images/font-awesome/envelope-solid.svg")
#let linkedin-icon = image("images/font-awesome/linkedin-in-brands.svg")

#set par(justify: true)
#set text(hyphenate: false)

#show: resume.with(
  theme: (
    // Default: Libre Baskerville, Roboto, Montserrat
    // Install via: brew install --cask font-libre-baskerville font-roboto font-montserrat
    font-size: 7.5pt,
  ),
  first-name: "  Andrej",
  last-name: "Zelník",
  profession: "Platform Engineer",
  profile-picture: image("images/profile_2026.jpeg"),
  bio: [
    Builds and scales internal developer platforms on Kubernetes and multi-cloud infrastructure.
    #linebreak()Combines hands-on infrastructure ownership with a developer background to design platforms that engineering teams actually adopt.
  ],
  aside: {
    section(
      "Contact",
      {
        set image(width: 8pt)
        set text(font: "Roboto", size: 7.5pt)
        contact-entry(
          theme: (align-gutter: top + center),
          pad(top: -1pt, envelope-icon),
          link("mailto:andrej@zelnik.sk", "andrej@zelnik.sk"),
        )
        pad(y: -3.75pt, line(stroke: 0.1pt, length: 100%))
        contact-entry(
          theme: (align-gutter: center),
          pad(top: -2pt, linkedin-icon),
          link("https://linkedin.com/in/andrejzelnik", "andrejzelnik"),
        )
      },
    )

    section(
      "Tech Stack",
      {
        set text(font: "Roboto", size: 7.5pt)
        stack(
          spacing: 7pt,
          [*Kubernetes:* AKS, EKS, Helm, Kustomize, Velero],
          [*Cloud:* Azure, AWS],
          [*CI/CD & GitOps:* GitLab CI, GitHub Actions, ArgoCD, Flux],
          [*IaC:* Terraform, Bicep, Crossplane, Ansible],
          [*Networking:* Nginx, Traefik, cert-manager, external-dns],
          [*Observability:* Prometheus, Grafana, Loki, ELK/EFK],
          [*Secrets:* Vault, SOPS, Key Vault, Secrets Manager],
          [*Security:* OPA, Kyverno, Trivy, Checkov],
          [*Registries:* ACR, Harbor, Artifactory],
          [*Automation:* Python, Shell/Bash],
        )
      },
    )

    section(
      "Languages",
      {
        set text(font: "Roboto", size: 7.5pt)
        stack(
          spacing: 7pt,
          language-entry("Slovak", "Native"),
          language-entry("Czech", "Fluent"),
          language-entry("English", "Fluent"),
          language-entry("Spanish", "Basics"),
        )
      },
    )

    section(
      "Interests",
      {
        set text(font: "Roboto", size: 7.5pt)
        stack(
          spacing: 7pt,
          "Cycling, Running, Swimming",
          "Mountaineering",
          "Adventure Travel",
          "Board Games",
          "Craft Beer & Coffee",
        )
      },
    )
  },
)

// === Work Experience ==========================================================

#section(
  theme: (space-above: 0pt),
  "Work Experience",
  {
    set text(font: "Roboto", size: 7.5pt)
    work-entry(
      theme: (space-above: 0pt),
      timeframe: "Apr 2024 -- Present",
      title: "Sabbatical",
      organization: "career break",
      location: "",
      [
        - Travel (Scandinavia, Singapore, New Zealand, Australia, Balkan), yacht captain license, motorcycle license
      ],
    )
    work-entry(
      theme: (space-above: 10pt),
      timeframe: "Mar 2021 -- Mar 2024",
      title: "Cloud Platform Engineer",
      organization: "Ataccama",
      location: "Prague, CZ",
      [
        - Operated 5+ Kubernetes clusters (AKS/EKS) across Azure and AWS serving 100+ engineers
        - Built an internal developer platform adopted across 30+ services
        - Designed reusable CI/CD pipeline templates that became the org-wide standard
        - Managed 100+ on-demand Kubernetes environments for development, testing, PoCs and CI
        - Reduced cloud infrastructure costs by ~40% through resource optimization and environment lifecycle management
        - Led developer onboarding to Kubernetes through deep-dive workshops and tutorials
      ],
    )
    work-entry(
      theme: (space-above: 10pt),
      timeframe: "Aug 2020 -- Feb 2021",
      title: "Senior Project Associate",
      organization: "Deloitte Czech Republic",
      location: "Prague, CZ",
      [
        - Introduced DevOps processes and principles, CI/CD pipelines and infrastructure-as-code for an insurance client migrating to Azure
        - Designed microservice architecture and implemented cloud infrastructure provisioning
      ],
    )
    work-entry(
      theme: (space-above: 10pt),
      timeframe: "Sep 2019 -- Feb 2020",
      title: "DevOps Specialist",
      organization: "Velvon (PPF Group)",
      location: "Prague, CZ",
      [
        Microservice-based retail banking platform for the German market in Microsoft Azure.
        - Provisioned cloud infrastructure using Terraform and ARM templates
        - Managed the internal developer platform (Microsoft Azure services, GitLab CI,...)
        - Operated production-ready Kubernetes workloads on AKS
      ],
    )
    work-entry(
      theme: (space-above: 10pt),
      timeframe: "Oct 2015 -- Sep 2019",
      title: "Developer / DevOps",
      organization: "Home Credit International (PPF Group)",
      location: "Prague, CZ",
      [
        Microservice-based retail banking platform for the Indonesian market.
        - Containerized the banking platform using Docker, introducing containers to the project for the first time
        - Built CI/CD pipelines for containerized microservices
        - Transitioned from application development to DevOps, taking ownership of container orchestration
      ],
    )
    work-entry(
      theme: (space-above: 10pt),
      timeframe: "Jan 2015 -- Sep 2015",
      title: "Specialist",
      organization: "Air Bank a.s. (PPF Group)",
      location: "Prague, CZ",
      [
        - Developed Java-based core banking system components for the Kazakh market
      ],
    )
    work-entry(
      theme: (space-above: 10pt),
      timeframe: "Jul 2010 -- Dec 2014",
      title: "Programmer / Senior Programmer",
      organization: "Raiffeisenbank a.s.",
      location: "Prague, CZ",
      [
        - Built core banking modules, internet banking frontend, and APIs for mobile banking
      ],
    )
    work-entry(
      theme: (space-above: 10pt),
      timeframe: "Feb 2008 -- Jun 2010",
      title: "Software Engineer",
      organization: "Logos / Ness Czech",
      location: "Prague, CZ",
      [
        - Delivered Oracle DB and Java solutions for banking and enterprise clients
      ],
    )
    work-entry(
      theme: (space-above: 10pt),
      timeframe: "Jun 2006 -- Dec 2007",
      title: "B2B Consultant",
      organization: "Porthus",
      location: "Antwerp, BE",
      [
        - Customized a B2B customs clearance platform for enterprise clients (FedEx, J&J)
      ],
    )
  },
)

// === Education ================================================================

#section(
  "Education",
  {
    set text(font: "Roboto", size: 7.5pt)
    education-entry(
      title: "Master's degree",
      institution: "University of Žilina -- Faculty of Management Science and Informatics",
      timeframe: "2000 -- 2006",
      [Management / Informatics],
    )
  },
)
