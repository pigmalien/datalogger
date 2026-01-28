# Available Templates

This folder contains pre-configured templates for different tracking needs. Import any template to quickly set up your stat logger.

## How to Import a Template

1. Open `index.html` in your browser
2. Click the menu (☰) in the top-right corner
3. Select "Import Template"
4. Choose one of the template files below
5. Click "Import"

## Available Templates

### 📊 LVAD Template (`lvad-template.json`)
**For**: Left Ventricular Assist Device monitoring

**Stats Included**:
- Temperature (°F)
- Weight (lbs)
- Speed (RPM)
- Flow (L/min)
- PI (Pulsatility Index)
- Power (Watts)

**Use Case**: Daily monitoring of LVAD metrics with clinical alert thresholds built-in.

---

### 💓 Blood Pressure Template (`blood-pressure-template.json`)
**For**: Blood pressure and heart rate monitoring

**Stats Included**:
- Systolic (mmHg)
- Diastolic (mmHg)
- Pulse (bpm)
- Notes (text)

**Use Case**: Track blood pressure readings for hypertension management or general health monitoring.

---

### 🏃 Fitness Template (`fitness-template.json`)
**For**: General fitness and wellness tracking

**Stats Included**:
- Weight (lbs)
- Steps (steps)
- Calories (kcal)
- Water (oz)
- Sleep (hours)
- Workout (text)

**Use Case**: Daily fitness tracking, weight loss journey, or general wellness monitoring.

---

### 💉 Diabetes Template (`diabetes-template.json`)
**For**: Diabetes management and blood glucose tracking

**Stats Included**:
- Blood Glucose (mg/dL)
- Insulin Dose (units)
- Carbohydrates (g)
- Meal Type (text)
- Notes (text)

**Use Case**: Track blood sugar levels, insulin doses, and carb intake for diabetes management.

---

### 🤒 Symptom Tracker (`symptom-tracker.json`)
**For**: Chronic health and symptom monitoring

**Stats Included**:
- Pain Level (1-10)
- Fatigue (1-10)
- Shortness of Breath (1-10)
- Swelling/Edema (1-5)
- Notes (text)

**Use Case**: Track physical symptoms to identify triggers or patterns in chronic care.

---

### 😴 Sleep & Recovery (`sleep-recovery.json`)
**For**: Sleep quality and physical recovery

**Stats Included**:
- Sleep Hours (hrs)
- Sleep Quality (1-10)
- Resting Heart Rate (bpm)
- Stress Level (1-10)

**Use Case**: Monitor how sleep and stress impact your overall heart health and energy.

---

### 💧 Fluid & Sodium Manager (`fluid-sodium-tracker.json`)
**For**: Managing heart-failure related dietary restrictions

**Stats Included**:
- Fluid Intake (oz)
- Sodium (mg)
- Caffeine (mg)
- Notes (text)

**Use Case**: Critical for heart health and VAD patients managing daily salt and liquid intake.

---

## Creating Your Own Template

1. Configure your stats in the app using "Manage Stats"
2. Click menu → "Export Template"
3. Save the JSON file
4. Share with others or keep as a backup

## Template File Format

Templates are JSON files with this structure:

```json
[
  {
    "id": "uniqueId",
    "name": "Display Name",
    "type": "number",
    "unit": "unit",
    "color": "#hexcolor",
    "min": 0,
    "max": 100
  }
]
```

### Field Descriptions

- **id**: Unique identifier (no spaces, lowercase recommended)
- **name**: Display name shown in the UI
- **type**: Either "number" or "text"
- **unit**: Unit of measurement (optional)
- **color**: Hex color code for charts
- **min/max**: Optional range hints for charts

## Tips

- Start with a template close to your needs, then customize
- Export your customized template for backup
- Templates only define what to track, not the data itself
- You can switch templates anytime (existing data remains)

## Need Help?

See the main README.md file in the parent directory for full documentation.
