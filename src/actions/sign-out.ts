"use server";

import { USER_TOKEN } from "@/lib/constants";
import { cookies } from "next/headers";
import { redirect } from "next/navigation";

export async function SignOut() {
  cookies().delete(USER_TOKEN);

  redirect("/auth/sign-in");
}
