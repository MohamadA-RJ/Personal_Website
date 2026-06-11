---
layout: archive
title: "CV"
permalink: /cv/
author_profile: true
redirect_from:
  - /resume
---

{% include base_path %}

# Education

---
* **Ph.D. in Aerospace Engineering**, Delft University of Technology (TU Delft), Delft, Netherlands, 2024 – Present
  * Department of Aerospace Structures and Materials (ASM)
  * Advisors: Dr. Boyang Chen & Dr. Clemens Dransfeld

* **M.Sc. in Mechanical Engineering**, Korea Advanced Institute of Science & Technology (KAIST), Daejeon, South Korea, 2022 – 2024
  * Mechanical Design Lab. with Advanced Materials (MDAM)
  * Advisor: Prof. Seong Su Kim
  * GPA: 3.9 / 4.3 (96.0 / 100)

* **B.Sc. in Mechanical Engineering**, American University of Sharjah, Sharjah, UAE, 2017 – 2021
  * GPA: 3.76 / 4.0 — Magna Cum Laude

# Work Experience

---
* **PhD Researcher** — Aerospace Structures and Materials (ASM), TU Delft, Netherlands, 2024 – Present
  * Researcher in the Faculty of Aerospace Engineering, working on the "Luchtvaart in Transitie" (Aviation in Transition) project
  * Research focus: deep learning and computational micromechanics for large-scale aerospace-grade composite structures

* **MS Researcher** — Mechanical Design Lab. with Advanced Materials (MDAM), KAIST, South Korea, 2022 – 2024
  * Research Interests: Multifunctional Structures, Thin-film Mechanics, Composite Materials, Machine Learning, Structural Batteries, Metamaterials

* **Course Grader** — Mechanical Engineering Department, American University of Sharjah, UAE
  * Grader for MCE 321 (Mechanical Design): marked papers, identified student weaknesses to help the professor evaluate performance

* **Research Assistant** — Mechanical Engineering Department, American University of Sharjah, UAE
  * Collaborated with faculty on research relating capillary effects to sand compaction and grain size
  * Designed experimental setup, conducted experiments, filtered sand grain samples, and reported results

* **Service Technician** — Nissan Arabian Automobiles Co., Fujairah, UAE
  * Inspected vehicles, proposed efficient repair plans, organized work records, and assisted in component repair and replacement

# Achievements & Honors

---
* **Best Paper Award** — Korean Society for Composite Materials (KSCM) Conference, 2025 *(1st author)*
* **Journal Cover** — *ACS Applied Materials & Interfaces*, 2025 *(1st author)*
* **Journal Cover** — *ACS Applied Materials & Interfaces*, 2024 *(1st author)*
* **Best Paper Award** — Korean Society for Composite Materials (KSCM) Fall Conference, 2023 *(co-author)*
* **Best Paper Award** — Korean Society for Composite Materials (KSCM) Spring Conference, 2023 *(1st author)*
* **KAIST Scholarship for Graduate Students** (**$24,000**), 2022 – 2024
* **Korea Invention Promotion Association** — OASIS Program Award, 2022
* **2nd Place** — Largest Undergraduate Research Competition in the MENA region (URC), 2021
* **Undergraduate Research Grant (URG21)** (**$3,000**) — **Team Leader**, 2021
* **MIT Innovation Leadership Bootcamp** — Entrepreneurship Certificate, 2021
* **2nd Place** — AUS Mechanical Engineering Senior Design Competition, 2021
* **Vice President** — Engineering Honors Society (EHS), top 1/5th of senior engineering class, 2020 – 2021
* **Chancellor's List Academic Award** — 2017–2018, 2019–2020, 2021–2022
* **Dean's List Academic Award** — Fall 2017 – Spring 2021 (every semester)
* **Distinguished Student Scholarship** (**$25,000**), 2017 – 2021
* **Abdulla Al Ghurair Foundation Scholarship** (**$100,000**) — Arab World's largest education fund, 2017 – 2021
* **Ministry of Presidential Affairs Award** — Top 10 students nationwide in high school (99.6/100), 2017
<br>

# Publications

---
<div class="cv-pubs">

<h3>Journal Articles</h3>
  <ul>{% assign journal_pubs = site.publications | where: "category", "manuscripts" | sort: "date" | reverse %}{% for post in journal_pubs %}
    {% include archive-single-cv.html %}
  {% endfor %}</ul>

<br>

<h3>Conference Papers & Presentations</h3>
  <ul>{% assign conf_pubs = site.publications | where: "category", "conferences" | sort: "date" | reverse %}{% for post in conf_pubs %}
    {% include archive-single-cv.html %}
  {% endfor %}</ul>

<br>

<h3>Patents</h3>
  <ul>{% assign patent_pubs = site.publications | where: "category", "patents" | sort: "date" | reverse %}{% for post in patent_pubs %}
    {% include archive-single-cv.html %}
  {% endfor %}</ul>
</div>

<br>

# Talks & Presentations
---
  <ul>{% for post in site.talks reversed %}
    {% include archive-single-talk-cv.html %}
  {% endfor %}</ul>

# Teaching
---
  <ul>{% for post in site.teaching reversed %}
    {% include archive-single-cv.html tab_url="/teaching/" %}
  {% endfor %}</ul>

# Languages

---
* **English** — Fluent (IELTS: 8.0; C2)
* **Dutch** — Beetje
* **Arabic** — Native

# Leadership & Service

---
* **Vice President, Engineering Honors Society (EHS)** — Elected by top 1/5th of the senior engineering class
* **Peer Leader, Student Leadership Program (SLP)** — Coached and guided first-year students through orientation week to ease their transition into college life
* **First-Year Experience (FYE) Ambassador** — Supported incoming students with opportunities and skills for academic success
* **Treasurer, IEEE SIGHT AUS Chapter** — Led a humanitarian STEM outreach project, teaching orphaned children about technology and engineering
* **Community Service Volunteer** — 100+ hours of community service contributed
