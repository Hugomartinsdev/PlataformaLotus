"use server";

import { MedicalCareType } from "@/@types/medical-care";
import { InternalServerError } from "@/lib/errors";
import { db } from "@/server/db";
import { medicalCareSchema } from "@/server/db/schema";
import { eq } from "drizzle-orm";

export async function UpdateMedicalCare({
  medicalCare,
}: {
  medicalCare: MedicalCareType;
}) {
  if (!medicalCare.id) {
    throw new InternalServerError();
  }

  try {
    await db
      .update(medicalCareSchema)
      .set(medicalCare)
      .where(eq(medicalCareSchema.id, medicalCare.id));
  } catch (error) {
    throw new InternalServerError();
  }
}
