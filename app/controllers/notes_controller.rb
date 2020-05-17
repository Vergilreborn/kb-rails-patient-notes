class NotesController < ApplicationController
    #Form for a new patient
    def new
        @patient = Patient.find(params[:patient_id])
        @note = Note.new
    end

    #Getting the current patient and adding a new note
    
    def create
        @patient = Patient.find(params[:patient_id])
        @note = @patient.notes.create(note_params)

        redirect_to patient_path(@patient)
    end

    #Grabbing information for editing the patient
    def edit
        @patient = Patient.find(params[:patient_id])
        @note = @patient.notes.find(params[:id])
    end

    #Editing a note
    def update
        @patient = Patient.find(params[:patient_id])
        @note = @patient.notes.find(params[:id])
        if @note.update(note_params)
            redirect_to @patient
        else
            render 'edit'
        end
    end


    def destroy
        @patient = Patient.find(params[:patient_id])
        @note = @patient.notes.find(params[:id])
        @note.destroy
        redirect_to patient_path(@patient)
    end

    #note fields
    private 
        def note_params
            params.require(:note).permit(:title, :body)
        end
end
