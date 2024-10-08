CREATE TABLE IF NOT EXISTS "plataforma-niej_nursing_triage" (
	"id" varchar(256) PRIMARY KEY NOT NULL,
	"resident_id" varchar(256) NOT NULL,
	"project_id" varchar(256) NOT NULL,
	"main_complaint" varchar(256),
	"associated_systemic_diseases" varchar(256),
	"current_medications" varchar(256),
	"family_history" varchar(256),
	"allergies" varchar(256),
	"alcohol_use" varchar(256),
	"smoking_status" varchar(256),
	"diet" varchar(256),
	"water_intake" varchar(256),
	"blood_pressure" varchar(256),
	"heart_rate" varchar(256),
	"respiratory_rate" varchar(256),
	"temperature" varchar(256),
	"oxygen_saturation" varchar(256),
	"blood_glucose" varchar(256),
	"pain_scale" varchar(256),
	"pain_location" varchar(256),
	"general_observations" varchar(256),
	"created_at" timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"updated_at" timestamp
);
