# LVAD Stat Logger

A user-definable stat logger built with DaisyUI for tracking LVAD (Left Ventricular Assist Device) metrics and other health data.

## 🚀 Quick Start

1. Open `index.html` in your web browser
2. The app comes with a default template (Temperature, Weight, Heart Rate)
3. To use the LVAD template, click the menu (☰) → "Import Template" → Select `lvad-template.json`

## 📊 LVAD Template

The LVAD template includes the following stats:

- **Temperature** (°F) - Body temperature monitoring
- **Weight** (lbs) - Daily weight tracking
- **Speed** (RPM) - VAD pump speed
- **Flow** (L/min) - VAD flow rate
- **PI** - Pulsatility Index
- **Power** (Watts) - VAD power consumption

### Alert Thresholds (from original LVAD guidelines)

The template includes these important thresholds:

- **Temperature**: Alert if ≥ 101.5°F
- **Weight**: Alert on 2-3 lbs overnight gain or 5 lbs in 1 week
- **Flow**: Alert if changes by ≥ 2.0 L/min from baseline
- **PI**: Alert if < 2, > 8, or changes by ± 4 from baseline
- **Power**: Alert if > 8 watts or increases by ≥ 2 watts from baseline

## 🎨 Features

### User-Definable Stats
- Add, edit, or remove stat types
- Customize names, units, types, and chart colors
- Create templates for different tracking needs

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

### Mobile-Friendly
- Fully responsive design
- Works on phones, tablets, and desktops
- Touch-optimized interface

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
3. Set name, unit, type (number/text), and color
4. Click "Save Configuration"

### Using Templates

#### Import LVAD Template
1. Click menu → "Import Template"
2. Select `lvad-template.json`
3. Click "Import"
4. Your stats are now configured for LVAD tracking

#### Create Your Own Template
1. Configure your stats in "Manage Stats"
2. Click menu → "Export Template"
3. Save the JSON file
4. Share with others or use on another device

## 💾 Data Storage

All data is stored locally in your browser's localStorage:
- **Stats Configuration**: Your stat definitions
- **Entries Data**: Your logged entries
- **Theme Preference**: Light/dark mode choice

No data is sent to any server - everything stays on your device.

## 🔄 Migrating from Old LVAD Logger

If you have data from the original LVAD logger:

1. Open the old logger
2. Export your data (if available)
3. Open the new stat logger
4. Import the LVAD template (`lvad-template.json`)
5. Import your data

Note: The old logger stored data as `lvadData` in localStorage. The new logger uses `entriesData`. You may need to manually transfer data or re-enter historical entries.

## 📋 Example Templates

### LVAD Template (included)
For Left Ventricular Assist Device monitoring with all standard metrics.

### Fitness Template (create your own)
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

## 🛠️ Customization

### Changing Colors
Each stat has a color used in charts. Use the color picker in "Manage Stats" to customize.

### Adding Custom Stats
1. Click "Manage Stats"
2. Click "Add Stat"
3. Configure the new stat
4. Save

### Stat Types
- **Number**: For numeric values (shows in charts)
- **Text**: For notes or categorical data (shows in table only)

## 📞 When to Contact VAD Team

Based on the original LVAD guidelines, contact your VAD team if:

- VAD flow increases or decreases by 2.0 L/min or more from baseline
- PI is less than 2 or greater than 8, or has changed by 4 from baseline
- Power reading has increased by 2 watts from baseline, or is greater than 8
- Weight gain of 2 to 3 lbs overnight or 5 lbs in 1 week
- Increasing swelling in legs, hands, or abdomen
- Temperature is 101.5°F or higher
- Driveline is tugged or pulled
- Signs of infection at driveline site (redness, tenderness, warmth, drainage)

## 🔒 Privacy & Security

- All data stored locally on your device
- No internet connection required
- No data transmitted to external servers
- Export your data regularly for backup

## 💡 Tips

1. **Daily Routine**: Set a reminder to log at the same time each day
2. **Backup Regularly**: Export your data weekly/monthly
3. **Share Templates**: Export templates to help others with similar tracking needs
4. **Multiple Devices**: Export data and template, then import on other devices
5. **Print Reports**: Use your browser's print function to create PDF reports

## 🆘 Troubleshooting

**Q: My data disappeared!**
A: Data is stored in browser localStorage. Clearing browser data will delete it. Always export backups.

**Q: Can I use this offline?**
A: Yes! Once loaded, the app works completely offline.

**Q: How do I change units (e.g., °F to °C)?**
A: Edit the stat in "Manage Stats" and change the unit field. You'll need to manually convert existing data.

**Q: Can I track non-numeric data?**
A: Yes! Set stat type to "text" for notes, medications, or categorical data.

## 📄 License

Free to use for personal health tracking.

---

**Disclaimer**: This is a tracking tool only. Always consult with your healthcare provider for medical decisions.
