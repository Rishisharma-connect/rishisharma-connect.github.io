import Image from "next/image";
import twilioClient from "twilio";

export default async function Home() {

  const twilio = twilioClient(
    process.env.TWILIO_SID,
    process.env.TWILIO_AUTH_TOKEN,
  );


  const result = await twilio.messages.create({
    to: "whatsapp:+447405487910",
    from: "MGa4c60c34452cced170104e2e814e4517",
    body: "Hello from Trigger",
  });

  console.log(result);


  return (
    <div className="font-sans grid grid-rows-[20px_1fr_20px] items-center justify-items-center min-h-screen p-8 pb-20 gap-16 sm:p-20">
      Hello !!!
    </div>
  );
}
