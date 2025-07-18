final Set<String> blacklistedTokens = <String>{};

bool isTokenBlacklisted(String token) => blacklistedTokens.contains(token);

void blacklistToken(String token) => blacklistedTokens.add(token);
