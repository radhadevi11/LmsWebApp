package com.glosys.lms.web.student;

public enum TrainingProgram {

    WORKSHOP(1),
    INPLANT_TRAINING(2),
    CORPORATE_TRAINING(3),
    RESEARCH_TRAINING(4);

    private int id;

    TrainingProgram(int id) {
        this.id = id;
    }

    public int getId() {
        return id;
    }

    public static TrainingProgram getTrainingProgram(int id){
        TrainingProgram[] trainingPrograms = values();
        for(TrainingProgram trainingProgram : trainingPrograms){
           if( trainingProgram.id == id) {
               return trainingProgram;
           }
        }
        throw new IllegalArgumentException("Invalid id");
    }
}
