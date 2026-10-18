/* ===== إعدادات محطة امتحانات مسار =====
   عدّلي القيم بين علامتَي التنصيص فقط، ثم احفظي (Commit changes). */
window.MASAR_CONFIG = {
  // 1) مسار — Supabase
  supabaseUrl: "https://vypfxercrgvnsqzdgpjg.supabase.co",
  supabaseKey: "sb_publishable_2_9yGa0uNToiUW5YyCXuiQ_akpH0BVY",          // الصقي هنا المفتاح العام: Publishable key (يبدأ بـ sb_publishable_)

  // 2) تيليجرام — بوت النتائج الجديد
  telegramToken: "8944563158:AAHrFOGWVgNIw7Li-mIcfGEzhiqJcljvT0c",        // الصقي هنا توكن البوت الجديد من BotFather
  telegramChatId: "6400644280",

  // اسم يظهر في رسالة تيليجرام (اختياري)
  stationName: "مختبر الحاسوب"
};
