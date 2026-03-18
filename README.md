# Stat Logger

A fully customizable, user-definable stat logger built with DaisyUI for tracking any metrics you care about. From health data to personal habits, track anything with ease.

## 🚀 Quick Start

1. Open `index.html` in your web browser
2. The app comes with a default template (Temperature, Weight, Heart Rate)
3. To customize your stats, click the menu (☰) → **Manage Stats**

## 🎨 Features

### User-Definable Stats
- Add, edit, or remove stat types
- Customize names, units, types, and chart colors
- Supported types: Number, Checkbox, Dropdown, Range, Text, Time, and more

### Template Management
- **Import Template**: Load pre-configured stat definitions
- **Export Template**: Save your stat configuration to share or backup
- Templates are JSON files that define what stats to track

### Data Management
- **Import Data**: Restore entries from a backup
- **Export Data**: Save all your logged entries
- Data files are separate from templates

### Visualizations
- Interactive charts for all numeric stats
- Multiple time ranges: 7 days, 30 days, 90 days, 1 year, all time
- Color-coded charts matching your stat colors

### Mobile-Friendly & Premium Design
- Fully responsive design using DaisyUI and Tailwind CSS
- Works on phones, tablets, and desktops
- Touch-optimized interface with smooth animations

### Themes
- Choose from 32 beautiful DaisyUI themes
- Light, Dark, Synthwave, Dracula, Cupcake, and many more
- Preference saved automatically
- Accessible via the paint palette icon in the navigation bar

## 📱 How to Use

### Daily Logging
1. Select today's date (auto-filled)
2. Enter values for your stats
3. Click "Save Entry"

### Viewing Data
- **Dashboard**: See total entries, active stats, and last entry date
- **Charts**: Select a stat and time range to visualize trends
- **Table**: View recent entries in tabular format

### Managing Stats
1. Click menu (☰) → "Manage Stats"
2. Edit existing stats or add new ones
3. Set name, unit, type, and color
4. Click "Save Configuration"

### Using Templates
1. Configure your stats in "Manage Stats"
2. Click menu → "Export Template"
3. Save the JSON file
4. Share with others or use on another device by using "Import Template"

## 💾 Data Storage

All data is stored locally in your browser's localStorage:
- **Stats Configuration**: Your stat definitions
- **Entries Data**: Your logged entries
- **Theme Preference**: Light/dark mode choice

No data is sent to any server - everything stays on your device.

## 📋 Example Templates

### Fitness Template
```json
[
  {"id": "weight", "name": "Weight", "type": "number", "unit": "lbs", "color": "#3b82f6"},
  {"id": "steps", "name": "Steps", "type": "number", "unit": "steps", "color": "#10b981"},
  {"id": "calories", "name": "Calories", "type": "number", "unit": "kcal", "color": "#f59e0b"},
  {"id": "workout", "name": "Workout", "type": "text", "unit": "", "color": "#8b5cf6"}
]
```

### Blood Pressure Template
```json
[
  {"id": "systolic", "name": "Systolic", "type": "number", "unit": "mmHg", "color": "#ef4444"},
  {"id": "diastolic", "name": "Diastolic", "type": "number", "unit": "mmHg", "color": "#3b82f6"},
  {"id": "pulse", "name": "Pulse", "type": "number", "unit": "bpm", "color": "#ec4899"}
]
```

### Sleep Tracker Template
```json
[
  {"id": "sleep_duration", "name": "Sleep Duration", "type": "number", "unit": "hrs", "color": "#6366f1"},
  {"id": "sleep_quality", "name": "Sleep Quality", "type": "range", "min": 1, "max": 10, "color": "#8b5cf6"},
  {"id": "bedtime", "name": "Bedtime", "type": "time", "color": "#4338ca"}
]
```

## 🛠️ Customization

### Changing Colors
Each stat has a color used in charts. Use the color picker in "Manage Stats" to customize.

### Adding Custom Stats
1. Click "Manage Stats"
2. Click "Add Stat"
3. Configure the new stat
4. Save

## 🔒 Privacy & Security

- All data stored locally on your device
- No internet connection required
- No data transmitted to external servers
- Export your data regularly for backup

## 🆘 Troubleshooting

**Q: My data disappeared!**
A: Data is stored in browser localStorage. Clearing browser data will delete it. Always export backups.

**Q: Can I use this offline?**
A: Yes! Once loaded, the app works completely offline.

**Q: How do I change units (e.g., °F to °C)?**
A: Use the unit toggle in the navigation bar for Temperature and Weight. For other stats, edit the stat in "Manage Stats" and change the unit field.

**Q: Can I track non-numeric data?**
A: Yes! Set stat type to "text", "textarea", or "select" for notes, medications, or categorical data.

---

**Disclaimer**: This is a tracking tool only. Always consult with a professional for any critical data interpretation.
