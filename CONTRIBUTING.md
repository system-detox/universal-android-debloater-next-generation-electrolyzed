# Contributors Guide

## For who is this guide?

This guide is meant for users who want to contribute to the codebase of Universal Android Debloater Next Generation, whether that is the application code or the JSON-file for adding packages. To keep all processes streamlined and consistent, we're asking you to stick to this guide whenever contributing.

Even though the guide is made for contributors, it's also strongly recommended that the UAD-ng team sticks to these guidelines. After all, we're a prime example.

## What are the guidelines?

### Branching strategy

As for our branching strategy, we're using [Trunk-Based Development](https://trunkbaseddevelopment.com/#one-line-summary).

In short, there's one trunk branch named `main` (also known as `master`). Apart from `main`/`master` there can be different short-lived branches, such as:

- Features (`feature/*`)
- Fixes (`hotfix/*` or simply `fix/*`)
- Dependency updates (`deps/*`)
- Etc.

Do mind that these branch names do only not apply to the addition of packages; for that, we use the following scheme: `[issue number][issue title]`. This can be done [automatically](https://docs.github.com/en/issues/tracking-your-work-with-issues/creating-a-branch-for-an-issue) too.

This is how it looks like and works:

![Trunk-Based Development](https://trunkbaseddevelopment.com/trunk1c.png)

### Commit messages

As for commits, we prefer using [Conventional Commit Messages](https://gist.github.com/qoomon/5dfcdf8eec66a051ecd85625518cfd13). When working in any of the branches listed above (if there's an existing issue for it), close it using a [closing keyword](https://docs.github.com/en/issues/tracking-your-work-with-issues/linking-a-pull-request-to-an-issue#linking-a-pull-request-to-an-issue-using-a-keyword). For more information regarding Conventional Commit Messages, see <https://www.conventionalcommits.org/en/v1.0.0/> as well.

### Checklist before we release

- [ ] Make sure the Milestone is completed and if not, check what needs to be done to complete it.
- [ ] Make sure all merged PRs regarding the application follow the Conventional Commit Messages style. This makes sure that when generating a changelog, the changes look consistent, which in turn improves readability.
- [ ] Make sure all merged PRs have the correct labels assigned, as the changelog is generated based on labels.
- [ ] Create a release preparation PR that bumps the Rust package version in `Cargo.toml` and `Cargo.lock`

When all the above has been checked, you can push a tag to `main` to trigger the GitHub Action that creates a release:

- Create the tag: `git tag -s v1.2.3 -am '1.2.3'`
- Push the tag: `git push origin v1.2.3`

Change the version number to whatever version we're releasing.

### Faulty releases

If we publish a faulty release, for example containing a critical bug, this is how we should deal with it:

We issue a hotfix and keep the faulty release but we'll add warnings to the faulty release in the changelog.
