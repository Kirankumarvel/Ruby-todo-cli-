# 🚨 Common Errors & Solutions

## 1. **Ruby Not Found**
- **Error**: `ruby: command not found`
- **Fix**:
  ```bash
  # Linux/Mac
  sudo apt-get install ruby
  # Windows: Install via RubyInstaller
  ```

## 2. **Permission Denied**
- **Error**: `Permission denied @ rb_sysopen`
- **Fix**:
  ```bash
  chmod 644 lib/storage.rb  # Make file readable
  ```

## 3. **JSON Parse Error**
- **Error**: `JSON::ParserError`
- **Fix**: Delete corrupted `~/.todo_list.json`:
  ```bash
  rm ~/.todo_list.json
  ```

## 4. **Windows Path Issues**
- **Error**: `LoadError: cannot load such file`
- **Fix**: Use backslashes:
  ```powershell
  ruby bin\todo
  ```
