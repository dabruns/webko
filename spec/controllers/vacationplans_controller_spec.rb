require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe VacationplansController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Vacationplan. As you add validations to Vacationplan, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # VacationplansController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all vacationplans as @vacationplans" do
      vacationplan = Vacationplan.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:vacationplans)).to eq([vacationplan])
    end
  end

  describe "GET #show" do
    it "assigns the requested vacationplan as @vacationplan" do
      vacationplan = Vacationplan.create! valid_attributes
      get :show, {:id => vacationplan.to_param}, valid_session
      expect(assigns(:vacationplan)).to eq(vacationplan)
    end
  end

  describe "GET #new" do
    it "assigns a new vacationplan as @vacationplan" do
      get :new, {}, valid_session
      expect(assigns(:vacationplan)).to be_a_new(Vacationplan)
    end
  end

  describe "GET #edit" do
    it "assigns the requested vacationplan as @vacationplan" do
      vacationplan = Vacationplan.create! valid_attributes
      get :edit, {:id => vacationplan.to_param}, valid_session
      expect(assigns(:vacationplan)).to eq(vacationplan)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Vacationplan" do
        expect {
          post :create, {:vacationplan => valid_attributes}, valid_session
        }.to change(Vacationplan, :count).by(1)
      end

      it "assigns a newly created vacationplan as @vacationplan" do
        post :create, {:vacationplan => valid_attributes}, valid_session
        expect(assigns(:vacationplan)).to be_a(Vacationplan)
        expect(assigns(:vacationplan)).to be_persisted
      end

      it "redirects to the created vacationplan" do
        post :create, {:vacationplan => valid_attributes}, valid_session
        expect(response).to redirect_to(Vacationplan.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved vacationplan as @vacationplan" do
        post :create, {:vacationplan => invalid_attributes}, valid_session
        expect(assigns(:vacationplan)).to be_a_new(Vacationplan)
      end

      it "re-renders the 'new' template" do
        post :create, {:vacationplan => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested vacationplan" do
        vacationplan = Vacationplan.create! valid_attributes
        put :update, {:id => vacationplan.to_param, :vacationplan => new_attributes}, valid_session
        vacationplan.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested vacationplan as @vacationplan" do
        vacationplan = Vacationplan.create! valid_attributes
        put :update, {:id => vacationplan.to_param, :vacationplan => valid_attributes}, valid_session
        expect(assigns(:vacationplan)).to eq(vacationplan)
      end

      it "redirects to the vacationplan" do
        vacationplan = Vacationplan.create! valid_attributes
        put :update, {:id => vacationplan.to_param, :vacationplan => valid_attributes}, valid_session
        expect(response).to redirect_to(vacationplan)
      end
    end

    context "with invalid params" do
      it "assigns the vacationplan as @vacationplan" do
        vacationplan = Vacationplan.create! valid_attributes
        put :update, {:id => vacationplan.to_param, :vacationplan => invalid_attributes}, valid_session
        expect(assigns(:vacationplan)).to eq(vacationplan)
      end

      it "re-renders the 'edit' template" do
        vacationplan = Vacationplan.create! valid_attributes
        put :update, {:id => vacationplan.to_param, :vacationplan => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested vacationplan" do
      vacationplan = Vacationplan.create! valid_attributes
      expect {
        delete :destroy, {:id => vacationplan.to_param}, valid_session
      }.to change(Vacationplan, :count).by(-1)
    end

    it "redirects to the vacationplans list" do
      vacationplan = Vacationplan.create! valid_attributes
      delete :destroy, {:id => vacationplan.to_param}, valid_session
      expect(response).to redirect_to(vacationplans_url)
    end
  end

end