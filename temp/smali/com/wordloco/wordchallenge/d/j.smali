.class public abstract Lcom/wordloco/wordchallenge/d/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Landroid/content/SharedPreferences;


# direct methods
.method public static a(Lcom/wordloco/wordchallenge/c/d;)Lcom/wordloco/wordchallenge/c/c;
    .locals 3

    .prologue
    .line 46
    new-instance v0, Lcom/wordloco/wordchallenge/c/c;

    invoke-direct {v0}, Lcom/wordloco/wordchallenge/c/c;-><init>()V

    .line 47
    invoke-static {}, Lcom/wordloco/wordchallenge/d/j;->b()Lcom/wordloco/wordchallenge/c/h;

    move-result-object v1

    .line 48
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/c/d;->f()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/wordloco/wordchallenge/c/c;->c(I)V

    .line 49
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/c/d;->g()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/wordloco/wordchallenge/c/c;->d(I)V

    .line 50
    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/h;->b()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wordloco/wordchallenge/c/c;->a([Ljava/lang/String;)V

    .line 51
    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/h;->h()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/wordloco/wordchallenge/c/c;->a(I)V

    .line 52
    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/h;->d()[[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wordloco/wordchallenge/c/c;->a([[Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/c/c;->a(Lcom/wordloco/wordchallenge/c/h;)V

    .line 54
    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/h;->i()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/wordloco/wordchallenge/c/c;->b(I)V

    .line 55
    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/h;->g()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/c/c;->a(Ljava/util/ArrayList;)V

    .line 56
    return-object v0
.end method

.method public static a()Lcom/wordloco/wordchallenge/c/g;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 24
    new-instance v0, Lcom/wordloco/wordchallenge/c/g;

    invoke-direct {v0}, Lcom/wordloco/wordchallenge/c/g;-><init>()V

    .line 25
    sget-object v1, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    const-string v2, "save_actualColor"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/c/g;->a(I)V

    .line 26
    sget-object v1, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    const-string v2, "save_pausedTotalTime"

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/wordloco/wordchallenge/c/g;->e(J)V

    .line 27
    sget-object v1, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    const-string v2, "save_pauseTime"

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/wordloco/wordchallenge/c/g;->d(J)V

    .line 28
    sget-object v1, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    const-string v2, "save_resumeTime"

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/wordloco/wordchallenge/c/g;->c(J)V

    .line 29
    sget-object v1, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    const-string v2, "save_startTime"

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/wordloco/wordchallenge/c/g;->a(J)V

    .line 30
    sget-object v1, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    const-string v2, "save_updatedTime"

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/wordloco/wordchallenge/c/g;->b(J)V

    .line 31
    return-object v0
.end method

.method public static a(I)Lcom/wordloco/wordchallenge/c/j;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 99
    new-instance v0, Lcom/wordloco/wordchallenge/c/j;

    invoke-direct {v0}, Lcom/wordloco/wordchallenge/c/j;-><init>()V

    .line 100
    sget-object v1, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "save_word_minLenght_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/c/j;->g(I)V

    .line 101
    sget-object v1, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "save_word_maxLenght_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/c/j;->h(I)V

    .line 102
    sget-object v1, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "save_word_value_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/c/j;->a(Ljava/lang/String;)V

    .line 103
    sget-object v1, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "save_word_crossed_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/c/j;->a(Z)V

    .line 104
    sget-object v1, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "save_word_line_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/c/j;->i(I)V

    .line 105
    sget-object v1, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "save_word_posInitialX_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/c/j;->c(I)V

    .line 106
    sget-object v1, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "save_word_posInitialY_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/c/j;->d(I)V

    .line 107
    sget-object v1, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "save_word_posFinalX_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/c/j;->e(I)V

    .line 108
    sget-object v1, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "save_word_posFinalY_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/c/j;->f(I)V

    .line 109
    sget-object v1, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "save_word_colorUsed_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/c/j;->b(I)V

    .line 110
    sget-object v1, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "save_word_direction_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/c/j;->a(I)V

    .line 111
    return-object v0
.end method

.method public static a(ILcom/wordloco/wordchallenge/c/j;)V
    .locals 3

    .prologue
    .line 170
    sget-object v0, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "save_word_minLenght_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/j;->i()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "save_word_maxLenght_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/j;->j()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "save_word_value_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "save_word_crossed_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/j;->l()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "save_word_line_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/j;->m()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "save_word_posInitialX_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/j;->e()I

    move-result v2

    .line 176
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "save_word_posInitialY_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/j;->f()I

    move-result v2

    .line 178
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "save_word_posFinalX_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/j;->g()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "save_word_posFinalY_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/j;->h()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "save_word_colorUsed_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/j;->d()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "save_word_direction_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/j;->c()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 184
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 185
    return-void
.end method

.method public static a(Lcom/wordloco/wordchallenge/c/g;)V
    .locals 4

    .prologue
    .line 35
    sget-object v0, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 36
    const-string v1, "save_actualColor"

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/c/g;->a()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 37
    const-string v1, "save_startTime"

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/c/g;->b()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 38
    const-string v1, "save_updatedTime"

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/c/g;->c()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 39
    const-string v1, "save_resumeTime"

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/c/g;->d()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 40
    const-string v1, "save_pauseTime"

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/c/g;->e()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 41
    const-string v1, "save_pausedTotalTime"

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/c/g;->f()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 42
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 43
    return-void
.end method

.method public static a(Lcom/wordloco/wordchallenge/c/h;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 128
    sget-object v0, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 129
    const-string v0, "save_puzzle_maxX"

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/c/h;->h()I

    move-result v2

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 130
    const-string v0, "save_puzzle_maxY"

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/c/h;->i()I

    move-result v2

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 131
    const-string v0, "save_puzzle_difficulty"

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/c/h;->j()I

    move-result v2

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 132
    const-string v0, "save_puzzle_actualX"

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/c/h;->k()I

    move-result v2

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 133
    const-string v0, "save_puzzle_actualY"

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/c/h;->l()I

    move-result v2

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 134
    const-string v0, "save_puzzle_actualDirection"

    .line 135
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/c/h;->m()I

    move-result v2

    .line 134
    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 136
    const-string v2, ""

    move v3, v1

    .line 137
    :goto_0
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/c/h;->h()I

    move-result v0

    if-lt v3, v0, :cond_0

    .line 142
    const-string v0, "save_puzzle_grid"

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 144
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/c/h;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v1

    .line 146
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 152
    const-string v0, "save_puzzle_words_size"

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 154
    const-string v0, "save_puzzle_grid"

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 156
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/c/h;->n()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 158
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 164
    const-string v0, "save_puzzle_blanks_size"

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 166
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 167
    return-void

    :cond_0
    move v0, v1

    .line 138
    :goto_3
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/c/h;->i()I

    move-result v5

    if-lt v0, v5, :cond_1

    .line 137
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 139
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/c/h;->d()[[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v3

    aget-object v2, v2, v0

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 147
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wordloco/wordchallenge/c/j;

    .line 148
    invoke-static {v3, v0}, Lcom/wordloco/wordchallenge/d/j;->a(ILcom/wordloco/wordchallenge/c/j;)V

    .line 149
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 159
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "save_puzzle_blanks_"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static a(Lcom/wordloco/wordchallenge/view/Game;)V
    .locals 3

    .prologue
    .line 212
    sget-object v0, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 213
    const-string v1, "saveIsSaved"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 214
    const-string v1, "saveGame_level_id"

    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/Game;->c:Lcom/wordloco/wordchallenge/b/d;

    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/b/d;->b()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 215
    const-string v1, "saveGame_level_size"

    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/Game;->c:Lcom/wordloco/wordchallenge/b/d;

    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/b/d;->c()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 216
    const-string v1, "saveGame_level_complexity"

    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/Game;->c:Lcom/wordloco/wordchallenge/b/d;

    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/b/d;->d()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 217
    const-string v1, "saveGame_level_difficulty"

    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/Game;->c:Lcom/wordloco/wordchallenge/b/d;

    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/b/d;->e()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 218
    const-string v1, "saveGame_level_wordNumber"

    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/Game;->c:Lcom/wordloco/wordchallenge/b/d;

    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/b/d;->f()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 219
    const-string v1, "saveGame_level_secondsSolve"

    .line 220
    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/Game;->c:Lcom/wordloco/wordchallenge/b/d;

    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/b/d;->g()I

    move-result v2

    .line 219
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 221
    const-string v1, "saveGame_level_helpUsed"

    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/Game;->c:Lcom/wordloco/wordchallenge/b/d;

    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/b/d;->i()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 222
    const-string v1, "saveGame_level_isAutoSolve"

    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/Game;->c:Lcom/wordloco/wordchallenge/b/d;

    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/b/d;->h()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 224
    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/c;->a()Lcom/wordloco/wordchallenge/c/h;

    move-result-object v1

    invoke-static {v1}, Lcom/wordloco/wordchallenge/d/j;->a(Lcom/wordloco/wordchallenge/c/h;)V

    .line 225
    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->u:Lcom/wordloco/wordchallenge/c/d;

    invoke-static {v1}, Lcom/wordloco/wordchallenge/d/j;->b(Lcom/wordloco/wordchallenge/c/d;)V

    .line 226
    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->v:Lcom/wordloco/wordchallenge/c/g;

    invoke-static {v1}, Lcom/wordloco/wordchallenge/d/j;->a(Lcom/wordloco/wordchallenge/c/g;)V

    .line 228
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 229
    return-void
.end method

.method public static b()Lcom/wordloco/wordchallenge/c/h;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 60
    new-instance v6, Lcom/wordloco/wordchallenge/c/h;

    invoke-direct {v6}, Lcom/wordloco/wordchallenge/c/h;-><init>()V

    .line 61
    sget-object v0, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "save_puzzle_maxX"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/wordloco/wordchallenge/c/h;->b(I)V

    .line 62
    sget-object v0, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "save_puzzle_maxY"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/wordloco/wordchallenge/c/h;->c(I)V

    .line 63
    sget-object v0, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "save_puzzle_difficulty"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/wordloco/wordchallenge/c/h;->d(I)V

    .line 64
    sget-object v0, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "save_puzzle_actualX"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/wordloco/wordchallenge/c/h;->e(I)V

    .line 65
    sget-object v0, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "save_puzzle_actualY"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/wordloco/wordchallenge/c/h;->f(I)V

    .line 66
    sget-object v0, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "save_puzzle_actualDirection"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/wordloco/wordchallenge/c/h;->g(I)V

    .line 67
    invoke-virtual {v6}, Lcom/wordloco/wordchallenge/c/h;->h()I

    move-result v0

    invoke-virtual {v6}, Lcom/wordloco/wordchallenge/c/h;->i()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    .line 68
    sget-object v1, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    const-string v3, "save_puzzle_grid"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    move v1, v2

    .line 69
    :goto_0
    invoke-virtual {v6}, Lcom/wordloco/wordchallenge/c/h;->h()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 75
    invoke-virtual {v6, v0}, Lcom/wordloco/wordchallenge/c/h;->a([[Ljava/lang/String;)V

    .line 77
    sget-object v0, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "save_puzzle_grid"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-virtual {v6}, Lcom/wordloco/wordchallenge/c/h;->h()I

    move-result v1

    invoke-virtual {v6}, Lcom/wordloco/wordchallenge/c/h;->i()I

    move-result v3

    mul-int/2addr v1, v3

    new-array v3, v1, [Ljava/lang/String;

    move-object v1, v0

    move v0, v2

    .line 79
    :goto_1
    invoke-virtual {v6}, Lcom/wordloco/wordchallenge/c/h;->h()I

    move-result v4

    invoke-virtual {v6}, Lcom/wordloco/wordchallenge/c/h;->i()I

    move-result v5

    mul-int/2addr v4, v5

    if-lt v0, v4, :cond_2

    .line 83
    invoke-virtual {v6, v3}, Lcom/wordloco/wordchallenge/c/h;->a([Ljava/lang/String;)V

    move v0, v2

    .line 85
    :goto_2
    sget-object v1, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    const-string v3, "save_puzzle_words_size"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-le v0, v1, :cond_3

    move v0, v2

    .line 90
    :goto_3
    sget-object v1, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    const-string v3, "save_puzzle_blanks_size"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-le v0, v1, :cond_4

    .line 95
    return-object v6

    :cond_0
    move v4, v2

    .line 70
    :goto_4
    invoke-virtual {v6}, Lcom/wordloco/wordchallenge/c/h;->i()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :cond_1
    aget-object v5, v0, v1

    invoke-virtual {v3, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v4

    .line 72
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 70
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-object v3, v5

    goto :goto_4

    .line 80
    :cond_2
    invoke-virtual {v1, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 81
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 86
    :cond_3
    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/j;->a(I)Lcom/wordloco/wordchallenge/c/j;

    move-result-object v1

    .line 87
    invoke-virtual {v6}, Lcom/wordloco/wordchallenge/c/h;->g()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 91
    :cond_4
    sget-object v1, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "save_puzzle_blanks_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 92
    invoke-virtual {v6}, Lcom/wordloco/wordchallenge/c/h;->n()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public static b(Lcom/wordloco/wordchallenge/c/d;)V
    .locals 3

    .prologue
    .line 188
    sget-object v0, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 189
    const-string v1, "save_gameStatus_isRunning"

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/c/d;->a()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 190
    const-string v1, "save_gameStatus_wordNumber"

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/c/d;->b()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 191
    const-string v1, "save_gameStatus_time"

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/c/d;->c()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 192
    const-string v1, "save_gameStatus_h"

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/c/d;->d()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 193
    const-string v1, "save_gameStatus_w"

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/c/d;->e()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 194
    const-string v1, "save_gameStatus_complexity"

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/c/d;->f()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 195
    const-string v1, "save_gameStatus_difficulty"

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/c/d;->g()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 196
    const-string v1, "save_gameStatus_timeLastWord"

    .line 197
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/c/d;->h()I

    move-result v2

    .line 196
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 198
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 199
    return-void
.end method

.method public static b(Lcom/wordloco/wordchallenge/view/Game;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 232
    new-instance v0, Lcom/wordloco/wordchallenge/b/d;

    invoke-direct {v0}, Lcom/wordloco/wordchallenge/b/d;-><init>()V

    iput-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->c:Lcom/wordloco/wordchallenge/b/d;

    .line 233
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->c:Lcom/wordloco/wordchallenge/b/d;

    sget-object v1, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    const-string v2, "saveGame_level_id"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/b/d;->a(I)V

    .line 234
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->c:Lcom/wordloco/wordchallenge/b/d;

    sget-object v1, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    const-string v2, "saveGame_level_size"

    const/4 v3, 0x5

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/b/d;->b(I)V

    .line 235
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->c:Lcom/wordloco/wordchallenge/b/d;

    sget-object v1, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    const-string v2, "saveGame_level_complexity"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/b/d;->c(I)V

    .line 236
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->c:Lcom/wordloco/wordchallenge/b/d;

    sget-object v1, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    const-string v2, "saveGame_level_difficulty"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/b/d;->d(I)V

    .line 237
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->c:Lcom/wordloco/wordchallenge/b/d;

    sget-object v1, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    const-string v2, "saveGame_level_wordNumber"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/b/d;->e(I)V

    .line 238
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->c:Lcom/wordloco/wordchallenge/b/d;

    sget-object v1, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    const-string v2, "saveGame_level_secondsSolve"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/b/d;->f(I)V

    .line 240
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->c:Lcom/wordloco/wordchallenge/b/d;

    sget-object v1, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    const-string v2, "saveGame_level_helpUsed"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/b/d;->g(I)V

    .line 241
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->c:Lcom/wordloco/wordchallenge/b/d;

    sget-object v1, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    const-string v2, "saveGame_level_isAutoSolve"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/b/d;->a(Z)V

    .line 244
    invoke-static {}, Lcom/wordloco/wordchallenge/d/j;->c()Lcom/wordloco/wordchallenge/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->u:Lcom/wordloco/wordchallenge/c/d;

    .line 245
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->u:Lcom/wordloco/wordchallenge/c/d;

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/j;->a(Lcom/wordloco/wordchallenge/c/d;)Lcom/wordloco/wordchallenge/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    .line 246
    invoke-static {}, Lcom/wordloco/wordchallenge/d/j;->a()Lcom/wordloco/wordchallenge/c/g;

    move-result-object v0

    iput-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->v:Lcom/wordloco/wordchallenge/c/g;

    .line 248
    return-void
.end method

.method public static c()Lcom/wordloco/wordchallenge/c/d;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 115
    new-instance v0, Lcom/wordloco/wordchallenge/c/d;

    invoke-direct {v0}, Lcom/wordloco/wordchallenge/c/d;-><init>()V

    .line 116
    sget-object v1, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    const-string v2, "save_gameStatus_isRunning"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/c/d;->a(Z)V

    .line 117
    invoke-virtual {v0, v3}, Lcom/wordloco/wordchallenge/c/d;->a(I)V

    .line 118
    sget-object v1, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    const-string v2, "save_gameStatus_time"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/c/d;->b(I)V

    .line 119
    sget-object v1, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    const-string v2, "save_gameStatus_h"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/c/d;->c(I)V

    .line 120
    sget-object v1, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    const-string v2, "save_gameStatus_w"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/c/d;->d(I)V

    .line 121
    sget-object v1, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    const-string v2, "save_gameStatus_complexity"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/c/d;->e(I)V

    .line 122
    sget-object v1, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    const-string v2, "save_gameStatus_difficulty"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/c/d;->f(I)V

    .line 123
    sget-object v1, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    const-string v2, "save_gameStatus_timeLastWord"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/c/d;->g(I)V

    .line 124
    return-object v0
.end method

.method public static d()V
    .locals 3

    .prologue
    .line 202
    sget-object v0, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 203
    const-string v1, "saveIsSaved"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 204
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 205
    return-void
.end method

.method public static e()Z
    .locals 3

    .prologue
    .line 208
    sget-object v0, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "saveIsSaved"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
