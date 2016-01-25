# Partials with locals

## Objectives

1. Use the `locals` keyword
2. Understand why using instance variables in partials is bad
3. Use a partial iterating over a collection passing in the local
4. Use a partial form another controller with a local

# Overview
Your team's lead engineer looked over the codebase and asked you to not refer to instance variables in your partials, but rather to pass through local variables.  That way your code will be more explicit about its dependencies.  

Your team lead also asked for a couple new features.

1. Display all students on the classroom show page, and stop displaying a special note about the oldest student.  The lead engineer, being old himself, thinks that this isn't polite.

2. Add some search functionality so that a user can search for a classroom and see that classroom's show page.  He requests that we use partials to render each matching result's classroom information.

## Instructions

1. Refactor the `_form.html.erb` partial to accept the argument to the form_for helper as a local.  You'll also need to change the `new.html.erb` and `edit.html.erb` views as well.

2. Refactor the `_student.html.erb` partial to pass through each student as a local.

3. On the classroom show page, iterate through each classroom's students and display each of them using our `_student.html.erb` partial with locals.

3. Add in search functionality such that users can search for a course by subject and see all matching results.
The results should be displayed by rendering a `classrooms/_classroom.html.erb` partial.

<a href='https://learn.co/lessons/partial-locals-lab' data-visibility='hidden'>View this lesson on Learn.co</a>
