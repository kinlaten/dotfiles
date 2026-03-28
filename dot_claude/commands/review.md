Analyze the current Git diff and provide a structured code review.

Steps:
1. Run `git diff --staged` to see the changes
2. Check for: potential bugs, security vulnerabilities, performance issues
3. Verify consistency with existing project patterns
4. Suggest concrete improvements with code snippets

Output format:
- Red - Blocking: [issue + fix]
- Yellow - Suggestion: [improvement + code]
- Green - Approved: [what is well done]

Files to ignore: $ARGUMENTS
