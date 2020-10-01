%% Exemple d'exercice r�solu.
%% Partie (i)
%%
% 
%  Il faut d'abord comprendre comment engendrer un nombre entier al�atoire
%  entre -5 et 5. La fonction rand de Matlab retourne un nombre r�el entre
%  0 et 1 distribu� uniform�ment. En multipliant celui-ci par 11, en 
%  soustrayant 5 et en prenant la partie enti�re, on obtient un entier 
%  al�atoire entre -5 et 5 uniform�ment distribu�. Il ne reste plus qu'� 
%  effectuer ces op�rations de mani�re matricielle, �l�ment de matrice par 
%  �l�ment de matrice.
% 
matrice_aleatoire = floor(11*rand(4,4) - 5*ones(4,4))

%% Partie (ii)
%%
% 
%  On calcule 10 fois une telle matrice al�atoire et on enregistre son
%  d�terminant dans un vecteur.
% 
for k = [1:10]                     
    matrice_aleatoire = floor(11*rand(4,4) - 5*ones(4,4));
    vecteur_determinants(k) = det(matrice_aleatoire);
end
% Pour �viter d'afficher ".000", comme on travaille avec des entiers.
format rational
% On affiche le vecteur en colonne.
vecteur_determinants'  
%%
% 
%  Aucun des d�terminants n'est nul. Pour tenter d'expliquer ce r�sultat, 
%  on peut essayer d'estimer la proportion de matrice dont le d�terminant 
%  est nul. Il y a 11^16 matrices al�atoires de la forme d�sir�e, mais 
%  calculer exactement le nombre de matrice avec un d�terminant nul n'est 
%  pas simple.
% 
%% Partie (iii)
%%
% 
%  On va essayer d'estimer la proportion de matrices de d�terminant nul
%  dans notre ensemble.
% 

% Compteur enregistrant le nombre de matrice de d�terminant nul dans notre 
% ensemble.
nb_mat_det_nul = 0;               
taille_ensemble = 10000;  
for k = [1:taille_ensemble]                                     
    matrice_aleatoire = floor(11*rand(4,4) - 5*ones(4,4));
    % Si le d�terminant de la matrice al�atoire est nul, on incr�mente le 
    % compteur.
    if det(matrice_aleatoire) == 0
        nb_mat_det_nul = nb_mat_det_nul + 1;
    end
end
% Pour �viter d'avoir trop de nombres apr�s la virgule
format short       
%%
% 
%  La proportion estim�e de matrices de d�terminant nul est:
% 

Proportion = nb_mat_det_nul/taille_ensemble   

%%
% 
%  Il n'est donc pas �tonnant que dans notre petit �chantillon de 10
%  matrices, on n'en trouve aucune dont le d�terminant est nul.
% 
