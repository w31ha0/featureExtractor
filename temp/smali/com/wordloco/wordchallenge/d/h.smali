.class public Lcom/wordloco/wordchallenge/d/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()V
    .locals 3

    .prologue
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->F()I

    move-result v1

    sget-object v2, Lcom/wordloco/wordchallenge/b/a;->b:[Lcom/wordloco/wordchallenge/b/b;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 15
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->A()I

    move-result v1

    sget v2, Lcom/wordloco/wordchallenge/b/a;->a:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 16
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->A()I

    move-result v1

    sget v2, Lcom/wordloco/wordchallenge/b/a;->a:I

    div-int/2addr v1, v2

    .line 17
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->F()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 18
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->G()V

    .line 19
    const/4 v0, 0x1

    .line 25
    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Lcom/wordloco/wordchallenge/d/h;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->A()I

    move-result v0

    sget-object v1, Lcom/wordloco/wordchallenge/b/a;->e:[I

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 27
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->G()V

    .line 32
    :cond_1
    return-void
.end method

.method public static b()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 36
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->u()I

    move-result v0

    sget v3, Lcom/wordloco/wordchallenge/b/a;->i:I

    if-lt v0, v3, :cond_1

    .line 39
    sget-object v0, Lcom/wordloco/wordchallenge/b/a;->b:[Lcom/wordloco/wordchallenge/b/b;

    .line 40
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->H()I

    move-result v2

    .line 39
    aget-object v0, v0, v2

    .line 40
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/b/b;->b()I

    move-result v0

    .line 39
    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/i;->f(I)V

    .line 42
    sget-object v0, Lcom/wordloco/wordchallenge/b/a;->b:[Lcom/wordloco/wordchallenge/b/b;

    .line 43
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->H()I

    move-result v2

    .line 42
    aget-object v0, v0, v2

    .line 43
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/b/b;->a()I

    move-result v0

    .line 42
    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/i;->e(I)V

    .line 45
    invoke-static {v1}, Lcom/wordloco/wordchallenge/d/i;->d(I)V

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    sget-object v0, Lcom/wordloco/wordchallenge/b/a;->c:[I

    .line 53
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->F()I

    move-result v3

    .line 52
    aget v0, v0, v3

    .line 55
    invoke-static {}, Lcom/wordloco/wordchallenge/d/h;->d()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->F()I

    move-result v3

    if-le v3, v2, :cond_2

    .line 70
    :cond_2
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->O()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 71
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->F()I

    move-result v3

    if-le v3, v2, :cond_3

    .line 77
    :cond_3
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->P()I

    move-result v3

    if-lez v3, :cond_4

    .line 78
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->F()I

    move-result v3

    if-le v3, v2, :cond_4

    .line 84
    :cond_4
    sget-object v3, Lcom/wordloco/wordchallenge/b/a;->d:[I

    aget v0, v3, v0

    .line 85
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 86
    invoke-virtual {v3, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    move v0, v1

    .line 89
    :goto_1
    if-nez v2, :cond_5

    .line 99
    sget-object v1, Lcom/wordloco/wordchallenge/b/a;->b:[Lcom/wordloco/wordchallenge/b/b;

    aget-object v1, v1, v0

    .line 100
    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/b/b;->b()I

    move-result v1

    .line 99
    invoke-static {v1}, Lcom/wordloco/wordchallenge/d/i;->f(I)V

    .line 102
    sget-object v1, Lcom/wordloco/wordchallenge/b/a;->b:[Lcom/wordloco/wordchallenge/b/b;

    aget-object v1, v1, v0

    .line 103
    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/b/b;->a()I

    move-result v1

    .line 102
    invoke-static {v1}, Lcom/wordloco/wordchallenge/d/i;->e(I)V

    .line 105
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->H()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 106
    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/i;->d(I)V

    goto :goto_0

    .line 90
    :cond_5
    sget-object v4, Lcom/wordloco/wordchallenge/b/a;->d:[I

    aget v4, v4, v0

    if-gt v3, v4, :cond_6

    move v2, v1

    .line 93
    goto :goto_1

    .line 94
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static c()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 119
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->N()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    move v0, v2

    .line 139
    :goto_0
    return v0

    .line 122
    :cond_0
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->L()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 134
    :goto_1
    :pswitch_0
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->N()I

    move-result v3

    int-to-double v3, v3

    .line 135
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->K()I

    move-result v5

    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->M()I

    move-result v6

    .line 134
    mul-int/2addr v5, v6

    int-to-double v5, v5

    mul-double/2addr v0, v5

    .line 135
    const-wide v5, 0x3fee666666666666L    # 0.95

    .line 134
    mul-double/2addr v0, v5

    cmpg-double v0, v3, v0

    if-gez v0, :cond_1

    .line 136
    const/4 v0, 0x1

    goto :goto_0

    .line 127
    :pswitch_1
    const-wide/high16 v0, 0x3ff4000000000000L    # 1.25

    .line 128
    goto :goto_1

    .line 130
    :pswitch_2
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    goto :goto_1

    :cond_1
    move v0, v2

    .line 139
    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static d()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 146
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->N()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    move v0, v2

    .line 166
    :goto_0
    return v0

    .line 149
    :cond_0
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->L()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 161
    :goto_1
    :pswitch_0
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->N()I

    move-result v3

    int-to-double v3, v3

    .line 162
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->K()I

    move-result v5

    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->M()I

    move-result v6

    .line 161
    mul-int/2addr v5, v6

    int-to-double v5, v5

    mul-double/2addr v0, v5

    .line 162
    const-wide v5, 0x3ff3333333333333L    # 1.2

    .line 161
    mul-double/2addr v0, v5

    cmpl-double v0, v3, v0

    if-lez v0, :cond_1

    .line 163
    const/4 v0, 0x1

    goto :goto_0

    .line 154
    :pswitch_1
    const-wide/high16 v0, 0x3ff4000000000000L    # 1.25

    .line 155
    goto :goto_1

    .line 157
    :pswitch_2
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    goto :goto_1

    :cond_1
    move v0, v2

    .line 166
    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
