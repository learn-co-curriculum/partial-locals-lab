# Partials with locals
Now that we learned locals, let's refactor our old codebase, and a couple new features using this new tool.

## Objectives

1. Use the `locals` keyword
2. Understand why using instance variables in partials is bad
3. Use a partial iterating over a collection passing in the local
4. Use a partial form another controller with a local

# Overview
So your team's lead engineer looked over the codebase and asked you to not refer to instance variables in your partials, but rather to pass through local variables.  That way your code will be more explicit about its dependencies when you call the partial.

Also the lead engineer asked for a couple new features.

The first is that we display all students on the classroom show page, and stop displaying a special note about the oldest student.  The lead engineer, being old himself, thinks that this isn't polite.

Second, he also wants to add some search functionality so that a user can search for a student by name. It's okay if other students whose names are similar come back in the results.

## Instructions

1. Refactor the `_form.html.erb` partial to accept the argument to the form_for helper as a local.  You'll also need to change the `new.html.erb` and `edit.html.erb` views as well.

2. Refactor the `_student.html.erb` partial to pass through each rendered student as a local.

3. On the classroom show page, iterate through each classroom's students and display each of them using our `_student.html.erb` partial with locals.

4. Create a `_classroom.html.erb` partial to display classroom information on the classroom show page.

5. Add in a search functionality such that users can search for a student by name and see all matching results on the students index page.
The results should be displayed by rendering a `students/_student.html.erb` partial.

<a href='https://learn.co/lessons/partial-locals-lab' data-visibility='hidden'>View this lesson on Learn.co</a>

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/partial-locals-lab'>Partial with Locals Lab</a> on Learn.co and start learning to code for free.</p>
