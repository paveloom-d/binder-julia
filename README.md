# Description

### A notice
If you are unsure, please refer to the description on the last commit on the
[`master`](https://github.com/paveloom-d/binder-julia/tree/master) branch.

### What is this?

This is a Docker image from
[the series of images](https://github.com/orgs/paveloom-d/projects/1) based on the
[`paveloom/binder-base`](https://github.com/paveloom-d/binder-base) image. It adds
[the Julia programming language](https://julialang.org/) to the system. For a more formal
description, see under the spoiler:

<details>
<summary>Content of the image</summary>
<ul>
  <li>
    Base image:
    <a href="https://github.com/paveloom-d/binder-base">paveloom/binder-base</a>
    (0.1.3)
  </li>
  <li>Julia (1.5.2):</li>
  <ul>
    <li>Packages:</li>
    <ul>
      <li><a href="https://github.com/JuliaLang/IJulia.jl">IJulia.jl</a></li>
    <ul>
  </ul>
</ul>
</details>

### How do I use it?

The image is hosted on [Docker Hub](https://hub.docker.com/r/paveloom/binder-julia).
To get it, in your `Dockerfile` just specify:

```dockerfile
FROM paveloom/binder-julia:tag
```

where the `tag` is one of the following:

* [0.1.2](https://github.com/paveloom-d/binder-julia/releases/tag/v0.1.2)
* [0.1.1](https://github.com/paveloom-d/binder-julia/releases/tag/v0.1.1)
* [0.1.0](https://github.com/paveloom-d/binder-julia/releases/tag/v0.1.0)

### Can I easily see what it looks like?

Absolutely. For example, here's a
[link](https://mybinder.org/v2/gh/paveloom-d/binder-julia/master?urlpath=lab) to run a
Binder instance from the stable `master` branch. You may notice that a new kernel has been
added.
