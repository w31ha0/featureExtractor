.class public abstract Lcom/wordloco/wordchallenge/d/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Landroid/content/SharedPreferences;


# direct methods
.method public static A()I
    .locals 3

    .prologue
    .line 432
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    const-string v1, "appWinCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static B()V
    .locals 3

    .prologue
    .line 436
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 437
    const-string v1, "appWinCount"

    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->A()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 438
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 439
    return-void
.end method

.method public static C()I
    .locals 3

    .prologue
    .line 442
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    const-string v1, "playerCurrentGplus"

    .line 443
    sget v2, Lcom/wordloco/wordchallenge/b/a;->m:I

    .line 442
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 444
    sget v1, Lcom/wordloco/wordchallenge/b/a;->n:I

    if-le v0, v1, :cond_0

    .line 445
    sget v0, Lcom/wordloco/wordchallenge/b/a;->m:I

    .line 447
    :cond_0
    return v0
.end method

.method public static D()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 451
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    const-string v2, "playerCurrentChallenge"

    .line 452
    sget v3, Lcom/wordloco/wordchallenge/b/a;->i:I

    .line 451
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 453
    sget v2, Lcom/wordloco/wordchallenge/b/a;->j:I

    if-le v0, v2, :cond_0

    .line 454
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->v()I

    move-result v0

    .line 455
    if-ne v0, v1, :cond_0

    move v0, v1

    .line 460
    :cond_0
    return v0
.end method

.method public static E()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 464
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    const-string v2, "playerCurrentLevel"

    .line 465
    sget v3, Lcom/wordloco/wordchallenge/b/a;->k:I

    .line 464
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 466
    sget v2, Lcom/wordloco/wordchallenge/b/a;->l:I

    if-le v0, v2, :cond_0

    .line 467
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->v()I

    move-result v0

    .line 468
    if-ne v0, v1, :cond_0

    move v0, v1

    .line 473
    :cond_0
    return v0
.end method

.method public static F()I
    .locals 3

    .prologue
    .line 478
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    const-string v1, "userLevel"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static G()V
    .locals 3

    .prologue
    .line 483
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 484
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->F()I

    move-result v1

    sget-object v2, Lcom/wordloco/wordchallenge/b/a;->c:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 485
    const-string v1, "userLevel"

    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->F()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 486
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 488
    :cond_0
    return-void
.end method

.method public static H()I
    .locals 3

    .prologue
    .line 492
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    const-string v1, "topDifficulty"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static I()I
    .locals 3

    .prologue
    .line 505
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    const-string v1, "nextLevelSize"

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static J()I
    .locals 3

    .prologue
    .line 517
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    const-string v1, "nextLevelDifficulty"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static K()I
    .locals 3

    .prologue
    .line 529
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    const-string v1, "lastLevelSize"

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static L()I
    .locals 3

    .prologue
    .line 541
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    const-string v1, "lastLevelDifficulty"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static M()I
    .locals 3

    .prologue
    .line 553
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    const-string v1, "lastLevelWordNumber"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static N()I
    .locals 3

    .prologue
    .line 565
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    const-string v1, "lastLevelSecondsSolve"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static O()Z
    .locals 3

    .prologue
    .line 577
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    const-string v1, "lastLevelAutoSolve"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static P()I
    .locals 3

    .prologue
    .line 589
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    const-string v1, "lastLevelHelpsUsed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static Q()I
    .locals 3

    .prologue
    .line 600
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    const-string v1, "lastLevelHintShowed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static a(I)V
    .locals 3

    .prologue
    .line 58
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 59
    const-string v1, "currentLevelCoins"

    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->b()I

    move-result v2

    add-int/2addr v2, p0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 60
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 61
    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 35
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "internalad_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_adAvailable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 38
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 39
    return-void
.end method

.method public static a(Z)V
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 22
    const-string v1, "helpsActive"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 23
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 24
    return-void
.end method

.method public static a()Z
    .locals 3

    .prologue
    .line 17
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    const-string v1, "helpsActive"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 27
    invoke-static {p0}, Lcom/wordloco/wordchallenge/d/i;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "internalad_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_adAvailable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 29
    const/4 v2, 0x1

    .line 28
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 31
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()I
    .locals 3

    .prologue
    .line 54
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    const-string v1, "currentLevelCoins"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static b(I)V
    .locals 2

    .prologue
    .line 174
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 175
    const-string v1, "playerTutorialStep"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 176
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 177
    return-void
.end method

.method public static b(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 47
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "internalad_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_appInstalled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 50
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 51
    return-void
.end method

.method public static b(Z)V
    .locals 2

    .prologue
    .line 110
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 111
    const-string v1, "appSoundActive"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 112
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 113
    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 42
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "internalad_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_appInstalled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 43
    const/4 v2, 0x0

    .line 42
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static c(I)I
    .locals 3

    .prologue
    .line 302
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 303
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->r()I

    move-result v1

    add-int/2addr v1, p0

    .line 304
    const-string v2, "playerCoins"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 305
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 306
    return v1
.end method

.method public static c()V
    .locals 3

    .prologue
    .line 64
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 65
    const-string v1, "currentLevelCoins"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 66
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 67
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 379
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 380
    const-string v1, "appLanguague"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 381
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 382
    return-void
.end method

.method public static c(Z)V
    .locals 2

    .prologue
    .line 215
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 216
    const-string v1, "appShowRate"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 217
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 218
    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "DICT_PLUSBUTTON"

    .line 102
    :goto_0
    return-object v0

    .line 72
    :cond_0
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->y()Ljava/lang/String;

    move-result-object v0

    const-string v1, "es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    const-string v0, "DICT2_ES"

    goto :goto_0

    .line 74
    :cond_1
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->y()Ljava/lang/String;

    move-result-object v0

    const-string v1, "it"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    const-string v0, "DICT2_IT"

    goto :goto_0

    .line 76
    :cond_2
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->y()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ru"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    const-string v0, "DICT2_RU"

    goto :goto_0

    .line 78
    :cond_3
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->y()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 79
    const-string v0, "DICT2_PL"

    goto :goto_0

    .line 80
    :cond_4
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->y()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 81
    const-string v0, "DICT2_SV"

    goto :goto_0

    .line 82
    :cond_5
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->y()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 83
    const-string v0, "DICT2_CS"

    goto :goto_0

    .line 84
    :cond_6
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->y()Ljava/lang/String;

    move-result-object v0

    const-string v1, "de"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 85
    const-string v0, "DICT2_DE"

    goto :goto_0

    .line 86
    :cond_7
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->y()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 87
    const-string v0, "DICT2_NL"

    goto :goto_0

    .line 88
    :cond_8
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->y()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 89
    const-string v0, "DICT2_PT"

    goto/16 :goto_0

    .line 90
    :cond_9
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->y()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 91
    const-string v0, "DICT2_FR"

    goto/16 :goto_0

    .line 92
    :cond_a
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->y()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 93
    const-string v0, "DICT2_BG"

    goto/16 :goto_0

    .line 94
    :cond_b
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->y()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 95
    const-string v0, "DICT2_HR"

    goto/16 :goto_0

    .line 96
    :cond_c
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->y()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 97
    const-string v0, "DICT2_UK"

    goto/16 :goto_0

    .line 98
    :cond_d
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->y()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 99
    const-string v0, "DICT2_TR"

    goto/16 :goto_0

    .line 100
    :cond_e
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->y()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 101
    const-string v0, "DICT2_SK"

    goto/16 :goto_0

    .line 102
    :cond_f
    const-string v0, "DICT2_EN"

    goto/16 :goto_0
.end method

.method public static d(I)V
    .locals 2

    .prologue
    .line 497
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 498
    const-string v1, "topDifficulty"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 499
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 501
    return-void
.end method

.method public static d(Z)V
    .locals 2

    .prologue
    .line 221
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 222
    const-string v1, "appScreen43"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 223
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 224
    return-void
.end method

.method public static e(I)V
    .locals 2

    .prologue
    .line 510
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 511
    const-string v1, "nextLevelSize"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 512
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 513
    return-void
.end method

.method public static e(Z)V
    .locals 2

    .prologue
    .line 235
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 236
    const-string v1, "playerGPlusLocked"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 237
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 238
    return-void
.end method

.method public static e()Z
    .locals 3

    .prologue
    .line 106
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    const-string v1, "appSoundActive"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static f()I
    .locals 3

    .prologue
    .line 159
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    const-string v1, "playerCollectGift"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static f(I)V
    .locals 2

    .prologue
    .line 522
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 523
    const-string v1, "nextLevelDifficulty"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 524
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 525
    return-void
.end method

.method public static f(Z)V
    .locals 2

    .prologue
    .line 274
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 275
    const-string v1, "levelGplus"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 276
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 277
    return-void
.end method

.method public static g()V
    .locals 5

    .prologue
    .line 163
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 164
    const-string v1, "playerCollectGift"

    .line 165
    sget-object v2, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    const-string v3, "playerCollectGift"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 164
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 166
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 167
    return-void
.end method

.method public static g(I)V
    .locals 2

    .prologue
    .line 534
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 535
    const-string v1, "lastLevelSize"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 536
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 537
    return-void
.end method

.method public static g(Z)V
    .locals 2

    .prologue
    .line 582
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 583
    const-string v1, "lastLevelAutoSolve"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 584
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 585
    return-void
.end method

.method public static h()I
    .locals 3

    .prologue
    .line 170
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    const-string v1, "playerTutorialStep"

    sget v2, Lcom/wordloco/wordchallenge/b/a;->A:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static h(I)V
    .locals 2

    .prologue
    .line 546
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 547
    const-string v1, "lastLevelDifficulty"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 548
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 549
    return-void
.end method

.method public static i(I)V
    .locals 2

    .prologue
    .line 558
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 559
    const-string v1, "lastLevelWordNumber"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 560
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 561
    return-void
.end method

.method public static i()Z
    .locals 9

    .prologue
    const/4 v0, 0x1

    .line 190
    sget-object v1, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    const-string v2, "appShowRate"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->A()I

    move-result v1

    int-to-double v1, v1

    sget v3, Lcom/wordloco/wordchallenge/b/a;->r:I

    int-to-double v3, v3

    .line 192
    sget-object v5, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    const-string v6, "appShowRateTry"

    invoke-interface {v5, v6, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    int-to-double v5, v5

    .line 193
    sget-wide v7, Lcom/wordloco/wordchallenge/b/a;->s:D

    .line 192
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v3, v5

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_0

    .line 197
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static j(I)V
    .locals 2

    .prologue
    .line 570
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 571
    const-string v1, "lastLevelSecondsSolve"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 572
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 573
    return-void
.end method

.method public static j()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 201
    sget-object v1, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    const-string v2, "appShowRate"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    sget-object v1, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    const-string v2, "appShowRateTry"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-le v1, v0, :cond_1

    .line 205
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static k()V
    .locals 5

    .prologue
    .line 209
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 210
    const-string v1, "appShowRateTry"

    sget-object v2, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    const-string v3, "appShowRateTry"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 211
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 212
    return-void
.end method

.method public static k(I)V
    .locals 2

    .prologue
    .line 594
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 595
    const-string v1, "lastLevelHelpsUsed"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 596
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 597
    return-void
.end method

.method public static l(I)V
    .locals 2

    .prologue
    .line 604
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 605
    const-string v1, "lastLevelHintShowed"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 606
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 607
    return-void
.end method

.method public static l()Z
    .locals 3

    .prologue
    .line 231
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    const-string v1, "playerGPlusLocked"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static m()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 241
    sget-boolean v1, Lcom/wordloco/wordchallenge/b/a;->t:Z

    if-eqz v1, :cond_0

    .line 242
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy/MM/dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 243
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 244
    sget-object v3, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    const-string v4, "playerDailyGift"

    const-string v5, "-1"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 245
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 245
    if-eqz v1, :cond_1

    .line 247
    :cond_0
    :goto_0
    return v0

    .line 244
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static n()V
    .locals 4

    .prologue
    .line 252
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 253
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 254
    sget-object v2, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 255
    const-string v3, "playerDailyGift"

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 256
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 257
    return-void
.end method

.method public static o()I
    .locals 3

    .prologue
    .line 260
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    const-string v1, "appLaunchCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static p()V
    .locals 3

    .prologue
    .line 264
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 265
    const-string v1, "appLaunchCount"

    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->o()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 266
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 267
    return-void
.end method

.method public static q()Z
    .locals 3

    .prologue
    .line 270
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    const-string v1, "levelGplus"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static r()I
    .locals 3

    .prologue
    .line 298
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    const-string v1, "playerCoins"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static s()I
    .locals 3

    .prologue
    .line 310
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    const-string v1, "playerCurrentRound"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static t()V
    .locals 3

    .prologue
    .line 314
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 315
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->s()I

    move-result v1

    sget v2, Lcom/wordloco/wordchallenge/b/a;->h:I

    if-ne v1, v2, :cond_0

    .line 316
    const-string v1, "playerCurrentRound"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 321
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 322
    return-void

    .line 318
    :cond_0
    const-string v1, "playerCurrentRound"

    .line 319
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->s()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 318
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public static u()I
    .locals 3

    .prologue
    .line 325
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->q()Z

    move-result v0

    if-nez v0, :cond_1

    .line 326
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->s()I

    move-result v0

    if-nez v0, :cond_0

    .line 327
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    const-string v1, "playerCurrentChallenge"

    .line 328
    sget v2, Lcom/wordloco/wordchallenge/b/a;->i:I

    .line 327
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 334
    :goto_0
    return v0

    .line 330
    :cond_0
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    const-string v1, "playerCurrentLevel"

    .line 331
    sget v2, Lcom/wordloco/wordchallenge/b/a;->k:I

    .line 330
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 334
    :cond_1
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    const-string v1, "playerCurrentGplus"

    .line 335
    sget v2, Lcom/wordloco/wordchallenge/b/a;->m:I

    .line 334
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static v()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 345
    const/4 v1, -0x1

    .line 346
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->s()I

    move-result v0

    if-nez v0, :cond_2

    .line 347
    sget v0, Lcom/wordloco/wordchallenge/b/a;->i:I

    :goto_0
    sget v2, Lcom/wordloco/wordchallenge/b/a;->j:I

    if-le v0, v2, :cond_1

    move v0, v1

    .line 361
    :cond_0
    :goto_1
    return v0

    .line 348
    :cond_1
    sget-object v2, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "playerSkipLevel_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 347
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 354
    :cond_2
    sget v0, Lcom/wordloco/wordchallenge/b/a;->k:I

    :goto_2
    sget v2, Lcom/wordloco/wordchallenge/b/a;->l:I

    if-le v0, v2, :cond_3

    move v0, v1

    goto :goto_1

    .line 355
    :cond_3
    sget-object v2, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "playerSkipLevel_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 354
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static w()I
    .locals 3

    .prologue
    .line 365
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    const-string v1, "playerGameLevel"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static x()V
    .locals 3

    .prologue
    .line 369
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 370
    const-string v1, "playerGameLevel"

    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->w()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 371
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 372
    return-void
.end method

.method public static y()Ljava/lang/String;
    .locals 3

    .prologue
    .line 375
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    const-string v1, "appLanguague"

    const-string v2, "none"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static z()I
    .locals 3

    .prologue
    .line 406
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 408
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->q()Z

    move-result v0

    if-nez v0, :cond_1

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "playerSkipLevel_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->u()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 409
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 411
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->s()I

    move-result v0

    if-nez v0, :cond_0

    .line 412
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 413
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->x()V

    .line 414
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->D()I

    move-result v0

    .line 415
    const-string v2, "playerCurrentChallenge"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 420
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 421
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->t()V

    .line 427
    :goto_1
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->B()V

    .line 428
    return v0

    .line 417
    :cond_0
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->E()I

    move-result v0

    .line 418
    const-string v2, "playerCurrentLevel"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 423
    :cond_1
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->C()I

    move-result v0

    .line 424
    const-string v2, "playerCurrentGplus"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 425
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1
.end method
