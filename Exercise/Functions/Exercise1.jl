function GCD(x :: Integer, y :: Integer)
    local gcd = max(x,y)
    while x % gcd != 0 || y % gcd != 0
        gcd -= 1
    end

    return gcd
end

GCD(12,16)