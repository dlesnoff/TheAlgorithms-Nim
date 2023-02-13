# Contributing guidelines

## Before contributing

Welcome to [TheAlgorithms/Nim](https://github.com/TheAlgorithms/Nim)! Before sending your pull requests, make sure that you __read the whole guidelines__. If you have any doubt on the contributing guide, please feel free to [state it clearly in an issue](https://github.com/TheAlgorithms/Nim/issues/new) or ask the community in [Gitter](https://gitter.im/TheAlgorithms).

## Contributing

### Contributor

We are very happy that you are considering implementing algorithms and data structures for others! This repository is referenced and used by learners from all over the globe. Being one of our contributors, you agree and confirm that:

- You did your work - no plagiarism allowed
  - Any plagiarized work will not be merged.
- Your work will be distributed under [MIT License](LICENSE.md) once your pull request is merged
- Your submitted work fulfils or mostly fulfils our styles and standards

__New implementation__ is welcome! For example, new solutions for a problem, different representations for a graph data structure or algorithm designs with different complexity but __identical implementation__ of an existing implementation is not allowed. Please check whether the solution is already implemented or not before submitting your pull request.

__Improving comments__ and __writing proper tests__ are also highly welcome.

### Contribution

We appreciate any contribution, from fixing a grammar mistake in a comment to implementing complex algorithms. Please read this section if you are contributing your work.

~~Your contribution will be tested by our [automated testing on GitHub Actions](https://github.com/TheAlgorithms/Python/actions) to save time and mental energy.  After you have submitted your pull request, you should see the GitHub Actions tests start to run at the bottom of your submission page.  If those tests fail, then click on the ___details___ button try to read through the GitHub Actions output to understand the failure.  If you do not understand, please leave a comment on your submission page and a community member will try to help.~~

Please help us keep our issue list small by adding fixes: #{$ISSUE_NO} to the commit message of pull requests that resolve open issues. GitHub will use this tag to auto-close the issue when the PR is merged.

#### What is an Algorithm?

An Algorithm is one or more functions (or classes) that:
* take one or more inputs,
* perform some internal calculations or data manipulations,
* return one or more outputs,
* have minimal side effects (Ex. `print()`, `plot()`, `read()`, `write()`).

Algorithms should be packaged in a way that would make it easy for readers to put them into larger programs.

Algorithms should:
* have intuitive class and function names that make their purpose clear to readers
* use Nim naming conventions and intuitive variable names to ease comprehension
* raise Nim exceptions (`ValueError`, etc.) on erroneous input values
* have docstrings with clear explanations and/or URLs to source materials
* contain doctests that test both valid and erroneous input values
* return all calculation results instead of printing or plotting them
<!-- * be flexible to take different input values -->

Algorithms in this repo should not be how-to examples for existing Nim packages.  Instead, they should perform internal calculations or manipulations to convert input values into different output values.  Those calculations or manipulations can use data types, classes, or functions of existing Nim modules but each algorithm in this repo should add unique value.

#### Coding Style

We want your work to be readable by others; therefore, we encourage you to note the following:

- Please write in Nim 2.0.
- Please focus hard on the naming of functions, classes, and variables.  Help your reader by using __descriptive names__ that can help you to remove redundant comments.
  - Single letter variable names are *old school* so please avoid them unless their life only spans a few lines.
  - Expand acronyms because `gcd()` is hard to understand but `greatest_common_divisor()` is not.
  - Please follow the [Nim Naming Conventions](https://nim-lang.org/docs/nep1.html) so variable names and function names should be ... .

- Avoid importing external libraries for basic algorithms. Only use those libraries for complicated algorithms.
- If you need a third-party module that is not in the file **TBD**, please add it to that file as part of your submission.

#### Other Requirements for Submissions
<!-- - If you are submitting code in the `project_euler/` directory, please also read [the dedicated Guideline](https://github.com/TheAlgorithms/Python/blob/master/project_euler/README.md) before contributing to our Project Euler library. -->
<!-- - The file extension for code files should be `.py`. Jupyter Notebooks should be submitted to [TheAlgorithms/Jupyter](https://github.com/TheAlgorithms/Jupyter). -->
- Strictly use snake_case (underscore_separated) in your file_name, as it will be easy to parse in future using scripts.
- Please avoid creating new directories if at all possible. Try to fit your work into the existing directory structure.
- If possible, follow the standard *within* the folder you are submitting to.
- If you have modified/added code work, make sure the code compiles before submitting.
- If you have modified/added documentation work, ensure your language is concise and contains no grammar errors.
<!-- - Do not update the README.md or DIRECTORY.md file which will be periodically autogenerated by our GitHub Actions processes. -->
- Add a corresponding explanation to [Algorithms-Explanation](https://github.com/TheAlgorithms/Algorithms-Explanation) (Optional but recommended).
<!-- - All submissions will be tested with [__mypy__](http://www.mypy-lang.org) so we encourage you to add [__Python type hints__](https://docs.python.org/3/library/typing.html) where it makes sense to do so. -->

- Most importantly,
  - __Be consistent in the use of these guidelines when submitting.__
  - __Join__ us on [Discord]() *TBD* and [Gitter](https://gitter.im/TheAlgorithms) __now!__
  - Happy coding!

Writer [@dlesnoff](https://github.com/dlesnoff), Feb 2023.
