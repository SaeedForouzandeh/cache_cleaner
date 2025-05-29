# 🧹 Cache Cleaner | پاک‌کننده کش 🧹

![Windows](https://img.shields.io/badge/Windows-Batch-blue) ![License](https://img.shields.io/badge/License-MIT-green) ![GitHub stars](https://img.shields.io/github/stars/YourUsername/Cache-Cleaner)

✨ یه اسکریپت ساده و کاربردی برای پاک کردن فایل‌های موقت و کش سیستم تو ویندوز! سرعت سیستمت رو بالا ببر! 🚀  
✨ A simple and handy batch script to clean temporary files and system cache in Windows! Boost your system speed! 🚀

---

## 📖 چطور کار می‌کنه؟ | How It Works?

این اسکریپت فایل‌های موقت سیستم، کش مرورگرها (کروم، فایرفاکس، اج) و کش آپدیت ویندوز رو پاک می‌کنه. یه منوی ساده داره که بهت اجازه می‌ده انتخاب کنی چی رو پاک کنی! 🛠️  
This script cleans system temp files, browser cache (Chrome, Firefox, Edge), and Windows Update cache. It includes a simple menu to let you choose what to clean! 🛠️

---

### 📜 توضیح خط به خط | Line-by-Line Explanation

| خط | Line | توضیح فارسی | English Description |
|-------|-------|----------------------|---------------------|
| `@echo off` | `@echo off` | 🧹 دستورات رو مخفی می‌کنه تا خروجی تمیز باشه. | 🧹 Hides commands for a clean output. |
| `title Cache Cleaner` | `title Cache Cleaner` | 📌 عنوان پنجره CMD رو به "Cache Cleaner" تنظیم می‌کنه. | 📌 Sets the CMD window title to "Cache Cleaner". |
| `color 0a` | `color 0a` | 🎨 رنگ پس‌زمینه مشکی و متن سبز برای حس هکری! | 🎨 Black background, green text for a hacker vibe! |
| `echo 🌟 Cache Cleaner Menu 🌟` | `echo 🌟 Cache Cleaner Menu 🌟` | 📢 منوی انتخاب رو با عنوان "Cache Cleaner Menu" نمایش می‌ده. | 📢 Displays the selection menu with the title "Cache Cleaner Menu". |
| `del /q /s "%temp%\*"` | `del /q /s "%temp%\*"` | 🗑 فایل‌های موقت تو پوشه Temp کاربر رو حذف می‌کنه. | 🗑 Deletes temporary files in the user's Temp folder. |
| `del /q /s "%LocalAppData%\Google\Chrome\User Data\Default\Cache\*"` | `del /q /s "%LocalAppData%\Google\Chrome\User Data\Default\Cache\*"` | 🌐 کش مرورگر کروم رو پاک می‌کنه. | 🌐 Cleans the Chrome browser cache. |
| `net stop wuauserv` | `net stop wuauserv` | 🔧 سرویس آپدیت ویندوز رو موقتاً متوقف می‌کنه تا کش پاک بشه. | 🔧 Temporarily stops the Windows Update service to clean its cache. |
| `echo [%date% %time%] All caches cleaned!` | `echo [%date% %time%] All caches cleaned!` | 📝 نتایج رو با تاریخ و زمان تو فایل لاگ ذخیره می‌کنه. | 📝 Logs results with date and time in a file. |
| `pause` | `pause` | ⏸ پنجره رو باز نگه می‌داره تا خروجی رو ببینی و بعد به منو برگرده. | ⏸ Keeps the window open to view output and returns to the menu. |

---

## 🚀 چطور استفاده کنم؟ | How to Use It?

1. **دانلود اسکریپت** | **Download the Script**  
   فایل `cache_cleaner.bat` رو از این مخزن دانلود کن.  
   Download the `cache_cleaner.bat` file from this repository.

2. **اجرا با دسترسی ادمین** | **Run as Administrator**  
   روی فایل راست‌کلیک کن و "Run as administrator" رو بزن (برای اطمینان از دسترسی کامل). ⚡  
   Right-click the file and select "Run as administrator" (to ensure full permissions). ⚡

3. **انتخاب و اجرا** | **Choose and Run**  
   از منو گزینه مورد نظرت (1-5) رو انتخاب کن و منتظر باش تا فایل‌ها پاک بشن! نتایج تو فایل `cache_clean_report.txt` رو دسکتاپ ذخیره می‌شه.  
   Select an option (1-5) from the menu and watch the files get cleaned! Results are saved in `cache_clean_report.txt` on the Desktop.

---

## ⚠️ نکات مهم | Important Notes

- 🛡️ اگه فایل‌ها پاک نشدن، مطمئن شو اسکریپت رو با دسترسی ادمین اجرا کردی.  
  🛡️ If files aren’t cleaned, ensure you ran the script as administrator.  
- 📂 مسیرهای پیش‌فرض برای کش‌های استاندارد ویندوزه. اگه مرورگرت جای دیگه نصب شده، اسکریپت رو ویرایش کن.  
  📂 Paths are set for standard Windows caches. If your browser is installed elsewhere, edit the script.  
- 📝 مشکلات رو تو بخش Issues گیت‌هاب گزارش بده!  
  📝 Report issues in the GitHub Issues section!

---

## 🙌 مشارکت | Contributing

ایده یا پیشنهادی داری؟ یه Pull Request بزن یا تو Issues بگو! 😊  
Got ideas or suggestions? Submit a Pull Request or share in Issues! 😊

---

## 📜 مجوز | License

این پروژه تحت مجوز MIT منتشر شده. آزادانه استفاده کن و به اشتراک بذار!  
This project is licensed under the MIT License. Use and share freely!

---

## 👨‍💻 ساخته شده توسط | Made by

🌟 با ❤️ توسط **سعید فروزنده** ساخته شده  
🌟 Made with ❤️ by **Saeed Forouzandeh**

---

🌟 اگه این اسکریپت بهت کمک کرد، یه ستاره تو گیت‌هاب بده!  
🌟 If this script helped you, give it a star on GitHub!