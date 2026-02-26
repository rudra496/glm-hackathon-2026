# AI Builders Hackathon 2026 – Execution Refinement Pack

## SECTION 1: Audit Report

### 1.1 Gap Report (What is usually missing)

#### A) First-time hackathon missing components
- **Submission integrity controls** are often undefined (what counts as valid, and who checks it).
- **Operational ownership map** is missing (who does triage, scoring ops, dispute handling).
- **Decision logging** is absent (important for fairness complaints).
- **Judge calibration** is not done (judges score inconsistently without baseline examples).
- **Fallback communication paths** are undocumented (if Discord fails, what happens).
- **Post-event artifact publication** is delayed or incomplete (results, scoring method, audit summary).

#### B) Common operational failures
- Deadline confusion due to timezone wording mismatch.
- Teams submit private repos or broken demo links.
- Late submissions not handled consistently.
- Duplicate or fake registrations not filtered.
- Judges unavailable near deadline; scoring bottleneck.
- Result release delayed by unresolved tie-breaks.
- Prize transfer delays cause reputational damage.

#### C) Documentation gaps
- No single source of truth for event timeline.
- No SOP for disqualification and appeals.
- No repository checklist for minimum technical quality.
- No anti-plagiarism process with evidence standards.
- No transparency statement that explains what was audited and how.

#### D) Legal / ethical gaps (student-led realistic scope)
- Missing explicit consent language for publishing team names and project links.
- Missing clear IP statement (teams keep ownership, organizers get showcase permission).
- Missing conflict-of-interest policy for judges and organizers.
- Missing harassment and abuse escalation path beyond code of conduct text.
- Missing AI usage disclosure rules (allowed tools, prohibited misrepresentation).

#### E) Transparency risks
- Score opacity: public cannot understand ranking process.
- Silent disqualifications without logged reason.
- Inconsistent rule enforcement across teams.
- Sponsor or organizer bias allegations without rebuttal evidence.
- Missing public timestamped final result package.

### 1.2 Recommended Improvement Checklist

#### Governance
- [ ] Appoint owners for: registration ops, submission ops, judge ops, moderation, finance.
- [ ] Maintain `DECISIONS_LOG.md` (date, decision, reason, approver).
- [ ] Publish one final timeline in BST with UTC equivalent.

#### Integrity
- [ ] Add submission validation checklist (mandatory pass/fail gates).
- [ ] Add plagiarism review SOP (manual + automated evidence).
- [ ] Add conflict-of-interest declaration before scoring starts.

#### Judging
- [ ] Run 30-minute judge onboarding with one sample scoring exercise.
- [ ] Define tie-break and no-score fallback (if judge misses deadline).
- [ ] Freeze rubric before submissions close.

#### Participant trust
- [ ] Publish transparency statement template in advance.
- [ ] Provide 24-hour appeal window and response SLA.
- [ ] Publish top projects + method summary + disqualification counts.

#### Finance/reputation
- [ ] Pre-commit prize payout method and expected payout date.
- [ ] Keep payment proof records for internal audit.
- [ ] Publish completion report within 7 days of final announcement.

---

## SECTION 2: Hardened Structure

### 2.1 Submission Validation Checklist (pass/fail)

**Gate 1: Eligibility**
- Team size 1–4.
- All members are university students (self-declared at minimum).
- Submission before deadline (BST timestamp).

**Gate 2: Repository quality**
- Public GitHub repository is accessible.
- README includes problem, solution, setup, usage.
- License file exists (recommended MIT/Apache-2.0).
- Commit history present (not single dump unless justified).

**Gate 3: Deliverables**
- Demo video link works (2–5 minutes recommended).
- Working prototype or reproducible instructions exist.
- AI usage disclosure included.
- External assets and models are cited.

**Gate 4: Compliance**
- No hate/harassment or illegal content.
- No obvious plagiarism/red-flag cloning.
- No credential leaks/API key exposure.

**Outcome labels**
- `validation:pass`
- `validation:needs-fix` (12-hour fix window)
- `validation:disqualified`

### 2.2 GitHub Repository Verification Steps

1. Open repository URL from submission form.
2. Confirm visibility = Public.
3. Check README sections: Problem, Build/Run, Demo, AI disclosure.
4. Check commit graph for realistic development trail.
5. Verify demo assets and links open.
6. Run light authenticity checks:
   - compare repo name/readme against known templates,
   - sample search suspicious code blocks online,
   - confirm contributor accounts align with declared team.
7. Record result in sheet with reviewer name + timestamp.

### 2.3 Anti-Plagiarism Review System

#### Manual lane (primary, low-cost)
- Reviewer scans README narrative consistency and domain context fit.
- Spot-check 3 random code files per finalist team.
- Reverse search unique function names/snippets.
- Compare architecture against public starter templates.
- Flag suspicious teams to secondary reviewer.

#### Automated lane (free tooling)
- Use GitHub search for exact suspicious snippets.
- Use `git log --author` pattern check for contribution concentration.
- Optional local similarity scan among finalist repos using token-level comparison script.

#### Decision classes
- `clear`
- `minor overlap (allowed with citation)`
- `major uncredited reuse (disqualify)`
- `needs clarification`

#### Evidence standard
- At least **two artifacts** before disqualification:
  1) matching code/reference link,
  2) reviewer note explaining why overlap is non-trivial.

### 2.4 Conflict-of-Interest Declaration Template

```md
# Conflict of Interest Declaration
Event: AI Builders Hackathon 2026 – Bangladesh
Name:
Role: Judge / Organizer / Mentor
Date:

I declare:
- I have reviewed the participating team list.
- I will disclose if I have close academic, financial, or personal ties with any team.
- I will recuse from evaluating teams where conflict exists.
- I will not share non-public participant data.

Conflicted team(s) (if any):
Reason:
Signature (typed):
```

### 2.5 Judge Onboarding Instructions (30 minutes)

1. **5 min:** Event goals, constraints, fairness principle.
2. **10 min:** Rubric walkthrough with concrete scoring examples.
3. **10 min:** Score one sample project individually; compare variance.
4. **5 min:** Tooling flow (sheet access, deadlines, COI reminders).

**Rules for judges**
- Score evidence, not pitch quality alone.
- No direct communication with teams about score.
- Use comment field for every score under 6 or above 9.
- Submit all assigned scores before cutoff.

### 2.6 Organizer Internal SOP

#### Daily SOP (7-day event)
- 10:00 BST: Check inbox/forms, triage issues.
- 14:00 BST: Discord moderation + FAQ update.
- 20:00 BST: Status checkpoint (registrations, issues, risks).

#### Submission-day SOP
- Lock final deadline message (pin in Discord).
- Export submission sheet snapshot immediately after deadline.
- Start validation queue; assign 2 reviewers.
- Publish “validation in progress” announcement.

#### Results SOP
- Freeze scores.
- Run tie-break protocol.
- Review disqualification evidence.
- Publish winners + transparency statement together.

### 2.7 Emergency Decision Protocol

**Trigger events**
- Major platform outage, data loss, judge dropout, abuse incident.

**Response model (max 60 min to decision)**
1. Incident owner logs issue in `INCIDENT_LOG.md`.
2. Convene minimum 2 organizers.
3. Classify severity: `S1 critical`, `S2 major`, `S3 minor`.
4. Decide action: extend deadline / replace judge / freeze channels / disqualify.
5. Publish short public notice within 30 min of decision.
6. Publish post-incident summary within 24 hours.

### 2.8 Public Transparency Statement Template

```md
# Transparency Statement – AI Builders Hackathon 2026
Date:

Total registrations:
Total valid submissions:
Total disqualifications (with categories only):
Judges involved:
Scoring rubric reference:
Tie-break method used:
Appeals received/resolved:
Prize disbursement status:

Notes:
- Personal participant data is not published.
- Disqualification reasons are categorized, not personalized publicly.
```

---

## SECTION 3: Automation Setup

### 3.1 No-Cost Workflow (Minimal stack)
- Intake: Google Form
- Source of truth: Google Sheet
- Work queue + transparency: GitHub Issues in `hackathon-2026`
- Communication: Discord announcements + pinned updates
- Final publication: GitHub markdown pages/files

### 3.2 GitHub Issues Automation Flow

#### Labels (exact naming)
- `type:submission`
- `stage:received`
- `stage:validation`
- `stage:needs-fix`
- `stage:eligible`
- `stage:judging`
- `stage:flagged-plagiarism`
- `stage:disqualified`
- `stage:winner`
- `priority:high`
- `owner:ops`
- `owner:judging`

#### Issue title convention
`[TEAM-###] <Team Name> - Submission Tracking`

#### Issue body template
- Team ID
- Team name
- Leader email
- Repo URL
- Demo URL
- Submission timestamp (BST)
- Validation checklist
- Judge assignments
- Final status

### 3.3 Evaluation Tracking Workflow

1. Form submission added to Sheet.
2. Organizer creates issue using title convention.
3. Apply `type:submission + stage:received`.
4. Validator checks repo and deliverables.
5. Move label to `stage:eligible` or `stage:needs-fix`.
6. If flagged, add `stage:flagged-plagiarism` and second reviewer.
7. After validation pass, assign judges and set `stage:judging`.
8. On scoring completion, update issue final status and lock comments.

### 3.4 Announcement Automation Idea (free)

- Use a GitHub Action triggered on issue label changes.
- If label becomes `stage:winner`, append team name to `RESULTS_DRAFT.md`.
- If label becomes `stage:needs-fix`, auto-comment reminder text in issue.
- Optional: low-code bridge (Zapier free tier or Make free tier) from GitHub to Discord webhook for major status announcements.

### 3.5 Step-by-Step Setup Guide

1. Create issue templates in `.github/ISSUE_TEMPLATE/`.
2. Create labels once using GitHub UI.
3. Add `docs/ops/SUBMISSION_TRACKER.md` with label definitions.
4. Add `docs/ops/WORKFLOW.md` with sequence diagram/checklist.
5. Add basic GitHub Action for label event handling.
6. Dry-run with 2 fake submissions before launch.

### 3.6 Folder Structure (recommended)

```text
hackathon-2026/
  docs/
    ops/
      SUBMISSION_VALIDATION_CHECKLIST.md
      ANTI_PLAGIARISM_SOP.md
      JUDGE_ONBOARDING.md
      ORGANIZER_SOP.md
      EMERGENCY_PROTOCOL.md
      TRANSPARENCY_STATEMENT_TEMPLATE.md
      WORKFLOW.md
      RISK_MATRIX.md
    public/
      RESULTS_2026.md
      HALL_OF_FAME.md
      CERTIFICATE_VERIFICATION.md
  .github/
    ISSUE_TEMPLATE/
      submission_tracking.yml
      incident_report.yml
    workflows/
      issue-label-automation.yml
```

---

## SECTION 4: Risk Matrix

| Risk | Probability | Impact | Mitigation Strategy | Fallback Plan |
|---|---|---|---|---|
| Low registration | Medium | High | Early campus ambassador outreach; 3 reminder waves; simple registration form | Extend registration by 3 days; allow solo-to-team merge support |
| Plagiarism | Medium | High | AI usage disclosure + plagiarism SOP + dual reviewer for finalists | Disqualify with evidence log; publish category counts in transparency report |
| Sponsor withdrawal | Low | Medium | Keep prize pool self-funded at announced minimum | Reduce non-cash perks only; never reduce announced cash prizes |
| Prize delay | Medium | High | Pre-verify payment channels (bKash/Nagad/bank) before finals | Publish revised payout date + status updates every 48 hours |
| Technical issues | Medium | Medium | Backup links for forms/sheets; mirror instructions in repo | Extend deadline proportionally to outage duration |
| Judge unavailability | Medium | High | Keep 1 reserve judge; early onboarding and deadline reminders | Redistribute assignments; use average of available scores with policy note |
| Discord toxicity | Medium | Medium | Clear moderation policy; slow mode; warning ladder | Temporary mute/ban; move support to controlled channel |

---

## SECTION 5: Certification Kit

### 5.1 Professional Certificate Wording

**Certificate of Participation**

This certifies that **{{Participant Name}}** of **{{University}}** participated in **AI Builders Hackathon 2026 – Bangladesh**, a 7-day online university hackathon, as part of **{{Team Name}}**.

Issued on **{{Date}}** by the Organizing Committee.

---

**Certificate of Achievement**

This certifies that **{{Participant Name}}** of **{{University}}** achieved **{{Rank/Top 10}}** in **AI Builders Hackathon 2026 – Bangladesh**.

Project: **{{Project Title}}**
Issued on **{{Date}}** by the Organizing Committee.

### 5.2 Certificate Metadata Format

```json
{
  "certificate_id": "AIBH26-ACH-0001",
  "name": "Participant Full Name",
  "university": "University Name",
  "team_name": "Team Name",
  "award_type": "Participation | Top 10 | 1st | 2nd | 3rd",
  "project_title": "Project Title",
  "issue_date": "YYYY-MM-DD",
  "verification_url": "https://github.com/<org>/hackathon-2026/docs/public/CERTIFICATE_VERIFICATION.md"
}
```

### 5.3 Public Result Documentation Format

- Event summary (registrations, valid submissions, judges).
- Winner table (rank, team, project, repo link).
- Scoring methodology summary.
- Disqualification category counts.
- Appeal summary (count + resolved status).
- Prize disbursement completion date.

### 5.4 Hall-of-Fame Markdown Template

```md
# Hall of Fame – AI Builders Hackathon

## 2026 Edition

| Rank | Team | Project | University | Repository | Demo |
|---|---|---|---|---|---|
| 1st |  |  |  |  |  |
| 2nd |  |  |  |  |  |
| 3rd |  |  |  |  |  |

### Top 10 Mentions
- TEAM-004 – Project Name
- TEAM-007 – Project Name
```

### 5.5 Post-event LinkedIn Writeup (template)

We successfully concluded **AI Builders Hackathon 2026 – Bangladesh**, a 7-day fully online event for university students.

**Participation snapshot**
- Registrations: {{count}}
- Valid submissions: {{count}}
- Universities represented: {{count}}

**Winners**
- 1st: {{team}} – {{project}}
- 2nd: {{team}} – {{project}}
- 3rd: {{team}} – {{project}}

We used a published rubric, conflict-of-interest declarations, and a documented validation process to keep judging fair and transparent.

Public results and verification: {{repo link}}

Thank you to participants, judges, and volunteers.

### 5.6 Post-event X Thread Template

1/ AI Builders Hackathon 2026 – Bangladesh is complete. 🇧🇩

2/ 7 days, student-led, fully online, low-cost execution.

3/ Registrations: {{x}} | Valid submissions: {{y}} | Universities: {{z}}

4/ Winners:
🥇 {{team}}
🥈 {{team}}
🥉 {{team}}

5/ We used published rules, rubric, COI declarations, and validation checks.

6/ Public results + verification: {{link}}

7/ Thanks to every builder who shipped.

---

## SECTION 6: Scaling Plan

### 6.1 Scale to national level (12-month path)

#### Phase 1 (current): Pilot credibility
- Deliver one clean edition on time.
- Publish transparency package and payout proof timeline.
- Build reusable ops docs + templates.

#### Phase 2 (next 1–2 editions): Multi-campus network
- Recruit campus leads in top 15 universities.
- Standardize ambassador playbook and KPI (registrations + quality submissions).
- Add thematic tracks (health, agri, edu, climate).

#### Phase 3 (national): Institutionalized program
- Partner with university clubs/departments.
- Add mentor office hours and regional pre-events.
- Build yearly calendar with predictable dates.

### 6.2 Sponsor approach (practical)

- Offer 3 low-friction tiers (e.g., 5k/15k/30k BDT).
- Benefits: logo placement, judge nomination slot (non-scoring if conflict), talent access, post-event report mention.
- Provide one-page sponsor brief with:
  - audience profile,
  - previous edition metrics,
  - transparency and governance controls,
  - exact fund utilization.

### 6.3 Approach AI companies

- Target local AI startups, dev tool vendors, cloud credits providers.
- Ask for in-kind support first: API credits, mentorship hour, workshop speaker.
- Send concise outreach pack: event concept, expected reach, organizer credibility, risk controls.

### 6.4 Convert to annual program

- Fix annual window (e.g., Jan or Jul every year).
- Keep versioned docs (`2026`, `2027`) for continuity.
- Maintain alumni/judge database.
- Release annual report with metrics and improvement backlog.

### 6.5 Build credibility from first edition

- Never miss announced timelines (results, payouts, certificates).
- Archive everything publicly (rules, rubric, process, outcomes).
- Track and publish issue resolution stats.
- Capture testimonials from judges and winners.
- Show year-over-year improvements with measurable deltas.

