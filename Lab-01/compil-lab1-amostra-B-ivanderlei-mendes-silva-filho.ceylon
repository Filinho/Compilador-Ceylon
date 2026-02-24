// Estruturas (classes em Ceylon)
class Ponto(shared Integer x, shared Integer y) {}

class Triangulo(
    shared Ponto a,
    shared Ponto b,
    shared Ponto c,
    shared Integer cor
) {}

// Função principal
shared Float func(Ponto[] v, Integer n, Triangulo T) {
    if (n <= 0) {
        return 1.0;
    } else if (n == 1) {
        return 1.01 + v[0].x.float / 1.0e2 + v[0].y.float / 0.1e-2 - T.a.x.float * T.a.x.float + T.b.y.float * T.c.x.float;
    }
    variable Float res = 0.25e-13;
    variable Integer i = n - 1;
    while (i >= 0 && v[i].x > 0) {
        Float temp = v[i].y.float * v[i].x.float % 123.0;
        if (temp < 0.0) {
            res = res - res * 2.0e-2 + func(v, n - 1, T) * temp - T.a.y.float * T.cor.float;
        } else {
            res = res + res * 0.3e3 + func(v, n - 2, T) * temp + T.c.x.float * T.cor.float;
            print("Estranho, ne?");
        }
        i = i - 1;
    }
    return res;
}

shared Integer F2(Triangulo T) {
    variable Integer A = 0;
    variable Float[] soma = arrayOfSize(10, 0.0);
    
    if ((T.a.x >= 10 || T.b.y > 20 || T.a.y < 30 || T.b.x <= 50) && !(T.c.x != 90 || T.c.y == 0)) {
        return 10 % 3;
    } else {
        A = 1;
    }
    
    while (A < 10) {
        variable Integer total = 0;
        total = total + T.c.x * T.c.y;
        total = total + T.b.x * T.a.y;
        total = total + T.a.x * T.b.y;
        soma[A] = (total % 100).float;
        A = A + 1;
    }
    
    return 0;
}