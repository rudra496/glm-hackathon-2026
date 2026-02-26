# AI Builders Hackathon 2026 – Bangladesh: Execution Refinement

## SECTION 1: Audit Report

### 1.1 Gap Report (What is usually missing in first-time hackathons)

#### A) Commonly Missing Components

1. **Submission integrity controls**
   - No standard method to verify repo ownership, commit window, and member identity.
2. **Judge governance**
   - No conflict-of-interest declarations, calibration process, or fallback judge plan.
3. **Operational escalation path**
   - No documented protocol for disputes, outages, or late submission claims.
4. **Evidence trail**
   - No audit log for disqualifications and scoring decisions.
5. **Transparency publication**
   - No post-event public summary with process-level metrics.

#### B) Common Operational Failures

1. Registration and submission data mismatch (team names, leader emails, member count).
2. Last-hour submission rush causing broken links and incomplete forms.
3. Judges scoring inconsistently due to uncalibrated interpretation of rubric.
4. Manual tracking errors across forms, GitHub links, and judge sheets.
5. Communication overload in Discord without clear channel policy and response SLA.

#### C) Documentation Gaps

1. Missing organizer-facing SOP (who does what, by when, with fallback owner).
2. Missing pre-judging “eligibility pass/fail” gate before scoring.
3. Missing standard templates for disqualification rationale and appeals.
4. Missing final results publication template tied to scoring process.

#### D) Legal / Ethical Gaps

1. No explicit conflict-of-interest declaration requirement for judges/organizers.
2. No clear data minimization policy for participant personal data.
3. No explicit plagiarism evidence handling and appeal window protocol.
4. No explicit statement on acceptable AI assistance boundaries and accountability.

#### E) Transparency Risks

1. Prize disbursement delays without public timeline and proof standard.
2. Ranking disputes if tie-break logic is not visibly applied.
3. Perceived favoritism if judge identities and COI handling are opaque.
4. Reputational risk if disqualification decisions lack evidence-backed documentation.

### 1.2 Recommended Improvement Checklist

- [ ] Add **Submission Intake + Validation SOP** with pass/fail gate.
- [ ] Add **Judge COI declaration** and mandatory pre-scoring calibration.
- [ ] Add **Escalation protocol** for deadline, outage, plagiarism, and misconduct cases.
- [ ] Add **Evidence register** for each disputed/disqualified submission.
- [ ] Add **public transparency statement** template for results and prize payout timeline.
- [ ] Add **label-based GitHub tracking** to reduce spreadsheet-only manual work.
- [ ] Add **backup judges** and minimum viable panel rule.
- [ ] Add **data handling note** (what is collected, retention duration, deletion policy).

---

## SECTION 2: Hardened Structure

### 2.1 Submission Validation Checklist (Organizer Use)

**Eligibility Gate (Pass/Fail):**

- [ ] Team size is 1–4.
- [ ] Leader email matches registration record.
- [ ] All members appear in registration (or approved amendment by Day 2).
- [ ] Submission timestamp before deadline.
- [ ] GitHub repository is public and accessible.
- [ ] Demo video link opens and is playable.

**Content Gate (Pass/Fail):**

- [ ] README includes problem statement.
- [ ] README includes setup/run instructions.
- [ ] README includes team member names.
- [ ] README includes AI usage disclosure.
- [ ] Open-source dependencies/attributions are listed.

**Technical Gate (Scored/Not Scored):**

- [ ] Basic run path documented (local or demo evidence).
- [ ] Core feature shown in demo.
- [ ] Repository not empty / placeholder-only.

### 2.2 GitHub Repository Verification Steps

1. Open repository and confirm visibility = Public.
2. Confirm default branch contains code and README.
3. Check commit history:
   - Majority of meaningful commits during hackathon window.
   - No suspicious full-project one-time import without explanation.
4. Check contributors list against registered members.
5. Open latest release/tag (if any) and check consistency with demo video.
6. Validate dependency and license references.
7. Log status in `Teams_Master` as `Eligible`, `Needs Clarification`, or `Disqualified`.

### 2.3 Anti-Plagiarism Review System (Manual + Automated)

#### Automated (No-cost)

1. **GitHub commit chronology check**
   - Compare first commit timestamps and code growth pattern.
2. **Similarity scan using free local tools**
   - Use `jplag` (if Java projects), `copydetect`/`sim_c` alternatives, or language-appropriate OSS checker.
3. **Search-based cross-check**
   - Copy suspicious snippets into GitHub code search and web search.

#### Manual Review

1. Compare architecture claims in README vs actual implementation.
2. Check naming patterns and file history for abrupt style changes.
3. Request clarification from team with 24h response window.
4. Conduct 10-minute verification call for high-risk flags.

#### Decision Rules

- **Minor unattributed reuse** → request correction + citation.
- **Substantial copying without attribution** → disqualification.
- **Ambiguous case** → panel review with documented vote.

### 2.4 Conflict-of-Interest (COI) Declaration Template

```md
# Conflict of Interest Declaration
Event: AI Builders Hackathon 2026 – Bangladesh
Role: Judge / Organizer
Name:
Institution:
Date:

I declare the following:
- I have read the judging policy and code of conduct.
- I will evaluate teams fairly and independently.
- I will disclose any conflict before scoring.

Conflict disclosure (if any):
- I have direct academic, financial, or personal relationship with team(s): __________
- Team names/IDs: __________

Action:
- [ ] I will abstain from scoring these teams.
- [ ] Organizer has reassigned those teams to another judge.

Signature (typed): __________
```

### 2.5 Judge Onboarding Instructions

1. Read `RULES.md` and `JUDGING.md` end-to-end.
2. Submit signed COI declaration before receiving score sheet.
3. Attend 30-minute calibration call:
   - Review rubric with one mock project.
   - Align expectations for score ranges.
4. Score independently first; discussion after initial submission.
5. Provide one constructive feedback line per team.
6. Respect timeline and confidentiality.

### 2.6 Organizer Internal SOP (Lean)

#### Roles

- **Ops Lead:** deadlines, forms, final decisions.
- **Tech Lead:** GitHub validation, plagiarism screening.
- **Comms Lead:** Discord + announcements.
- **Judging Coordinator:** judge scheduling, score consolidation.

#### Daily Routine (10-day cycle)

- 10:00 BST: Check support queue and unresolved validation flags.
- 15:00 BST: Update tracker labels and publish reminder (if needed).
- 21:00 BST: Incident log update and next-day actions.

#### Required Logs

- `incident-log.md`
- `eligibility-log.md`
- `plagiarism-review-log.md`
- `payout-log.md`

### 2.7 Emergency Decision Protocol

**Trigger Types:** platform outage, mass submission failure, harassment incident, judge dropout.

1. Open emergency ticket (`priority:critical`) in organizer board.
2. Convene minimum 2 organizers + 1 neutral reviewer.
3. Apply predefined rule:
   - Outage near deadline: one-time extension (e.g., +2 hours) publicly announced.
   - Judge dropout: activate backup judge list.
   - Toxic behavior: immediate mute + review + documented action.
4. Publish decision note in Discord announcement channel within 30 minutes.
5. Record rationale in incident log.

### 2.8 Public Transparency Statement Template

```md
# Transparency Statement – AI Builders Hackathon 2026

We conducted this event using published rules, a weighted judging rubric, and multi-judge scoring.

## Process Summary
- Total registrations:
- Total valid submissions:
- Total disqualifications (with reason categories):

## Evaluation Summary
- Number of judges:
- Tie-breaks applied (if any):
- Conflict-of-interest abstentions handled:

## Prize Distribution
- 1st Prize (1500 BDT):
- 2nd Prize (1000 BDT):
- 3rd Prize (500 BDT):
- Payment method and payout completion date:

## Contact for Clarification
- Email:
- Clarification window:
```

---

## SECTION 3: Automation Setup

### 3.1 No-Cost Workflow Design

**Stack:** GitHub + Google Forms + Google Sheets + Discord + GitHub Actions (free minutes).

Flow:
1. Registration form populates `Registrations` sheet.
2. Submission form populates `Submissions` sheet.
3. Organizer copies valid entries into GitHub issue template (one issue per team).
4. Labels drive status tracking (`submitted`, `eligible`, `needs-fix`, `under-review`, `scored`, `disqualified`, `winner`).
5. Judge scores remain in Google Sheets; final ranks synced back to issue labels.

### 3.2 GitHub Issue-Based Submission Tracking

#### Repository Path

```text
hackathon-2026/
├─ .github/
│  ├─ ISSUE_TEMPLATE/
│  │  ├─ submission-intake.yml
│  │  ├─ plagiarism-review.yml
│  │  └─ incident-report.yml
│  ├─ workflows/
│  │  ├─ stale-submissions.yml
│  │  └─ status-reminder.yml
│  └─ labels.md
├─ ops/
│  ├─ incident-log.md
│  ├─ eligibility-log.md
│  ├─ plagiarism-review-log.md
│  └─ payout-log.md
└─ docs/
   ├─ judge-onboarding.md
   ├─ coi-template.md
   └─ transparency-statement-template.md
```

### 3.3 Label Naming Conventions (Exact)

- `status:submitted`
- `status:eligible`
- `status:needs-clarification`
- `status:under-plagiarism-review`
- `status:judge-ready`
- `status:scored`
- `status:disqualified`
- `status:winner-top10`
- `status:winner-top3`
- `priority:critical`

### 3.4 Evaluation Tracking Workflow

1. New submission issue created with team ID.
2. Apply `status:submitted`.
3. After validation pass → `status:eligible` + `status:judge-ready`.
4. If mismatch found → `status:needs-clarification` (24h timer).
5. If plagiarism flagged → `status:under-plagiarism-review`.
6. After scoring imported → `status:scored`.
7. Winners get `status:winner-top10` or `status:winner-top3`.

### 3.5 Announcement Automation Idea (No paid tools)

Use GitHub Actions scheduled job:
- Reads `deadlines.yml`.
- Posts reminder text to Discord webhook (free) on Day -3, Day -1, Day 0.
- Optional: generates markdown summary issue for organizer approval before posting.

### 3.6 Step-by-Step Setup Guide

1. Create labels in `hackathon-2026` repository.
2. Add issue forms under `.github/ISSUE_TEMPLATE/`.
3. Add Discord incoming webhook URL as GitHub secret: `DISCORD_WEBHOOK_URL`.
4. Add scheduled workflow (`cron`) for reminders.
5. Maintain a canonical `team-id` format: `AIBD26-###`.
6. Sync Google Sheet `Team ID` with GitHub issue title format:
   - `AIBD26-014 | Team Alpha | Submission Intake`
7. Freeze scoring sheet formulas before judge access.
8. Use one organizer account for status updates to keep audit trail clean.

---

## SECTION 4: Risk Matrix

| Risk | Probability | Impact | Mitigation Strategy | Fallback Plan |
|---|---|---|---|---|
| Low registration | Medium | High | Early promotion via campus clubs, class reps, and student chapters; simple registration process | Extend registration by 3 days and run one live info session |
| Plagiarism | Medium | High | Mandatory commit history + AI disclosure + random manual audits | Disqualify with evidence log and offer 24h clarification window |
| Sponsor withdrawal | Low | Medium | Keep core model sponsor-independent (3000 BDT self-funded) | Remove sponsor-dependent perks; keep published base prizes unchanged |
| Prize delay | Medium | High | Pre-confirm payout channels (bKash/Nagad), collect winner payment info early | Publish delay notice with new payout date and proof of transfer when completed |
| Technical issues (forms/repos/links) | Medium | Medium | Daily link checks + backup submission email | Accept timestamped backup email submission during outage window |
| Judge unavailability | Medium | High | Recruit 1 backup judge; split load evenly; set scoring deadline buffer | Reassign pending teams to backup judge and extend judging by 24h |
| Discord toxicity | Medium | Medium | Moderation rules, warning system, designated moderators | Temporary mute/ban, evidence log, and formal incident statement |

---

## SECTION 5: Certification Kit

### 5.1 Professional Certificate Wording

```text
Certificate of Achievement

This certifies that [Participant Name] from [University Name]
participated in AI Builders Hackathon 2026 – Bangladesh (Online)
and achieved [Position / Top 10 Recognition].

Project: [Project Title]
Team: [Team Name]
Issued on: [Date]
Organized by: AI Builders Hackathon Organizing Committee
```

### 5.2 Certificate Metadata Format (CSV-ready)

```csv
certificate_id,event_year,participant_name,university,team_name,project_title,recognition,issue_date,verification_url
AIBD26-CERT-001,2026,Name,University,Team,Project,Top 10,2026-02-20,https://...
```

### 5.3 Public Result Documentation Format

```md
# AI Builders Hackathon 2026 – Official Results

## Event Stats
- Registrations:
- Valid submissions:
- Judges:

## Winners
1. Team — Project — Score Band
2. Team — Project — Score Band
3. Team — Project — Score Band

## Top 10 (Unranked after top 3)
- Team — Project

## Judging Method
- Weighted rubric with 3 judges
- Tie-break: Execution, then Problem Relevance

## Prize Payout Status
- Completed / In Progress
- Last updated:
```

### 5.4 Hall-of-Fame Markdown Template

```md
# Hall of Fame

## 2026 Edition

### Champion
- Team:
- Project:
- University:
- Repo:
- Demo:

### Runner-up
- Team:
- Project:
- University:
- Repo:
- Demo:

### Second Runner-up
- Team:
- Project:
- University:
- Repo:
- Demo:

### Top 10 Teams
- Team — Project — University
```

### 5.5 Post-event LinkedIn Write-up Template

```md
AI Builders Hackathon 2026 – Bangladesh has concluded.

In a 7-day fully online format, university teams built practical AI prototypes using free collaboration tools.

Highlights:
- Total registrations: [x]
- Valid submissions: [y]
- Top 10 recognized; top 3 awarded from a 3000 BDT prize pool

We thank all participants, judges, and student communities.

Results + Hall of Fame: [link]
Transparency statement: [link]
```

### 5.6 Post-event X Thread Template

```md
Post 1:
AI Builders Hackathon 2026 – Bangladesh is complete ✅
7 days, fully online, student-led, practical AI builds.

Post 2:
Stats:
- Registrations: [x]
- Valid submissions: [y]
- Top 10 recognized

Post 3:
Winners:
🥇 [Team]
🥈 [Team]
🥉 [Team]

Post 4:
Results + Hall of Fame: [link]
Transparency note: [link]
Thanks to all participants and judges.
```

---

## SECTION 6: Scaling Plan

### 6.1 Scale to National Level (Practical Path)

**Year 1 (Pilot):** 10–30 teams, 5–10 universities.  
**Year 2:** Campus ambassador network in 20+ universities.  
**Year 3:** Regional tracks + national finals (still online-first).

Key scaling levers:
1. Reusable public ops repository.
2. Standardized judge onboarding and COI workflow.
3. Lightweight sponsor tiers with transparent deliverables.
4. University partner MoUs (student clubs, IEEE/ACM chapters).

### 6.2 Sponsor Approach (Low-friction)

Offer simple packages:
- **Supporter (10k–25k BDT):** logo in announcement + thank-you mention.
- **Partner (25k–75k BDT):** category prize naming + one speaking slot.
- **Lead Partner (75k+ BDT):** headline branding + workshop + talent shortlist access.

Provide sponsor one-page brief:
- audience profile,
- estimated reach,
- low-cost online model,
- reporting commitment (results + transparency post).

### 6.3 Approach AI Companies

1. Pitch talent discovery angle (student builders, public repos).
2. Ask for non-cash support first:
   - mentor sessions,
   - API credits,
   - judge participation.
3. Keep neutrality: no forced tooling requirement for participants.
4. Publish ethical AI usage clause to reduce brand risk.

### 6.4 Convert into Annual Program

1. Archive annual artifacts (`/editions/2026`, `/editions/2027`).
2. Keep stable governance docs and update only deltas.
3. Publish annual report with participation and outcomes.
4. Build alumni mentor pool from prior top teams.

### 6.5 Build Credibility from First Edition

1. Deliver on-time payouts and publish payout status.
2. Publish transparent evaluation summary.
3. Keep all winning repositories publicly accessible.
4. Share measurable outcomes (projects shipped, student stories).
5. Maintain consistent communication and documented policies.
