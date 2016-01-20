require "rails_helper"

RSpec.describe "create and edit form" do
  describe 'create form' do
    it "renders create student form from the new.html file" do
      view.lookup_context.prefixes = %w[students]
      student = Student.new
      assign(:student, student)
      render :template => "students/new.html.erb"
      expect(rendered).to match /Create Student/
    end

    it "directly renders the form in a students/fields partial with the form object passed through as a local variable" do
      view.lookup_context.prefixes = %w[students]
      student = Student.new
      assign(:student, student)
      render :template => "students/new.html.erb"
      expect(rendered).to render_template(:partial => "students/_fields")
    end


    it "directly renders the form in a students/fields partial with the form object passed through as a local variable" do
      view.lookup_context.prefixes = %w[students]
      student = Student.new
      assign(:student, student)
      f = ActionView::Helpers::FormBuilder.new(:student, @student, rendered, {})
      expect(ActionView::Helpers::FormBuilder).to receive(:new).and_return(f)
      allow(f).to receive(:label)
      expect(f).to receive(:text_field).twice
      expect(f).to receive(:date_field)
      expect(f).to receive(:submit)

      render :template => "students/new.html.erb"
      expect(rendered).to render_template(:partial => "students/_fields", locals: {f: f})
    end
  end

  describe 'edit form' do
    it "renders edit student form from the edit.html file" do
      view.lookup_context.prefixes = %w[students]
      student = Student.create(name: 'Bobby', hometown: Faker::Address.city, birthday: Faker::Date.between(25.years.ago, 18.years.ago))
      assign(:student, student)
      render :template => "students/edit.html.erb"
      expect(rendered).to match /Update Student/
    end

    it "directly renders the form in a students/fields partial with the form object passed through as a local variable" do
      view.lookup_context.prefixes = %w[students]
      student = Student.create(name: 'Bobby', hometown: Faker::Address.city, birthday: Faker::Date.between(25.years.ago, 18.years.ago))
      assign(:student, student)
      render :template => "students/new.html.erb"
      expect(rendered).to render_template(:partial => "students/_fields")
    end


    it "directly renders the form in a students/fields partial with the form object passed through as a local variable" do
      view.lookup_context.prefixes = %w[students]
      student = Student.create(name: 'Bobby', hometown: Faker::Address.city, birthday: Faker::Date.between(25.years.ago, 18.years.ago))
      assign(:student, student)
      f = ActionView::Helpers::FormBuilder.new(:student, @student, rendered, {})
      expect(ActionView::Helpers::FormBuilder).to receive(:new).and_return(f)
      allow(f).to receive(:label)
      expect(f).to receive(:text_field).twice
      expect(f).to receive(:date_field)
      expect(f).to receive(:submit)

      render :template => "students/edit.html.erb"
      expect(rendered).to render_template(:partial => "students/_fields", locals: {f: f})
    end
  end
end
