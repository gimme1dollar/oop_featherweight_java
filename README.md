# featherweight java
## OOP-Language design     
       
https://www.cis.upenn.edu/~bcpierce/papers/fj-toplas.pdf
    
Featherweight Java, or FJ, as a new contender for a minimal core calculus for modeling Java’s type system. The design of FJ favors compactness over completeness almost obsessively, having just five forms of expression: object creation, method invocation, field access, casting, and variables. Its syntax, typing rules, and operational semantics fit comfortably on a few pages. Indeed, our aim has been to omit as many features as possible —even assignment— while retaining the core features of Java typing. There is a direct correspondence between FJ and a purely functional core of Java, in the sense that every FJ program is literally an executable Java program.      
FJ is only a little larger than Church’s lambda calculus [Barendregt 1984] or Abadi and Cardelli’s object calculus [1996], and is significantly smaller than previous formal models of class-based languages like Java, including those put forth by Drossopoulou et al. [1999], Syme [1997], Nipkow and von Oheimb [1998], and Flatt et al. [1998a; 1998b]. Being smaller, FJ lets us focus on just a few key issues. For example, we have discovered that capturing the behavior of Java’s cast construct in a traditional “small-step” operational semantics is trickier than we would have expected, a point that has been overlooked or underemphasized in other models



