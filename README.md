# Basic Patient Note EMR

A basic EMR that allows a user to add a patient first name, and last name only. The system allows the user to also add notes to a patient. Patients and notes can both be added, removed and updated.

## How to run
 * Assuming rails, bundle are already installed, please see gemfile for dependency versions
 * `bundle install --force `
 * `rails db:migrate`
 * `rails server`

## Functionality Specs
* Ability to Add/Edit/Delete a Patient
* View a list of patients
* Ability to Add a note to a patient
* Ability to Edit/Delete a note