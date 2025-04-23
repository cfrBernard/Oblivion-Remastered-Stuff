# ⚠️ Notice – April 23, 2025

> This safe modding environment was created just after the release of *Oblivion Remastered* (version `0.411.140.0`).  
> The tools used (TES4Edit `4.1.5f` and TES Construction Set `1.2.404`) **were not officially updated** for this version at the time of writing.  
> Please stay informed on community forums and modding hubs in case of updated tools or new workflows that support the remaster natively.  
> This setup is meant as a temporary workaround for safe modding and plugin development.

---

# Oblivion Remastered – Safe Modding Environment

This folder contains a lightweight and isolated modding sandbox for *Oblivion Remastered*, ideal for use with tools like TES4Edit or TES Construction Set (TESCS).  
It allows you to test and develop plugins (.esp/.esm) without modifying your actual game installation.

---

## 🚀 Quick Setup

### 1. Clone or Download

You can either:

- Clone this repo
- Or just download the `SafeEnvironment` folder alone

---

### 2. Run the Setup

Run the `setup_obv_env.bat` file. It will:

- Create a dummy `Oblivion.exe`
- Set up the directory structure: `ObvRemaster_env/Data/`
- Create an `Oblivion.ini` (if there is none), under:
> "INI_DIR=%USERPROFILE%\Documents\My Games\Oblivion"


---

### 3. Inject Your Game Data

Copy the `.esm` file from your real install (usually `Oblivion.esm`) into the new `Data/` folder:  

> ObvRemaster_env/Data/Oblivion.esm

You can copy any other required assets (like `.bsa` or `.esp`) if needed, but for plugin editing, the `.esm` is often enough.

---

### 4. Drop in Your Modding Tools

Place your preferred editing tools in the root of `ObvRemaster_env/`, such as:

- [TES4Edit (xEdit)](https://www.nexusmods.com/oblivion/mods/11536) `4.1.5f`
- [TES Construction Set (TESCS)](https://www.nexusmods.com/oblivion/mods/11367?tab=files)  `1.2.404`

---

### 5. Launch & Create

Run your tools directly from this folder. They will use this environment's data, not your actual game install.

---

## 🧪 Why Use This?

- Safe: You don’t risk breaking your main game files
- Clean: Easy to test and undo changes
- Lightweight: You only copy the necessary files
- Git-Friendly: Use this folder as a mod-dev sandbox and commit to your repo

---

## 📝 Notes

- Make sure `TES4Edit` or `TESCS` are pointed to this folder
- If your tool complains about missing `.ini`, the batch setup ensures it’s placed under:
> C:\Users<YourName>\Documents\My Games\Oblivion\

---

*Happy modding 🛠️✨*  
