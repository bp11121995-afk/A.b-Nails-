import { Card, CardContent } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { motion } from "framer-motion";

export default function NailsADWebsite() {
  const whatsappNumber = "35699758628";
  const whatsappLink = `https://wa.me/${whatsappNumber}`;

  return (
    <div className="min-h-screen bg-pink-50 text-gray-800">
      {/* Hero */}
      <div className="text-center p-10 bg-gradient-to-b from-pink-200 to-pink-50">
        <motion.h1 
          initial={{ opacity: 0, y: -20 }}
          animate={{ opacity: 1, y: 0 }}
          className="text-4xl font-bold"
        >
          A.D Nails 💅
        </motion.h1>
        <p className="mt-3 text-lg">Luxury nails in Malta ✨ Clean, modern & long lasting</p>
        <a href={whatsappLink} target="_blank" rel="noreferrer">
          <Button className="mt-5 bg-pink-500 text-white px-6 py-2 rounded-2xl">
            Book on WhatsApp
          </Button>
        </a>
      </div>

      {/* Services */}
      <div className="p-6 max-w-4xl mx-auto">
        <h2 className="text-2xl font-semibold mb-4">Services & Prices</h2>
        <div className="grid md:grid-cols-2 gap-4">
          <Card className="rounded-2xl shadow-md">
            <CardContent className="p-4">
              <p className="font-bold">Manicure</p>
              <p className="text-gray-600">€15 – €20</p>
            </CardContent>
          </Card>

          <Card className="rounded-2xl shadow-md">
            <CardContent className="p-4">
              <p className="font-bold">Gel Nails</p>
              <p className="text-gray-600">€25 – €35</p>
            </CardContent>
          </Card>

          <Card className="rounded-2xl shadow-md">
            <CardContent className="p-4">
              <p className="font-bold">Acrylic Full Set</p>
              <p className="text-gray-600">€40 – €50</p>
            </CardContent>
          </Card>

          <Card className="rounded-2xl shadow-md">
            <CardContent className="p-4">
              <p className="font-bold">Nail Art</p>
              <p className="text-gray-600">€5 – €15 extra</p>
            </CardContent>
          </Card>
        </div>
      </div>

      {/* Gallery */}
      <div className="p-6 max-w-4xl mx-auto">
        <h2 className="text-2xl font-semibold mb-4">My Work</h2>
        <div className="grid grid-cols-2 md:grid-cols-3 gap-3">
          {[1,2,3,4,5,6].map((img) => (
            <div key={img} className="bg-pink-100 h-40 rounded-2xl flex items-center justify-center">
              <p className="text-sm text-gray-500">Upload Photo {img}</p>
            </div>
          ))}
        </div>
      </div>

      {/* About */}
      <div className="p-6 text-center bg-white">
        <h2 className="text-xl font-semibold">Why choose A.D Nails?</h2>
        <p className="text-gray-600 mt-2 max-w-xl mx-auto">
          High quality nail work in Malta with clean finishes, modern styles and long lasting results.
          Perfect for everyday beauty or special occasions.
        </p>
      </div>

      {/* Contact */}
      <div className="p-8 text-center bg-pink-100 mt-10">
        <h2 className="text-xl font-semibold">Book your appointment</h2>
        <p className="text-gray-600 mt-2">Tap below to message us instantly on WhatsApp</p>
        <a href={whatsappLink} target="_blank" rel="noreferrer">
          <Button className="mt-4 bg-black text-white px-6 py-2 rounded-2xl">
            Chat on WhatsApp
          </Button>
        </a>
      </div>
    </div>
