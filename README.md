# Git
## Messages de commit
Les messages de commit sont contrôles à la saisie par un hook git nommé "commit-msg'.

Un hook est un script se trouvant dans le dossier « .git/hooks » d’un projet git qui est exécuté automatiquement lors de l’utilisation d’une commande git particulière (exemple ici : git commit).

Il faut initialiser le hook une seul fois pour qu'il soit actif de manière permanente (à faire à chaque nouveau clonage du repository pag-modules si besoin).

Le script est à lancer depuis la racine du repo pag-modules :
```
./git_utils/hooks/init_git_hook.sh
```

Une fois activé, vos messages de commit sont contraints de respecter une regex définie dans le hook.
Il faut préfixer chacun de ses messages par l'une des balises suivants selon le type de modification du code :

```
[CNAM_00YYYYYY] message (YY represente un identifiant de chiffres minimum)
[QC_YYY] message (YY represente un identifiant de chiffres minimum)
[ISSUE_YYY] message
[PCC] message
[RG_*] message (* represente l'identifiant de la regle de gestion)
[INSTAL] message
[OUTILS] message
[DOC] message
[MERGE] message
```

#Tags
Un tag Git doit être créé à chaque livraison (interne ou au client).

La formalisme est le suivant pour les tags de livraison sur nos environnements (qualif, hotfix ou integration) :

```
LIVRAISON_RELEASE_SPRINT_RU_N°LIVRAISONRU
```

La formalisme est le suivant pour les tags de livraison sur les environnements CNAMTS :
```
LIVRAISON_RELEASE_SPRINT_N°Livraison
```