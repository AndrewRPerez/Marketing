# Marketing Development Process

1. Pick a story from Sprint.ly and start it.

2. Create a local branch in your development environment to work on the story. 

Example:

```
$ git branch 125-deleting
$ git checkout 125-deleting
```

3. Create a test for your feature.

"spec/features/deleting_spec.rb"

4. Implement the feature.

5.Run all the tests.

6. Commit branch to Github.

Example:

```
git commit -am "Added deleting articles feature"
git push origin 125-deleting

```

7. Create a pull request using the template. [PULL_REQUEST_TEMPLATE.md](PULL_REQUEST_TEMPLATE.md)

8. Contact a peer to review code.

> To: Ben West <ben@radialdevgroup.com>
> 
> Subject: Pull Request
> 
> Hey Ben,
> 
> Could you please review the PR for my branch (125-deleting); it's number #2
>
> Thanks,
>
> -- Admiral Ackbar
>
> P.S. It's a trap!

9. Make any necessary changes.

10. Request reviewer or project lead merge code.

> Github Comment:
>
>@mrgenixus thanks. I have made all the necessary changes, could you please merge this.


