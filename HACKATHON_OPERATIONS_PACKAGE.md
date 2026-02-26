# AI Builders Hackathon 2026 – Bangladesh

## Part 2: Google Form Content

### A) Registration Form Questions

1. Team Name (short answer)
2. Team Type (individual/team)
3. Number of Members (1–4)
4. Team Leader Full Name
5. Team Leader University
6. Team Leader Department/Program
7. Team Leader Academic Year/Semester
8. Team Leader Email
9. Team Leader Phone (WhatsApp preferred)
10. Member 2 Name (optional)
11. Member 2 University (optional)
12. Member 3 Name (optional)
13. Member 3 University (optional)
14. Member 4 Name (optional)
15. Member 4 University (optional)
16. Project Idea Title (working title)
17. Problem Statement (100–200 words)
18. Planned Tech Stack
19. Prior Hackathon Experience? (yes/no)
20. GitHub Profile Link (leader)
21. Agree to Rules & Code of Conduct (checkbox required)
22. Consent to organizer communication via email/Discord (checkbox required)

### B) Submission Form Questions

1. Team Name
2. Team Leader Email (must match registration)
3. GitHub Repository URL (public)
4. Demo Video URL (2–5 minutes)
5. Live Demo URL (optional)
6. Short Project Description (max 150 words)
7. AI Usage Disclosure (tools + usage scope)
8. Open-source assets used (with links)
9. Confirm all team members are original contributors (checkbox required)
10. Confirm repository was submitted before deadline (checkbox required)

### C) Registration Confirmation Email Template

**Subject:** Registration Confirmed – AI Builders Hackathon 2026

Hello {{Team Leader Name}},

Your registration for **AI Builders Hackathon 2026 – Bangladesh** has been received.

**Team Name:** {{Team Name}}
**Team Size:** {{Team Size}}

Next steps:
1. Join the official Discord server: {{Discord Link}}
2. Review rules: {{Rules Link}}
3. Prepare your GitHub project repository

Submission deadline: **{{Deadline Date, Time BST}}**.

Regards,  
Organizing Team  
AI Builders Hackathon 2026

### D) Disqualification Notice Template

**Subject:** Submission Status Update – AI Builders Hackathon 2026

Hello {{Team Leader Name}},

After review, your submission **{{Team Name}}** has been marked disqualified for the following reason(s):
- {{Reason 1}}
- {{Reason 2}}

Reference policy: {{Rules Link}}

If you believe this was an error, you may submit a clarification within **24 hours** at: {{Organizer Email}}.

Regards,  
Organizing Team  
AI Builders Hackathon 2026

---

## Part 3: Judging Sheet Structure

### A) Tabs

1. `Teams_Master`
2. `Judge_1`
3. `Judge_2`
4. `Judge_3`
5. `Final_Scoring`
6. `Winners`

### B) Teams_Master Columns

- A: Team ID
- B: Team Name
- C: Leader Name
- D: University
- E: Submission Time
- F: Repo URL
- G: Demo URL
- H: Eligibility Check (Pass/Fail)
- I: Notes

### C) Judge Sheet Columns (`Judge_1`, `Judge_2`, `Judge_3`)

- A: Team ID
- B: Team Name
- C: Problem Relevance (0–10)
- D: Solution Quality (0–10)
- E: AI Usage Quality (0–10)
- F: Execution & Functionality (0–10)
- G: Documentation & Presentation (0–10)
- H: Innovation (0–10)
- I: Auto Weighted Score
- J: Judge Feedback (1–2 lines)

### D) Weight Distribution

- Problem Relevance: 20%
- Solution Quality: 25%
- AI Usage Quality: 15%
- Execution & Functionality: 20%
- Documentation & Presentation: 10%
- Innovation: 10%

### E) Formula Example (in I2 of each judge sheet)

```gs
=ROUND((C2*0.20 + D2*0.25 + E2*0.15 + F2*0.20 + G2*0.10 + H2*0.10)*10,2)
```

### F) Final_Scoring Columns

- A: Team ID
- B: Team Name
- C: Judge 1 Score
- D: Judge 2 Score
- E: Judge 3 Score
- F: Average Score
- G: Tie-break Metric 1 (Execution avg)
- H: Tie-break Metric 2 (Problem Relevance avg)
- I: Final Rank

Formula examples:

- `F2`: `=ROUND(AVERAGE(C2:E2),2)`
- `I2`: `=RANK(F2,$F$2:$F$200,0)`

### G) Tie-break Logic

1. Higher average final score wins.
2. If tied, higher average Execution & Functionality wins.
3. If still tied, higher average Problem Relevance wins.
4. If still tied, organizer panel vote.

### H) Scoring Guidance for Judges

- 0–2: Missing or not credible
- 3–4: Basic attempt, low completeness
- 5–6: Functional but moderate quality
- 7–8: Strong implementation
- 9–10: Excellent quality and clarity

---

## Part 4: Promotion Kit

### A) Facebook University Group Post

🚀 **AI Builders Hackathon 2026 – Bangladesh (Online)**

Calling all university students! Build an AI-powered project in 7 days.

🏆 Prize Pool: 3000 BDT  
🥇 1500 | 🥈 1000 | 🥉 500  
📜 Certificates for Top 10 Teams  
👥 Team size: 1–4

Register now: {{Registration Form Link}}  
Join Discord: {{Discord Link}}  
Deadline: {{Deadline}}

#AIHackathon #Bangladesh #UniversityStudents #BuildInPublic

### B) LinkedIn Announcement Post

We are launching **AI Builders Hackathon 2026 – Bangladesh**, a fully online 7-day hackathon for university students.

Participants can join individually or in teams (up to 4), build practical AI solutions, and submit via GitHub.

**Prize Pool:** 3000 BDT (1500 / 1000 / 500)  
**Recognition:** Certificates for top 10 teams  
**Tools:** GitHub, Google Forms/Sheets, Discord (no paid tools)

Registration: {{Link}}  
Deadline: {{Date/Time}}

We welcome students from all departments with interest in AI and problem-solving.

### C) Discord Announcement

📢 **Welcome to AI Builders Hackathon 2026 – Bangladesh**

- Duration: 7 days
- Team size: 1–4
- Submission: GitHub repo + submission form
- Prize pool: 3000 BDT
- Top 10 receive certificates

Please read `#rules` and `#faq` first.  
Use `#help-desk` for support.

### D) X (Twitter) Short Announcement

🚀 AI Builders Hackathon 2026 (Bangladesh) is live!  
7-day online university hackathon • Team 1–4 • Prize pool 3000 BDT.  
Submit with GitHub. Top 10 get certificates.  
Register: {{short-link}} #AI #Hackathon #Bangladesh

### E) Reminder Post (3 Days Before Deadline)

⏳ 3 days left for AI Builders Hackathon 2026 submissions!

Make sure your team has:
- Public GitHub repo
- Updated README
- 2–5 min demo video
- Submission form completed

Deadline: {{Deadline Date/Time BST}}

### F) Result Announcement Post

🎉 **AI Builders Hackathon 2026 – Results**

Congratulations to all participants!

🥇 1st Place: {{Team}} – 1500 BDT  
🥈 2nd Place: {{Team}} – 1000 BDT  
🥉 3rd Place: {{Team}} – 500 BDT

🏅 Certificates will be issued to top 10 teams via email.

Thank you to every team who built and submitted.

### G) Certificate Wording

**Certificate of Achievement**

This is to certify that **{{Participant Name}}** from **{{University Name}}** participated in **AI Builders Hackathon 2026 – Bangladesh** (Online) and achieved **{{Position/Top 10}}**.

Issued on: {{Date}}  
Organized by: AI Builders Hackathon Team

---

## Part 5: Execution Plan

### A) Day-by-Day Checklist

- **Day 0 (Prep):** Finalize forms, rules, Discord channels, judge panel
- **Day 1:** Launch + publish posts + open registration
- **Day 2:** Team verification + Q&A session
- **Day 3:** Progress check-in + reminder
- **Day 4:** Mentor office hour (optional free Discord call)
- **Day 5:** Mid-week troubleshooting + plagiarism pre-check setup
- **Day 6:** Final submission reminders
- **Day 7:** Deadline close (hard cutoff)
- **Day 8–9:** Judge scoring and moderation
- **Day 10:** Winner announcement + certificate distribution

### B) Organizer Checklist

- [ ] Publish all documents in GitHub
- [ ] Validate form links and response destinations
- [ ] Set Discord roles and channel permissions
- [ ] Prepare judging sheet with formulas locked
- [ ] Assign at least 3 judges
- [ ] Create submission verification tracker
- [ ] Define escalation contacts
- [ ] Prepare result announcement templates

### C) Risk Management Plan

| Risk | Impact | Mitigation |
|---|---|---|
| Low registration | Medium | Cross-post to multiple university groups, invite campus clubs |
| Deadline confusion | High | Daily reminders with exact BST time |
| Invalid submissions | High | Enforce checklist + auto validation column |
| Judge unavailability | Medium | Keep backup judge pool |
| Discord moderation issues | Medium | Assign moderators and clear rules |

### D) Plagiarism Detection Strategy

1. Require public commit history.
2. Compare suspicious repositories using GitHub commit timelines and code similarity tools.
3. Check README/demo consistency with actual code.
4. Request clarification call for flagged teams.
5. Maintain evidence log before disqualification.

### E) GitHub Submission Validation Steps

1. Repository is public and accessible.
2. README includes problem, setup, and demo link.
3. Commits exist during hackathon window.
4. Team members listed match registration.
5. Project runs or demo clearly proves functionality.
6. AI assistance and external libraries disclosed.

---

## Part 6: Budget Plan

### A) Detailed Budget Breakdown (3000 BDT)

| Item | Amount (BDT) |
|---|---:|
| 1st Prize | 1500 |
| 2nd Prize | 1000 |
| 3rd Prize | 500 |
| Platform tools (GitHub/Google/Discord) | 0 |
| Marketing design (self-made/Canva free) | 0 |
| Total | 3000 |

### B) Alternative Non-Cash Prize Suggestions

- Featured project showcase on organizer channels
- Letter of recognition for winners
- Open-source mentorship session
- LinkedIn recommendation posts

### C) If Sponsor Joins (Scaling Plan)

- Increase prize pool tiers (top 5)
- Add category awards (Best Social Impact, Best UX, Best AI Implementation)
- Offer internship interview fast-track (if sponsor permits)
- Add mini-workshops before kickoff

### D) Transparency Plan for Money Handling

1. Publish prize breakdown before event starts.
2. Announce winners with scoring summary ranges.
3. Record payout date and method (bKash/Nagad/bank transfer).
4. Keep signed receipt or confirmation screenshot for each payout.
5. Publish a short post-event transparency note.

---

## Part 7: Professional Proposal Document (DOC-ready)

## 1. Objective
AI Builders Hackathon 2026 – Bangladesh is a 7-day online university hackathon to encourage practical AI innovation under low-cost, accessible conditions using free collaboration tools.

## 2. Program Structure
- Mode: Fully online
- Duration: 7 days
- Team size: 1–4
- Submission: GitHub + Google Form
- Communication: Discord
- Judging: Multi-judge weighted rubric via Google Sheets

## 3. Timeline
- Pre-launch setup: 3–5 days
- Active hackathon: 7 days
- Evaluation and results: 2–3 days
- Total cycle: ~10 days

## 4. Evaluation Model
Projects are evaluated on relevance, solution quality, AI usage quality, functionality, documentation, and innovation (100-point weighted system). Multi-judge averaging and tie-break rules ensure fairness.

## 5. Governance and Operations
- Organizing committee handles logistics, moderation, and dispute management.
- Judges score independently before moderation.
- Rules and disqualification policy are published in advance.
- Incident reporting channel is maintained on Discord/email.

## 6. Sustainability Plan
- Keep repository as an annual reusable template.
- Archive submissions for learning resources.
- Recruit volunteer student ambassadors from each university.
- Seek small sponsors for future growth while retaining open/free participation.

---

## Part 8: Optional AI Tool Integration

Participants may optionally use modern AI tools in a responsible manner for:

- **Planning:** brainstorming project scope, user stories, and architecture options.
- **Code generation:** drafting boilerplate and utility functions.
- **Testing:** creating test cases, edge-case ideas, and debugging hints.
- **Documentation:** improving README clarity and demo scripts.

Usage guidance:
- Verify all generated output before submission.
- Respect licensing and attribution requirements.
- Keep a brief disclosure of major AI usage in the repository README.
