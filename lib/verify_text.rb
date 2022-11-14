def verify_text(text)
    if text.start_with?(/[A-Z]/) && text.end_with?("!" || '?' || '.') 
        return true
    else
        return false
    end
end