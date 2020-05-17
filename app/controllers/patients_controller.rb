class PatientsController < ApplicationController

    #Default page for listing all the patients
    def index
        @patients = Patient.all
    end

    #Showing a specific patient information
    def show
        @patient = Patient.find(params[:id])
    end
    
    #Form for a new patient
    def new
        @patient = Patient.new
    end
    
    #Grabbing information for editing the patient
    def edit
        @patient = Patient.find(params[:id])
    end

    #Creating a patient 
    def create
        @patient = Patient.new(patient_params)

        if @patient.save 
            redirect_to @patient
        else
            render 'new'
        end
    end

    #Editing a patient
    def update
        @patient = Patient.find(params[:id])
        if @patient.update(patient_params)
            redirect_to @patient
        else
            render 'edit'
        end
    end

    #Deleting a patient
    def destroy
        @patient = Patient.find(params[:id])
        @patient.destroy
        
        redirect_to patients_path
    end

    #Form requirements
    private
        def patient_params
            params.require(:patient).permit(:first_Name, :last_Name)
        end
    
end
 