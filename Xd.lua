return({
    A = {},
    j = function(d)
        local b = string
        local e, g
        b, e, g = bit32, b.char, b.byte
        local bxor = b.bxor
        e = {[1] = 2, [2] = e}
        e[3] = e
        g = {[1] = 2, [2] = g}
        g[3] = g
        bxor = {[1] = 2, [2] = bxor}
        bxor[3] = bxor
        return d:k({e, g, bxor})
    end,
    n = function(d, m)
        return function(e)
            local k = 1
            local g = 0
            while true do
                g = g * 85 + ("(PIZDA_0123456789_abcdefghijklmnopqrstuvwxyz)"):find(e:sub(k, k), 1, true) - 1
                k = k + 1
                if k > 5 then
                    break
                end
            end
            k = m[1][2]
            local j = m[3][2](g, 24)
            local _ = m[2][2](m[3][2](g, 16), 255)
            local n = m[2][2](m[3][2](g, 8), 255)
            local o = m[2][2]
            o = d.c(o(g, 255))
            k = d.c(k(j, _, n, d.d(o)))
            return d.d(k)
        end
    end,
    E = function(a, ...)
        a.j, a.l = "", a:l()
        return a:f()(...)
    end,
    m = function(d, l)
        return function(e)
            local g = #e % 5
            if g > 0 then
                e = e .. ("~"):rep(5 - g)
            end
            local k = l[1][2](e, ".....", d:n({
                l[3],
                l[4],
                l[2],
            }))
            local j
            k, j = k.sub, k
            k = d.c(k(j, 1, g > 0 and -(5 - g) - 1 or -1))
            return d.d(k)
        end
    end,
    a = bit32.bxor,
    B = function(a, b, c, d)
        a.A[d] = b - c
        return a.A[d]
    end,
    C = function(a, b, c, d)
        a.A[d] = a.a(b, 23896) / c
        return a.A[d]
    end,
    c = function(...)
        return {
            [1] = {...},
            [2] = select("#", ...),
        }
    end,
    f = function(d)
        return function(...)
            return d:g()
        end
    end,
    l = function(d)
        local gsub = string.gsub
        local e = {
            [1] = 2,
            [2] = string.char,
        }
        e[3] = e
        gsub = {[1] = 2, [2] = gsub}
        gsub[3] = gsub
        local band = bit32.band
        local i = {
            [1] = 2,
            [2] = bit32.rshift,
        }
        i[3] = i
        band = {[1] = 2, [2] = band}
        band[3] = band
        return d:m({gsub, i, e, band})
    end,
    d = (function()
        local function m(i, j, k)
            if j > k then
                return
            end
            return i[j], m(i, j + 1, k)
        end
        return function(o)
            return m(o[1], 1, o[2])
        end
    end)(),
    D = function(a, b, c, d)
        a.A[d] = a.j(b, c)
        return a.A[d]
    end,
    g = function(d)
        return function(e, g)
            local h = 206
            local s, b, j, n, q, r, i, f, p, k, l, _, t, c, o
            repeat
                if h >= 136 then
                    if h >= 198 then
                        if h < 215 then
                            if h > 205 then
                                if h > 206 then
                                    h = n <= 0 and 13728 / h or 27872 / h
                                else
                                    r = 25
                                    p = 150
                                    j = 0
                                    k = {}
                                    q = 255
                                    n = 1
                                    h = 155
                                end
                            elseif h < 201 then
                                i = j + k[q]
                                l = g
                                f = d._[d.A[9039] or "string"].byte
                                c, h, t = 1, 48510 / h, q % #g
                                t = t + 1
                            elseif h <= 201 then
                                q = q + o
                                h = o > 0 and h + -81 or h + -61
                            else
                                h = 256 - h
                            end
                        elseif h <= 242 then
                            if h < 233 then
                                if h > 215 then
                                    h = i <= 0 and 83 or 16632 / h
                                else
                                    h = o > 0 and 221 - h or 361 - h
                                end
                            elseif h > 233 then
                                h = o > s and 169 or 216 or 216
                            else
                                h = j > q and 29 or 441 - h
                            end
                        elseif h <= 245 then
                            f = f(l, t)
                            s, i = i + f, 256
                            j = s % 256
                            i, h, s = k[q], h + -44, k[j]
                            k[q] = s
                            k[j] = i
                        else
                            h, t = 384 - h, d.c(t(c, b))
                        end
                    elseif h > 153 then
                        if h < 169 then
                            if h > 155 then
                                h = i <= 0 and 109 or h + -121
                            else
                                h = n > 0 and 62 or 31775 / h
                            end
                        elseif h <= 169 then
                            h = 185
                            s = n
                            o = d._[d.A[-19304] or "table"].concat
                        else
                            o = d.c(o(s))
                            return d.d(o)
                        end
                    elseif h <= 141 then
                        if h >= 140 then
                            if h <= 140 then
                                h = o <= 0 and 124 or 9 or 9
                            else
                                h = q < n and 18189 / h or 198 or 198
                            end
                        elseif h <= 136 then
                            l = l(d.d(t))
                            h, n[o] = h + -110, l
                        else
                            h = i > 0 and 197 - h or 115 or 115
                        end
                    elseif h <= 146 then
                        h = 5548 / h
                    else
                        c = c(b, _)
                        h, b = h + 95, f
                    end
                elseif h > 62 then
                    if h < 115 then
                        if h > 83 then
                            if h > 97 then
                                h = o < s and 18421 / h or 45 or 45
                            else
                                k[j] = j
                                h = r >= p and 29 or 22 or 22
                            end
                        elseif h <= 77 then
                            if h <= 66 then
                                h = j < q and 29 or h + 68
                            else
                                h = 45
                            end
                        else
                            h = o < s and 252 - h or h + -6
                        end
                    elseif h < 124 then
                        if h <= 115 then
                            h = 19090 / h
                        else
                            h = q > n and 129 or 140 or 140
                        end
                    elseif h > 129 then
                        h = 97
                    elseif h > 124 then
                        j = 0
                        q = 0
                        n = {}
                        o = 1
                        i = 1
                        s = #e
                        h = 138
                    else
                        h = q < n and h + 5 or 9 or 9
                    end
                elseif h > 38 then
                    if h < 51 then
                        if h > 45 then
                            h = j < q and 1392 / h or 97 or 97
                        else
                            h, f, l = 6885 / h, q + 1, 256
                            q = f % 256
                            j = (j + k[q]) % 256
                            l = k[q]
                            k[q] = k[j]
                            k[j] = l
                            f = k[(k[q] + k[j]) % 256]
                            l = d._[d.A[9039] or "string"].char
                            t = d._[d.A[-24096] or "bit32"].bxor
                            c = d._[d.A[9039] or "string"].byte
                            _ = o
                            b = e
                        end
                    elseif h <= 59 then
                        if h > 51 then
                            h = o > s and 228 - h or 115 or 115
                        else
                            h = n <= 0 and 48 or 148 - h
                        end
                    else
                        h = j > q and 29 or 267 - h
                    end
                elseif h < 26 then
                    if h > 9 then
                        j = j + n
                        h = n > 0 and 233 or 4576 / h
                    elseif h > 6 then
                        h = 1782 / h
                    else
                        h = q > n and 129 or h + 140
                    end
                elseif h > 29 then
                    h = o <= 0 and 141 or 198 or 198
                elseif h > 26 then
                    q = 0
                    n = 255
                    o = 1
                    j = 0
                    h = 215
                else
                    o = o + i
                    h = i > 0 and 242 or 242 - h
                end
            until false
        end
    end,
    _ = getfenv(),
    k = function(d, m)
        return function(e, g)
            local k = ""
            local j = 0
            local q = #e - 1
            local i, o, f, p
            if 0 <= q then
                while true do
                    p = m[3][2]
                    o = m[1][2]
                    i = m[2][2](e, j + 1)
                    f = m[2][2]
                    f = d.c(f(g, #g - j % #g))
                    p = d.c(p(i, d.d(f)))
                    k = k .. o(d.d(p))
                    j = j + 1
                    if j > q then
                        break
                    end
                end
            end
            return k
        end
    end,
}):E(...)
