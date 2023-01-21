## Collision Resistant PGV Compression Functions


The script in this repository may be run using [Octave](https://octave.org/). The code, which may be used to generate group1 PGV compression functions, is based on the characterization of collision structure presented in the paper "Linicrypt in the Ideal Cipher Model" by Z. Javar and B.M. Kapron.

Preneel, Govaerts, and Vandewalle proposed a sytematic way to construct 64 block-cipher-based compression functions using a single
call to the cipher (rate-1) and Black, Pogaway and Shrimpton proved that, in black-box model, the 12 schemes (group1) that PGV singled out as secure really are secure and given tight upper and lower bounds on their collision resistance. 
### group1PGV.m
This code generates all 12 collision resistant PGV compression functions. Each function is presented as a 3 $\times$ 4 matrix where the first and second rows correspond to the ideal cipher key and input respectively and the third row correspond to the function result. The first and second columns also correspond to the function's input and the third column corrosponed to the constant value and fourth columns is the ideal cipher result.



$$A=\begin{matrix}
 & \begin{matrix}h&m&v&E\end{matrix} \\\\
\begin{matrix}q_K\\\\q_X\\\\m\end{matrix} & 
 \left\lbrack \matrix{1 & 0 & 0 & 0\\\\0 & 1 & 0 & 0 \\\\0 & 1 & 0 & 1} \right\rbrack\\\\
\end{matrix}$$

The equivalent compression function is $E(h,m)=E_h(m)\oplus m$
