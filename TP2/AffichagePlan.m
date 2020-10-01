function AffichagePlan(C,u1,u2,h)
% AffichagePlan(C,u1,u2,h) affiche une partie d'un plan.
% La fonction dessine un carr� de c�t� h centr� en C dont l'orientation 
% est d�finie par les vecteurs orthonormales u1 et u2.  

% Les quatres points du carr�
tmp1=C+h/2*(u1-u2);
tmp2=C+h/2*(u1+u2);
tmp3=C-h/2*(u1-u2);
tmp4=C-h/2*(u1+u2);
tmp=[tmp1';tmp2';tmp3';tmp4'];
% affiche le carr�
fill3(tmp(:,1),tmp(:,2),tmp(:,3),'b');
% d�finit la transparence
alpha(0.2);
% affiche le nom des axes
xlabel('X');ylabel('Y');zlabel('Z');
% affiche la grille
grid on;
end