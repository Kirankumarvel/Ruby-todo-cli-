# 🔧 Step-by-Step Troubleshooting

1. **First Run Fails?**
   - Verify Ruby version:
     ```bash
     ruby -v  # Requires 3.0+
     ```
   - Install missing gems:
     ```bash
     bundle install
     ```

2. **Storage Not Working?**
   - Check file permissions:
     ```bash
     ls -l ~/.todo_list.json
     ```
   - Manual test:
     ```ruby
     require 'json'
     File.write("test.json", [].to_json)
     ```

3. **CLI Menu Freezes?**
   - Force quit with `Ctrl + C`
   - Restart terminal
