# pagila-hw2

[workflow status badge](https://docs.github.com/en/actions/monitoring-and-troubleshooting-workflows/adding-a-workflow-status-badge)

This is the second SQL homework in CMC's CSCI143: Big Data class.

## Tasks

1. Recall that [git is not github](https://pedrorijo.com/blog/git-init/#what-is-not-git).
    Git is a protocol, and there are many services that provide access to that protocol.
    In particular, this README is stored in a git repo hosted on gitlab instead of github.
    One of the reasons github is a popular git service provider is that they offer free continuous integration for open source projects via github actions.

    Your first task is to move this repo over to github and get github actions setup for the project.
    The following steps should walk you through this procedure.

    1. Create a repo on github named `pagila-hw2`.
        (It should be an empty repo, not pre-populated with any files.)

    1. Then run the following commands to populate your new repo from this repo.

        ```
        $ git clone https://gitlab.com/mikeizbicki/pagila-hw2
        $ cd pagila-hw2
        $ git remote add upstream <url_of_your_repo>
        $ git push upstream master
        ```

    1. Modify the README file so that it has a [workflow status badge](https://docs.github.com/en/actions/monitoring-and-troubleshooting-workflows/adding-a-workflow-status-badge) that show whether the test cases pass or not.

        > **Note:**
        > The `.github` folder in this repo already has the appropriate github actions defined,
        > and you should not have to modify any of these files.

1. Next, complete the problems in the `sql` folder just like you did for the [pagila-hw](https://github.com/mikeizbicki/pagila-hw) assignment.
