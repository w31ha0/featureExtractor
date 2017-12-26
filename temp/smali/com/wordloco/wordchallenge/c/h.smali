.class public Lcom/wordloco/wordchallenge/c/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:[[Ljava/lang/String;

.field private h:[Ljava/lang/String;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wordloco/wordchallenge/c/j;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v0, p0, Lcom/wordloco/wordchallenge/c/h;->d:I

    .line 18
    iput v0, p0, Lcom/wordloco/wordchallenge/c/h;->e:I

    .line 19
    iput v0, p0, Lcom/wordloco/wordchallenge/c/h;->f:I

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wordloco/wordchallenge/c/h;->i:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wordloco/wordchallenge/c/h;->j:Ljava/util/ArrayList;

    .line 27
    return-void
.end method

.method public constructor <init>(IIILandroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v1, p0, Lcom/wordloco/wordchallenge/c/h;->d:I

    .line 18
    iput v1, p0, Lcom/wordloco/wordchallenge/c/h;->e:I

    .line 19
    iput v1, p0, Lcom/wordloco/wordchallenge/c/h;->f:I

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wordloco/wordchallenge/c/h;->i:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wordloco/wordchallenge/c/h;->j:Ljava/util/ArrayList;

    .line 207
    iput p1, p0, Lcom/wordloco/wordchallenge/c/h;->a:I

    .line 208
    iput p2, p0, Lcom/wordloco/wordchallenge/c/h;->b:I

    .line 209
    iput p3, p0, Lcom/wordloco/wordchallenge/c/h;->c:I

    .line 210
    iget v0, p0, Lcom/wordloco/wordchallenge/c/h;->b:I

    iget v2, p0, Lcom/wordloco/wordchallenge/c/h;->a:I

    filled-new-array {v0, v2}, [I

    move-result-object v0

    const-class v2, Ljava/lang/String;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/wordloco/wordchallenge/c/h;->g:[[Ljava/lang/String;

    .line 211
    iget v0, p0, Lcom/wordloco/wordchallenge/c/h;->a:I

    iget v2, p0, Lcom/wordloco/wordchallenge/c/h;->b:I

    mul-int/2addr v0, v2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/wordloco/wordchallenge/c/h;->h:[Ljava/lang/String;

    .line 212
    new-instance v2, Lcom/wordloco/wordchallenge/d/c;

    invoke-direct {v2, p4}, Lcom/wordloco/wordchallenge/d/c;-><init>(Landroid/content/Context;)V

    move v0, v1

    .line 213
    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x5

    if-le v1, v0, :cond_1

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/c/h;->f()V

    .line 219
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/c/h;->c()V

    .line 223
    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/d/c;->a()V

    .line 225
    return-void

    .line 214
    :cond_1
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/c/h;->e()V

    .line 215
    invoke-virtual {p0, v2}, Lcom/wordloco/wordchallenge/c/h;->a(Lcom/wordloco/wordchallenge/d/c;)Z

    move-result v0

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/wordloco/wordchallenge/c/j;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/wordloco/wordchallenge/c/h;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    .line 32
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 38
    if-lez v1, :cond_4

    .line 39
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 43
    iget-object v0, p0, Lcom/wordloco/wordchallenge/c/h;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 44
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 45
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wordloco/wordchallenge/c/j;

    .line 46
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->l()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NO_DATA_FOUND"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 47
    if-ne v2, v1, :cond_3

    .line 48
    new-instance v1, Lcom/wordloco/wordchallenge/c/j;

    invoke-direct {v1, v0}, Lcom/wordloco/wordchallenge/c/j;-><init>(Lcom/wordloco/wordchallenge/c/j;)V

    move-object v0, v1

    .line 54
    :goto_2
    return-object v0

    .line 33
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wordloco/wordchallenge/c/j;

    .line 34
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->l()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v0

    const-string v4, "NO_DATA_FOUND"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 50
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 54
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public a(IIIIILjava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 89
    iget-object v0, p0, Lcom/wordloco/wordchallenge/c/h;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 90
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/wordloco/wordchallenge/c/h;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 104
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 127
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 91
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wordloco/wordchallenge/c/j;

    .line 92
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->e()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 93
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->f()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->g()I

    move-result v2

    if-ne v2, p3, :cond_0

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->h()I

    move-result v2

    if-ne v2, p4, :cond_0

    .line 95
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->l()Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    invoke-virtual {v0, v5}, Lcom/wordloco/wordchallenge/c/j;->a(Z)V

    .line 97
    invoke-virtual {v0, p5}, Lcom/wordloco/wordchallenge/c/j;->b(I)V

    .line 98
    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/c/h;->a(Lcom/wordloco/wordchallenge/c/j;)V

    .line 99
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 105
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wordloco/wordchallenge/c/j;

    .line 106
    new-instance v2, Lcom/wordloco/wordchallenge/c/j;

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/wordloco/wordchallenge/c/j;-><init>(II)V

    .line 107
    invoke-virtual {v2, p6}, Lcom/wordloco/wordchallenge/c/j;->a(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v2, p1}, Lcom/wordloco/wordchallenge/c/j;->c(I)V

    .line 109
    invoke-virtual {v2, p3}, Lcom/wordloco/wordchallenge/c/j;->e(I)V

    .line 110
    invoke-virtual {v2, p2}, Lcom/wordloco/wordchallenge/c/j;->d(I)V

    .line 111
    invoke-virtual {v2, p4}, Lcom/wordloco/wordchallenge/c/j;->f(I)V

    .line 112
    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/c/j;->n()V

    .line 113
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->l()Z

    move-result v3

    if-nez v3, :cond_1

    .line 114
    invoke-virtual {p0, v2}, Lcom/wordloco/wordchallenge/c/h;->c(Lcom/wordloco/wordchallenge/c/j;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 115
    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/c/j;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/c/j;->a(I)V

    .line 116
    invoke-virtual {v0, p1}, Lcom/wordloco/wordchallenge/c/j;->c(I)V

    .line 117
    invoke-virtual {v0, p3}, Lcom/wordloco/wordchallenge/c/j;->e(I)V

    .line 118
    invoke-virtual {v0, p2}, Lcom/wordloco/wordchallenge/c/j;->d(I)V

    .line 119
    invoke-virtual {v0, p4}, Lcom/wordloco/wordchallenge/c/j;->f(I)V

    .line 120
    invoke-virtual {v0, v5}, Lcom/wordloco/wordchallenge/c/j;->a(Z)V

    .line 121
    invoke-virtual {v0, p5}, Lcom/wordloco/wordchallenge/c/j;->b(I)V

    .line 122
    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/c/h;->a(Lcom/wordloco/wordchallenge/c/j;)V

    .line 123
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 618
    packed-switch p1, :pswitch_data_0

    .line 648
    :goto_0
    return-void

    .line 620
    :pswitch_0
    iget v0, p0, Lcom/wordloco/wordchallenge/c/h;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/wordloco/wordchallenge/c/h;->d:I

    goto :goto_0

    .line 623
    :pswitch_1
    iget v0, p0, Lcom/wordloco/wordchallenge/c/h;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/wordloco/wordchallenge/c/h;->d:I

    goto :goto_0

    .line 626
    :pswitch_2
    iget v0, p0, Lcom/wordloco/wordchallenge/c/h;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/wordloco/wordchallenge/c/h;->e:I

    goto :goto_0

    .line 629
    :pswitch_3
    iget v0, p0, Lcom/wordloco/wordchallenge/c/h;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/wordloco/wordchallenge/c/h;->e:I

    goto :goto_0

    .line 632
    :pswitch_4
    iget v0, p0, Lcom/wordloco/wordchallenge/c/h;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/wordloco/wordchallenge/c/h;->d:I

    .line 633
    iget v0, p0, Lcom/wordloco/wordchallenge/c/h;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/wordloco/wordchallenge/c/h;->e:I

    goto :goto_0

    .line 636
    :pswitch_5
    iget v0, p0, Lcom/wordloco/wordchallenge/c/h;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/wordloco/wordchallenge/c/h;->d:I

    .line 637
    iget v0, p0, Lcom/wordloco/wordchallenge/c/h;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/wordloco/wordchallenge/c/h;->e:I

    goto :goto_0

    .line 640
    :pswitch_6
    iget v0, p0, Lcom/wordloco/wordchallenge/c/h;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/wordloco/wordchallenge/c/h;->d:I

    .line 641
    iget v0, p0, Lcom/wordloco/wordchallenge/c/h;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/wordloco/wordchallenge/c/h;->e:I

    goto :goto_0

    .line 644
    :pswitch_7
    iget v0, p0, Lcom/wordloco/wordchallenge/c/h;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/wordloco/wordchallenge/c/h;->d:I

    .line 645
    iget v0, p0, Lcom/wordloco/wordchallenge/c/h;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/wordloco/wordchallenge/c/h;->e:I

    goto :goto_0

    .line 618
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_6
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public a(Lcom/wordloco/wordchallenge/c/j;)V
    .locals 5

    .prologue
    .line 131
    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/j;->e()I

    move-result v2

    .line 132
    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/j;->f()I

    move-result v1

    .line 133
    iget-object v0, p0, Lcom/wordloco/wordchallenge/c/h;->j:Ljava/util/ArrayList;

    iget v3, p0, Lcom/wordloco/wordchallenge/c/h;->a:I

    mul-int/2addr v3, v1

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 134
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_0

    .line 167
    return-void

    .line 135
    :cond_0
    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/j;->c()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 165
    :goto_1
    iget-object v3, p0, Lcom/wordloco/wordchallenge/c/h;->j:Ljava/util/ArrayList;

    iget v4, p0, Lcom/wordloco/wordchallenge/c/h;->a:I

    mul-int/2addr v4, v1

    add-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    .line 138
    goto :goto_1

    .line 140
    :pswitch_1
    add-int/lit8 v2, v2, -0x1

    .line 141
    goto :goto_1

    .line 143
    :pswitch_2
    add-int/lit8 v1, v1, 0x1

    .line 144
    goto :goto_1

    .line 146
    :pswitch_3
    add-int/lit8 v1, v1, -0x1

    .line 147
    goto :goto_1

    .line 149
    :pswitch_4
    add-int/lit8 v2, v2, 0x1

    .line 150
    add-int/lit8 v1, v1, 0x1

    .line 151
    goto :goto_1

    .line 153
    :pswitch_5
    add-int/lit8 v2, v2, -0x1

    .line 154
    add-int/lit8 v1, v1, 0x1

    .line 155
    goto :goto_1

    .line 157
    :pswitch_6
    add-int/lit8 v2, v2, 0x1

    .line 158
    add-int/lit8 v1, v1, -0x1

    .line 159
    goto :goto_1

    .line 161
    :pswitch_7
    add-int/lit8 v2, v2, -0x1

    .line 162
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_6
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public a(Lcom/wordloco/wordchallenge/c/j;Lcom/wordloco/wordchallenge/d/c;)V
    .locals 9

    .prologue
    .line 373
    const/4 v0, 0x4

    new-array v4, v0, [I

    fill-array-data v4, :array_0

    .line 374
    const/4 v2, 0x0

    .line 375
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    .line 376
    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/j;->j()I

    move-result v6

    .line 377
    const/4 v1, 0x0

    .line 378
    const/4 v0, 0x0

    move v3, v0

    move v0, v1

    .line 379
    :goto_0
    if-nez v0, :cond_0

    const/16 v1, 0xa

    if-lt v3, v1, :cond_2

    .line 490
    :cond_0
    const/16 v0, 0xa

    if-lt v3, v0, :cond_1

    .line 491
    const-string v0, "NO_DATA_FOUND"

    invoke-virtual {p1, v0}, Lcom/wordloco/wordchallenge/c/j;->a(Ljava/lang/String;)V

    .line 492
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/wordloco/wordchallenge/c/j;->c(I)V

    .line 493
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/wordloco/wordchallenge/c/j;->e(I)V

    .line 494
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/wordloco/wordchallenge/c/j;->d(I)V

    .line 495
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/wordloco/wordchallenge/c/j;->f(I)V

    .line 497
    :cond_1
    return-void

    .line 380
    :cond_2
    iget v1, p0, Lcom/wordloco/wordchallenge/c/h;->a:I

    invoke-virtual {v5, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p0, Lcom/wordloco/wordchallenge/c/h;->d:I

    .line 381
    iget v1, p0, Lcom/wordloco/wordchallenge/c/h;->b:I

    invoke-virtual {v5, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p0, Lcom/wordloco/wordchallenge/c/h;->e:I

    .line 382
    iget v1, p0, Lcom/wordloco/wordchallenge/c/h;->c:I

    packed-switch v1, :pswitch_data_0

    .line 390
    const/16 v1, 0x8

    invoke-virtual {v5, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p0, Lcom/wordloco/wordchallenge/c/h;->f:I

    .line 392
    :goto_1
    iget v1, p0, Lcom/wordloco/wordchallenge/c/h;->f:I

    const/4 v7, 0x0

    aget v7, v4, v7

    if-eq v1, v7, :cond_3

    .line 393
    iget v1, p0, Lcom/wordloco/wordchallenge/c/h;->f:I

    const/4 v7, 0x1

    aget v7, v4, v7

    if-eq v1, v7, :cond_3

    .line 394
    iget v1, p0, Lcom/wordloco/wordchallenge/c/h;->f:I

    const/4 v7, 0x2

    aget v7, v4, v7

    if-eq v1, v7, :cond_3

    .line 395
    iget v1, p0, Lcom/wordloco/wordchallenge/c/h;->f:I

    const/4 v7, 0x3

    aget v7, v4, v7

    if-eq v1, v7, :cond_3

    .line 398
    const/4 v1, 0x0

    .line 399
    iget v7, p0, Lcom/wordloco/wordchallenge/c/h;->f:I

    packed-switch v7, :pswitch_data_1

    .line 441
    :goto_2
    if-eqz v0, :cond_15

    .line 442
    invoke-virtual {p1, v1}, Lcom/wordloco/wordchallenge/c/j;->h(I)V

    .line 443
    invoke-virtual {p0, p1}, Lcom/wordloco/wordchallenge/c/h;->d(Lcom/wordloco/wordchallenge/c/j;)V

    .line 445
    invoke-virtual {p1, p2}, Lcom/wordloco/wordchallenge/c/j;->a(Lcom/wordloco/wordchallenge/d/c;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 446
    invoke-virtual {p0, p1}, Lcom/wordloco/wordchallenge/c/h;->b(Lcom/wordloco/wordchallenge/c/j;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 447
    iget v0, p0, Lcom/wordloco/wordchallenge/c/h;->d:I

    invoke-virtual {p1, v0}, Lcom/wordloco/wordchallenge/c/j;->c(I)V

    .line 448
    iget v0, p0, Lcom/wordloco/wordchallenge/c/h;->e:I

    invoke-virtual {p1, v0}, Lcom/wordloco/wordchallenge/c/j;->d(I)V

    .line 449
    iget v0, p0, Lcom/wordloco/wordchallenge/c/h;->f:I

    invoke-virtual {p1, v0}, Lcom/wordloco/wordchallenge/c/j;->a(I)V

    .line 450
    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/j;->b()V

    .line 451
    invoke-virtual {p0, p1}, Lcom/wordloco/wordchallenge/c/h;->c(Lcom/wordloco/wordchallenge/c/j;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 452
    const/4 v0, 0x0

    move v1, v2

    :goto_3
    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/j;->j()I

    move-result v2

    if-lt v0, v2, :cond_10

    .line 464
    const/4 v0, 0x1

    move v2, v1

    .line 465
    goto/16 :goto_0

    .line 384
    :pswitch_0
    const/4 v1, 0x4

    invoke-virtual {v5, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p0, Lcom/wordloco/wordchallenge/c/h;->f:I

    goto :goto_1

    .line 387
    :pswitch_1
    const/4 v1, 0x6

    invoke-virtual {v5, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p0, Lcom/wordloco/wordchallenge/c/h;->f:I

    goto :goto_1

    .line 396
    :cond_3
    const/16 v1, 0x8

    invoke-virtual {v5, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p0, Lcom/wordloco/wordchallenge/c/h;->f:I

    goto :goto_1

    .line 401
    :pswitch_2
    iget v0, p0, Lcom/wordloco/wordchallenge/c/h;->d:I

    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/j;->i()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/wordloco/wordchallenge/c/h;->a:I

    if-ge v0, v1, :cond_4

    const/4 v0, 0x1

    .line 402
    :goto_4
    iget v1, p0, Lcom/wordloco/wordchallenge/c/h;->a:I

    iget v7, p0, Lcom/wordloco/wordchallenge/c/h;->d:I

    sub-int/2addr v1, v7

    .line 403
    goto :goto_2

    .line 401
    :cond_4
    const/4 v0, 0x0

    goto :goto_4

    .line 405
    :pswitch_3
    iget v0, p0, Lcom/wordloco/wordchallenge/c/h;->d:I

    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/j;->i()I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_5

    const/4 v0, 0x1

    .line 406
    :goto_5
    iget v1, p0, Lcom/wordloco/wordchallenge/c/h;->d:I

    goto :goto_2

    .line 405
    :cond_5
    const/4 v0, 0x0

    goto :goto_5

    .line 409
    :pswitch_4
    iget v0, p0, Lcom/wordloco/wordchallenge/c/h;->e:I

    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/j;->i()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/wordloco/wordchallenge/c/h;->b:I

    if-ge v0, v1, :cond_6

    const/4 v0, 0x1

    .line 410
    :goto_6
    iget v1, p0, Lcom/wordloco/wordchallenge/c/h;->b:I

    iget v7, p0, Lcom/wordloco/wordchallenge/c/h;->e:I

    sub-int/2addr v1, v7

    .line 411
    goto/16 :goto_2

    .line 409
    :cond_6
    const/4 v0, 0x0

    goto :goto_6

    .line 413
    :pswitch_5
    iget v0, p0, Lcom/wordloco/wordchallenge/c/h;->e:I

    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/j;->i()I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_7

    const/4 v0, 0x1

    .line 414
    :goto_7
    iget v1, p0, Lcom/wordloco/wordchallenge/c/h;->e:I

    goto/16 :goto_2

    .line 413
    :cond_7
    const/4 v0, 0x0

    goto :goto_7

    .line 417
    :pswitch_6
    iget v0, p0, Lcom/wordloco/wordchallenge/c/h;->d:I

    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/j;->i()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/wordloco/wordchallenge/c/h;->a:I

    if-ge v0, v1, :cond_8

    .line 418
    iget v0, p0, Lcom/wordloco/wordchallenge/c/h;->e:I

    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/j;->i()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/wordloco/wordchallenge/c/h;->b:I

    .line 417
    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    .line 419
    :goto_8
    iget v1, p0, Lcom/wordloco/wordchallenge/c/h;->a:I

    iget v7, p0, Lcom/wordloco/wordchallenge/c/h;->d:I

    sub-int/2addr v1, v7

    iget v7, p0, Lcom/wordloco/wordchallenge/c/h;->b:I

    iget v8, p0, Lcom/wordloco/wordchallenge/c/h;->e:I

    sub-int/2addr v7, v8

    if-ge v1, v7, :cond_9

    iget v1, p0, Lcom/wordloco/wordchallenge/c/h;->a:I

    iget v7, p0, Lcom/wordloco/wordchallenge/c/h;->d:I

    sub-int/2addr v1, v7

    goto/16 :goto_2

    .line 417
    :cond_8
    const/4 v0, 0x0

    goto :goto_8

    .line 420
    :cond_9
    iget v1, p0, Lcom/wordloco/wordchallenge/c/h;->b:I

    iget v7, p0, Lcom/wordloco/wordchallenge/c/h;->e:I

    sub-int/2addr v1, v7

    goto/16 :goto_2

    .line 423
    :pswitch_7
    iget v0, p0, Lcom/wordloco/wordchallenge/c/h;->d:I

    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/j;->i()I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_a

    .line 424
    iget v0, p0, Lcom/wordloco/wordchallenge/c/h;->e:I

    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/j;->i()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/wordloco/wordchallenge/c/h;->b:I

    .line 423
    if-ge v0, v1, :cond_a

    const/4 v0, 0x1

    .line 425
    :goto_9
    iget v1, p0, Lcom/wordloco/wordchallenge/c/h;->d:I

    iget v7, p0, Lcom/wordloco/wordchallenge/c/h;->b:I

    iget v8, p0, Lcom/wordloco/wordchallenge/c/h;->e:I

    sub-int/2addr v7, v8

    if-ge v1, v7, :cond_b

    iget v1, p0, Lcom/wordloco/wordchallenge/c/h;->d:I

    goto/16 :goto_2

    .line 423
    :cond_a
    const/4 v0, 0x0

    goto :goto_9

    .line 426
    :cond_b
    iget v1, p0, Lcom/wordloco/wordchallenge/c/h;->b:I

    iget v7, p0, Lcom/wordloco/wordchallenge/c/h;->e:I

    sub-int/2addr v1, v7

    goto/16 :goto_2

    .line 429
    :pswitch_8
    iget v0, p0, Lcom/wordloco/wordchallenge/c/h;->d:I

    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/j;->i()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/wordloco/wordchallenge/c/h;->a:I

    if-ge v0, v1, :cond_c

    .line 430
    iget v0, p0, Lcom/wordloco/wordchallenge/c/h;->e:I

    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/j;->i()I

    move-result v1

    sub-int/2addr v0, v1

    .line 429
    if-lez v0, :cond_c

    const/4 v0, 0x1

    .line 431
    :goto_a
    iget v1, p0, Lcom/wordloco/wordchallenge/c/h;->a:I

    iget v7, p0, Lcom/wordloco/wordchallenge/c/h;->d:I

    sub-int/2addr v1, v7

    iget v7, p0, Lcom/wordloco/wordchallenge/c/h;->e:I

    if-ge v1, v7, :cond_d

    iget v1, p0, Lcom/wordloco/wordchallenge/c/h;->a:I

    iget v7, p0, Lcom/wordloco/wordchallenge/c/h;->d:I

    sub-int/2addr v1, v7

    goto/16 :goto_2

    .line 429
    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    .line 432
    :cond_d
    iget v1, p0, Lcom/wordloco/wordchallenge/c/h;->e:I

    goto/16 :goto_2

    .line 435
    :pswitch_9
    iget v0, p0, Lcom/wordloco/wordchallenge/c/h;->d:I

    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/j;->i()I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_e

    .line 436
    iget v0, p0, Lcom/wordloco/wordchallenge/c/h;->e:I

    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/j;->i()I

    move-result v1

    sub-int/2addr v0, v1

    .line 435
    if-lez v0, :cond_e

    const/4 v0, 0x1

    .line 437
    :goto_b
    iget v1, p0, Lcom/wordloco/wordchallenge/c/h;->d:I

    iget v7, p0, Lcom/wordloco/wordchallenge/c/h;->e:I

    if-ge v1, v7, :cond_f

    iget v1, p0, Lcom/wordloco/wordchallenge/c/h;->d:I

    goto/16 :goto_2

    .line 435
    :cond_e
    const/4 v0, 0x0

    goto :goto_b

    .line 437
    :cond_f
    iget v1, p0, Lcom/wordloco/wordchallenge/c/h;->e:I

    goto/16 :goto_2

    .line 453
    :cond_10
    iget-object v2, p0, Lcom/wordloco/wordchallenge/c/h;->g:[[Ljava/lang/String;

    iget v7, p0, Lcom/wordloco/wordchallenge/c/h;->e:I

    aget-object v2, v2, v7

    iget v7, p0, Lcom/wordloco/wordchallenge/c/h;->d:I

    .line 454
    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 453
    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v7

    .line 455
    iget v2, p0, Lcom/wordloco/wordchallenge/c/h;->d:I

    invoke-virtual {p1, v2}, Lcom/wordloco/wordchallenge/c/j;->e(I)V

    .line 456
    iget v2, p0, Lcom/wordloco/wordchallenge/c/h;->e:I

    invoke-virtual {p1, v2}, Lcom/wordloco/wordchallenge/c/j;->f(I)V

    .line 457
    iget v2, p0, Lcom/wordloco/wordchallenge/c/h;->f:I

    invoke-virtual {p0, v2}, Lcom/wordloco/wordchallenge/c/h;->a(I)V

    .line 458
    iget v2, p0, Lcom/wordloco/wordchallenge/c/h;->f:I

    aput v2, v4, v1

    .line 459
    const/4 v2, 0x3

    if-ne v1, v2, :cond_11

    .line 460
    const/4 v1, 0x0

    .line 452
    :goto_c
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 462
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 466
    :cond_12
    const/4 v1, 0x0

    .line 467
    add-int/lit8 v0, v3, 0x1

    .line 468
    invoke-virtual {p1, v6}, Lcom/wordloco/wordchallenge/c/j;->h(I)V

    .line 469
    const-string v3, ""

    invoke-virtual {p1, v3}, Lcom/wordloco/wordchallenge/c/j;->a(Ljava/lang/String;)V

    move v3, v0

    move v0, v1

    .line 471
    goto/16 :goto_0

    .line 472
    :cond_13
    const/4 v1, 0x0

    .line 473
    add-int/lit8 v0, v3, 0x1

    .line 474
    invoke-virtual {p1, v6}, Lcom/wordloco/wordchallenge/c/j;->h(I)V

    .line 475
    const-string v3, ""

    invoke-virtual {p1, v3}, Lcom/wordloco/wordchallenge/c/j;->a(Ljava/lang/String;)V

    move v3, v0

    move v0, v1

    .line 477
    goto/16 :goto_0

    .line 478
    :cond_14
    const/4 v1, 0x0

    .line 479
    add-int/lit8 v0, v3, 0x1

    .line 480
    invoke-virtual {p1, v6}, Lcom/wordloco/wordchallenge/c/j;->h(I)V

    .line 481
    const-string v3, ""

    invoke-virtual {p1, v3}, Lcom/wordloco/wordchallenge/c/j;->a(Ljava/lang/String;)V

    move v3, v0

    move v0, v1

    .line 483
    goto/16 :goto_0

    .line 484
    :cond_15
    const/4 v1, 0x0

    .line 485
    add-int/lit8 v0, v3, 0x1

    .line 486
    invoke-virtual {p1, v6}, Lcom/wordloco/wordchallenge/c/j;->h(I)V

    .line 487
    const-string v3, ""

    invoke-virtual {p1, v3}, Lcom/wordloco/wordchallenge/c/j;->a(Ljava/lang/String;)V

    move v3, v0

    move v0, v1

    goto/16 :goto_0

    .line 373
    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 382
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 399
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_8
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method

.method public a([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/wordloco/wordchallenge/c/h;->h:[Ljava/lang/String;

    .line 175
    return-void
.end method

.method public a([[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/wordloco/wordchallenge/c/h;->g:[[Ljava/lang/String;

    .line 253
    return-void
.end method

.method public a(IIIILjava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 59
    iget-object v0, p0, Lcom/wordloco/wordchallenge/c/h;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 60
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 69
    iget-object v0, p0, Lcom/wordloco/wordchallenge/c/h;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 70
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 84
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 61
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wordloco/wordchallenge/c/j;

    .line 62
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->e()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 63
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->f()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 64
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->g()I

    move-result v3

    if-ne v3, p3, :cond_0

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->h()I

    move-result v3

    if-ne v3, p4, :cond_0

    .line 65
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->l()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 66
    goto :goto_0

    .line 71
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wordloco/wordchallenge/c/j;

    .line 72
    new-instance v3, Lcom/wordloco/wordchallenge/c/j;

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/wordloco/wordchallenge/c/j;-><init>(II)V

    .line 73
    invoke-virtual {v3, p5}, Lcom/wordloco/wordchallenge/c/j;->a(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v3, p1}, Lcom/wordloco/wordchallenge/c/j;->c(I)V

    .line 75
    invoke-virtual {v3, p3}, Lcom/wordloco/wordchallenge/c/j;->e(I)V

    .line 76
    invoke-virtual {v3, p2}, Lcom/wordloco/wordchallenge/c/j;->d(I)V

    .line 77
    invoke-virtual {v3, p4}, Lcom/wordloco/wordchallenge/c/j;->f(I)V

    .line 78
    invoke-virtual {v3}, Lcom/wordloco/wordchallenge/c/j;->n()V

    .line 79
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    invoke-virtual {p0, v3}, Lcom/wordloco/wordchallenge/c/h;->c(Lcom/wordloco/wordchallenge/c/j;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 81
    goto :goto_0
.end method

.method public a(Lcom/wordloco/wordchallenge/d/c;)Z
    .locals 14

    .prologue
    const/16 v6, 0x8

    const/4 v7, 0x7

    const/4 v13, 0x5

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 256
    new-instance v0, Lcom/wordloco/wordchallenge/c/a;

    invoke-direct {v0}, Lcom/wordloco/wordchallenge/c/a;-><init>()V

    .line 260
    iget v2, p0, Lcom/wordloco/wordchallenge/c/h;->c:I

    packed-switch v2, :pswitch_data_0

    .line 273
    :goto_0
    iget v2, p0, Lcom/wordloco/wordchallenge/c/h;->a:I

    iget v3, p0, Lcom/wordloco/wordchallenge/c/h;->b:I

    mul-int/2addr v2, v3

    int-to-double v2, v2

    iget-wide v4, v0, Lcom/wordloco/wordchallenge/c/a;->a:D

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    double-to-int v5, v2

    .line 278
    iget v2, p0, Lcom/wordloco/wordchallenge/c/h;->b:I

    packed-switch v2, :pswitch_data_1

    .line 305
    int-to-double v2, v5

    iget-wide v9, v0, Lcom/wordloco/wordchallenge/c/a;->g:D

    mul-double/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    double-to-int v4, v2

    .line 306
    int-to-double v2, v5

    iget-wide v9, v0, Lcom/wordloco/wordchallenge/c/a;->h:D

    mul-double/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    double-to-int v3, v2

    .line 307
    int-to-double v9, v5

    iget-wide v11, v0, Lcom/wordloco/wordchallenge/c/a;->i:D

    mul-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->rint(D)D

    move-result-wide v9

    double-to-int v2, v9

    .line 308
    int-to-double v9, v5

    iget-wide v11, v0, Lcom/wordloco/wordchallenge/c/a;->j:D

    mul-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->rint(D)D

    move-result-wide v9

    double-to-int v0, v9

    :goto_1
    move v9, v8

    .line 311
    :goto_2
    if-le v9, v0, :cond_2

    move v5, v8

    .line 318
    :goto_3
    if-le v5, v2, :cond_4

    move v2, v8

    .line 322
    :goto_4
    if-le v2, v3, :cond_6

    move v0, v8

    .line 326
    :goto_5
    if-le v0, v4, :cond_8

    .line 331
    iget-object v0, p0, Lcom/wordloco/wordchallenge/c/h;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 332
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    .line 335
    iget-object v0, p0, Lcom/wordloco/wordchallenge/c/h;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    .line 337
    :cond_0
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    .line 341
    if-lt v2, v13, :cond_1

    move v1, v8

    :cond_1
    return v1

    .line 262
    :pswitch_0
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/a;->a()V

    goto :goto_0

    .line 265
    :pswitch_1
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/a;->b()V

    goto :goto_0

    .line 268
    :pswitch_2
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/a;->c()V

    goto :goto_0

    .line 280
    :pswitch_3
    mul-int/lit8 v0, v5, 0x1

    move v2, v1

    move v3, v1

    move v4, v0

    move v0, v1

    .line 281
    goto :goto_1

    .line 283
    :pswitch_4
    int-to-double v2, v5

    iget-wide v9, v0, Lcom/wordloco/wordchallenge/c/a;->b:D

    mul-double/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 284
    int-to-double v3, v5

    iget-wide v9, v0, Lcom/wordloco/wordchallenge/c/a;->c:D

    mul-double/2addr v3, v9

    invoke-static {v3, v4}, Ljava/lang/Math;->rint(D)D

    move-result-wide v3

    double-to-int v0, v3

    move v3, v0

    move v4, v2

    move v0, v1

    move v2, v1

    .line 285
    goto :goto_1

    .line 287
    :pswitch_5
    int-to-double v2, v5

    iget-wide v9, v0, Lcom/wordloco/wordchallenge/c/a;->b:D

    mul-double/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 288
    int-to-double v3, v5

    iget-wide v9, v0, Lcom/wordloco/wordchallenge/c/a;->c:D

    mul-double/2addr v3, v9

    invoke-static {v3, v4}, Ljava/lang/Math;->rint(D)D

    move-result-wide v3

    double-to-int v0, v3

    move v3, v0

    move v4, v2

    move v0, v1

    move v2, v1

    .line 289
    goto :goto_1

    .line 291
    :pswitch_6
    int-to-double v2, v5

    iget-wide v9, v0, Lcom/wordloco/wordchallenge/c/a;->b:D

    mul-double/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 292
    int-to-double v3, v5

    iget-wide v9, v0, Lcom/wordloco/wordchallenge/c/a;->c:D

    mul-double/2addr v3, v9

    invoke-static {v3, v4}, Ljava/lang/Math;->rint(D)D

    move-result-wide v3

    double-to-int v0, v3

    move v3, v0

    move v4, v2

    move v0, v1

    move v2, v1

    .line 293
    goto :goto_1

    .line 295
    :pswitch_7
    int-to-double v2, v5

    iget-wide v9, v0, Lcom/wordloco/wordchallenge/c/a;->d:D

    mul-double/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    double-to-int v3, v2

    .line 296
    int-to-double v9, v5

    iget-wide v11, v0, Lcom/wordloco/wordchallenge/c/a;->e:D

    mul-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->rint(D)D

    move-result-wide v9

    double-to-int v2, v9

    .line 297
    int-to-double v4, v5

    iget-wide v9, v0, Lcom/wordloco/wordchallenge/c/a;->f:D

    mul-double/2addr v4, v9

    invoke-static {v4, v5}, Ljava/lang/Math;->rint(D)D

    move-result-wide v4

    double-to-int v0, v4

    move v4, v3

    move v3, v2

    move v2, v0

    move v0, v1

    .line 298
    goto/16 :goto_1

    .line 300
    :pswitch_8
    int-to-double v2, v5

    iget-wide v9, v0, Lcom/wordloco/wordchallenge/c/a;->d:D

    mul-double/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    double-to-int v3, v2

    .line 301
    int-to-double v9, v5

    iget-wide v11, v0, Lcom/wordloco/wordchallenge/c/a;->e:D

    mul-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->rint(D)D

    move-result-wide v9

    double-to-int v2, v9

    .line 302
    int-to-double v4, v5

    iget-wide v9, v0, Lcom/wordloco/wordchallenge/c/a;->f:D

    mul-double/2addr v4, v9

    invoke-static {v4, v5}, Ljava/lang/Math;->rint(D)D

    move-result-wide v4

    double-to-int v0, v4

    move v4, v3

    move v3, v2

    move v2, v0

    move v0, v1

    .line 303
    goto/16 :goto_1

    .line 312
    :cond_2
    new-instance v10, Lcom/wordloco/wordchallenge/c/j;

    .line 313
    const/16 v11, 0xa

    .line 314
    iget v5, p0, Lcom/wordloco/wordchallenge/c/h;->b:I

    const/16 v12, 0xe

    if-lt v5, v12, :cond_3

    const/16 v5, 0xe

    .line 312
    :goto_8
    invoke-direct {v10, v11, v5}, Lcom/wordloco/wordchallenge/c/j;-><init>(II)V

    .line 316
    iget-object v5, p0, Lcom/wordloco/wordchallenge/c/h;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    add-int/lit8 v5, v9, 0x1

    move v9, v5

    goto/16 :goto_2

    .line 315
    :cond_3
    iget v5, p0, Lcom/wordloco/wordchallenge/c/h;->b:I

    add-int/lit8 v5, v5, -0x1

    goto :goto_8

    .line 319
    :cond_4
    new-instance v9, Lcom/wordloco/wordchallenge/c/j;

    iget v0, p0, Lcom/wordloco/wordchallenge/c/h;->b:I

    const/16 v10, 0x9

    if-lt v0, v10, :cond_5

    const/16 v0, 0x9

    :goto_9
    invoke-direct {v9, v6, v0}, Lcom/wordloco/wordchallenge/c/j;-><init>(II)V

    .line 320
    iget-object v0, p0, Lcom/wordloco/wordchallenge/c/h;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_3

    :cond_5
    move v0, v6

    .line 319
    goto :goto_9

    .line 323
    :cond_6
    new-instance v5, Lcom/wordloco/wordchallenge/c/j;

    iget v0, p0, Lcom/wordloco/wordchallenge/c/h;->b:I

    if-lt v0, v7, :cond_7

    move v0, v7

    :goto_a
    invoke-direct {v5, v13, v0}, Lcom/wordloco/wordchallenge/c/j;-><init>(II)V

    .line 324
    iget-object v0, p0, Lcom/wordloco/wordchallenge/c/h;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_4

    .line 323
    :cond_7
    iget v0, p0, Lcom/wordloco/wordchallenge/c/h;->b:I

    goto :goto_a

    .line 327
    :cond_8
    new-instance v2, Lcom/wordloco/wordchallenge/c/j;

    const/4 v3, 0x3

    const/4 v5, 0x4

    invoke-direct {v2, v3, v5}, Lcom/wordloco/wordchallenge/c/j;-><init>(II)V

    .line 328
    iget-object v3, p0, Lcom/wordloco/wordchallenge/c/h;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    .line 333
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wordloco/wordchallenge/c/j;

    invoke-virtual {p0, v0, p1}, Lcom/wordloco/wordchallenge/c/h;->a(Lcom/wordloco/wordchallenge/c/j;Lcom/wordloco/wordchallenge/d/c;)V

    goto/16 :goto_6

    .line 338
    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wordloco/wordchallenge/c/j;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v0

    const-string v4, "NO_DATA_FOUND"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_7

    .line 260
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 278
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 734
    iput p1, p0, Lcom/wordloco/wordchallenge/c/h;->a:I

    .line 735
    return-void
.end method

.method public b(Lcom/wordloco/wordchallenge/c/j;)Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 345
    iget-object v0, p0, Lcom/wordloco/wordchallenge/c/h;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    .line 347
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 352
    if-le v1, v3, :cond_1

    move v2, v3

    :cond_1
    return v2

    .line 348
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wordloco/wordchallenge/c/j;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public b()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/wordloco/wordchallenge/c/h;->h:[Ljava/lang/String;

    return-object v0
.end method

.method public c()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 228
    move v0, v1

    move v2, v1

    .line 229
    :goto_0
    iget v3, p0, Lcom/wordloco/wordchallenge/c/h;->b:I

    if-lt v0, v3, :cond_0

    .line 235
    return-void

    :cond_0
    move v3, v1

    .line 230
    :goto_1
    iget v4, p0, Lcom/wordloco/wordchallenge/c/h;->a:I

    if-lt v3, v4, :cond_1

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :cond_1
    iget-object v4, p0, Lcom/wordloco/wordchallenge/c/h;->h:[Ljava/lang/String;

    iget-object v5, p0, Lcom/wordloco/wordchallenge/c/h;->g:[[Ljava/lang/String;

    aget-object v5, v5, v0

    aget-object v5, v5, v3

    aput-object v5, v4, v2

    .line 232
    add-int/lit8 v4, v2, 0x1

    .line 230
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 742
    iput p1, p0, Lcom/wordloco/wordchallenge/c/h;->b:I

    .line 743
    return-void
.end method

.method public c(Lcom/wordloco/wordchallenge/c/j;)Z
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v3, 0x1

    .line 500
    new-instance v0, Lcom/wordloco/wordchallenge/c/j;

    invoke-direct {v0, p1}, Lcom/wordloco/wordchallenge/c/j;-><init>(Lcom/wordloco/wordchallenge/c/j;)V

    .line 502
    iget-object v1, p0, Lcom/wordloco/wordchallenge/c/h;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v0

    .line 503
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 603
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 504
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wordloco/wordchallenge/c/j;

    .line 505
    new-instance v2, Lcom/wordloco/wordchallenge/c/j;

    invoke-direct {v2, v0}, Lcom/wordloco/wordchallenge/c/j;-><init>(Lcom/wordloco/wordchallenge/c/j;)V

    .line 506
    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 507
    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 508
    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v0

    const-string v5, "NO_DATA_FOUND"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 511
    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v0, v5, :cond_d

    .line 512
    new-instance v5, Lcom/wordloco/wordchallenge/c/j;

    invoke-direct {v5, v2}, Lcom/wordloco/wordchallenge/c/j;-><init>(Lcom/wordloco/wordchallenge/c/j;)V

    .line 513
    new-instance v0, Lcom/wordloco/wordchallenge/c/j;

    invoke-direct {v0, v1}, Lcom/wordloco/wordchallenge/c/j;-><init>(Lcom/wordloco/wordchallenge/c/j;)V

    .line 514
    new-instance v1, Lcom/wordloco/wordchallenge/c/j;

    invoke-direct {v1, v5}, Lcom/wordloco/wordchallenge/c/j;-><init>(Lcom/wordloco/wordchallenge/c/j;)V

    .line 516
    :goto_2
    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->c()I

    move-result v2

    if-eqz v2, :cond_1

    .line 517
    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->c()I

    move-result v2

    if-ne v2, v9, :cond_3

    .line 518
    :cond_1
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->c()I

    move-result v2

    if-nez v2, :cond_2

    .line 519
    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->f()I

    move-result v2

    .line 520
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->f()I

    move-result v5

    .line 519
    if-ne v2, v5, :cond_2

    .line 521
    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->e()I

    move-result v2

    .line 522
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->e()I

    move-result v5

    if-lt v2, v5, :cond_2

    .line 523
    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->g()I

    move-result v2

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->g()I

    move-result v5

    if-gt v2, v5, :cond_2

    move v0, v3

    .line 524
    goto/16 :goto_1

    .line 527
    :cond_2
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->c()I

    move-result v2

    if-ne v2, v9, :cond_3

    .line 528
    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->f()I

    move-result v2

    .line 529
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->f()I

    move-result v5

    .line 528
    if-ne v2, v5, :cond_3

    .line 530
    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->e()I

    move-result v2

    .line 531
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->e()I

    move-result v5

    if-gt v2, v5, :cond_3

    .line 532
    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->g()I

    move-result v2

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->g()I

    move-result v5

    if-lt v2, v5, :cond_3

    move v0, v3

    .line 533
    goto/16 :goto_1

    .line 537
    :cond_3
    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->c()I

    move-result v2

    if-eq v2, v3, :cond_4

    .line 538
    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->c()I

    move-result v2

    if-ne v2, v10, :cond_6

    .line 539
    :cond_4
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->c()I

    move-result v2

    if-ne v2, v3, :cond_5

    .line 540
    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->e()I

    move-result v2

    .line 541
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->e()I

    move-result v5

    .line 540
    if-ne v2, v5, :cond_5

    .line 542
    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->f()I

    move-result v2

    .line 543
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->f()I

    move-result v5

    if-lt v2, v5, :cond_5

    .line 544
    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->h()I

    move-result v2

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->h()I

    move-result v5

    if-gt v2, v5, :cond_5

    move v0, v3

    .line 545
    goto/16 :goto_1

    .line 547
    :cond_5
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->c()I

    move-result v2

    if-ne v2, v10, :cond_6

    .line 548
    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->e()I

    move-result v2

    .line 549
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->e()I

    move-result v5

    .line 548
    if-ne v2, v5, :cond_6

    .line 550
    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->f()I

    move-result v2

    .line 551
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->f()I

    move-result v5

    if-gt v2, v5, :cond_6

    .line 552
    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->h()I

    move-result v2

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->h()I

    move-result v5

    if-lt v2, v5, :cond_6

    move v0, v3

    .line 553
    goto/16 :goto_1

    .line 557
    :cond_6
    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->c()I

    move-result v2

    if-eq v2, v8, :cond_7

    .line 558
    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->c()I

    move-result v2

    const/4 v5, 0x7

    if-ne v2, v5, :cond_9

    .line 559
    :cond_7
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->c()I

    move-result v2

    if-ne v2, v8, :cond_8

    .line 560
    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->e()I

    move-result v2

    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->f()I

    move-result v5

    sub-int/2addr v2, v5

    .line 561
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->e()I

    move-result v5

    .line 562
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->f()I

    move-result v6

    sub-int/2addr v5, v6

    .line 560
    if-ne v2, v5, :cond_8

    .line 563
    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->e()I

    move-result v2

    .line 564
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->e()I

    move-result v5

    if-lt v2, v5, :cond_8

    .line 565
    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->g()I

    move-result v2

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->g()I

    move-result v5

    if-gt v2, v5, :cond_8

    move v0, v3

    .line 566
    goto/16 :goto_1

    .line 568
    :cond_8
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->c()I

    move-result v2

    const/4 v5, 0x7

    if-ne v2, v5, :cond_9

    .line 569
    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->e()I

    move-result v2

    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->f()I

    move-result v5

    sub-int/2addr v2, v5

    .line 570
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->e()I

    move-result v5

    .line 571
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->f()I

    move-result v6

    sub-int/2addr v5, v6

    .line 569
    if-ne v2, v5, :cond_9

    .line 572
    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->e()I

    move-result v2

    .line 573
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->e()I

    move-result v5

    if-gt v2, v5, :cond_9

    .line 574
    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->g()I

    move-result v2

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->g()I

    move-result v5

    if-lt v2, v5, :cond_9

    move v0, v3

    .line 575
    goto/16 :goto_1

    .line 579
    :cond_9
    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->c()I

    move-result v2

    if-eq v2, v7, :cond_a

    .line 580
    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->c()I

    move-result v2

    const/4 v5, 0x6

    if-ne v2, v5, :cond_c

    .line 581
    :cond_a
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->c()I

    move-result v2

    if-ne v2, v7, :cond_b

    .line 582
    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->e()I

    move-result v2

    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->f()I

    move-result v5

    add-int/2addr v2, v5

    .line 583
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->e()I

    move-result v5

    .line 584
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->f()I

    move-result v6

    add-int/2addr v5, v6

    .line 582
    if-ne v2, v5, :cond_b

    .line 585
    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->e()I

    move-result v2

    .line 586
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->e()I

    move-result v5

    if-lt v2, v5, :cond_b

    .line 587
    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->g()I

    move-result v2

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->g()I

    move-result v5

    if-gt v2, v5, :cond_b

    move v0, v3

    .line 588
    goto/16 :goto_1

    .line 590
    :cond_b
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->c()I

    move-result v2

    const/4 v5, 0x6

    if-ne v2, v5, :cond_c

    .line 591
    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->e()I

    move-result v2

    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->f()I

    move-result v5

    add-int/2addr v2, v5

    .line 592
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->e()I

    move-result v5

    .line 593
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->f()I

    move-result v6

    add-int/2addr v5, v6

    .line 591
    if-ne v2, v5, :cond_c

    .line 594
    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->e()I

    move-result v2

    .line 595
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->e()I

    move-result v5

    if-gt v2, v5, :cond_c

    .line 596
    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->g()I

    move-result v1

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->g()I

    move-result v0

    if-lt v1, v0, :cond_c

    move v0, v3

    .line 597
    goto/16 :goto_1

    .line 601
    :cond_c
    new-instance v0, Lcom/wordloco/wordchallenge/c/j;

    invoke-direct {v0, p1}, Lcom/wordloco/wordchallenge/c/j;-><init>(Lcom/wordloco/wordchallenge/c/j;)V

    move-object v1, v0

    goto/16 :goto_0

    :cond_d
    move-object v0, v2

    goto/16 :goto_2
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 750
    iput p1, p0, Lcom/wordloco/wordchallenge/c/h;->c:I

    .line 751
    return-void
.end method

.method public d(Lcom/wordloco/wordchallenge/c/j;)V
    .locals 6

    .prologue
    .line 607
    iget v1, p0, Lcom/wordloco/wordchallenge/c/h;->d:I

    .line 608
    iget v2, p0, Lcom/wordloco/wordchallenge/c/h;->e:I

    .line 609
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/j;->j()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 613
    iput v1, p0, Lcom/wordloco/wordchallenge/c/h;->d:I

    .line 614
    iput v2, p0, Lcom/wordloco/wordchallenge/c/h;->e:I

    .line 615
    return-void

    .line 610
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/wordloco/wordchallenge/c/h;->g:[[Ljava/lang/String;

    iget v5, p0, Lcom/wordloco/wordchallenge/c/h;->e:I

    aget-object v4, v4, v5

    iget v5, p0, Lcom/wordloco/wordchallenge/c/h;->d:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/wordloco/wordchallenge/c/j;->a(Ljava/lang/String;)V

    .line 611
    iget v3, p0, Lcom/wordloco/wordchallenge/c/h;->f:I

    invoke-virtual {p0, v3}, Lcom/wordloco/wordchallenge/c/h;->a(I)V

    .line 609
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public d()[[Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/wordloco/wordchallenge/c/h;->g:[[Ljava/lang/String;

    return-object v0
.end method

.method public e()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 356
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/wordloco/wordchallenge/c/h;->b:I

    if-lt v0, v2, :cond_0

    .line 361
    return-void

    :cond_0
    move v2, v1

    .line 357
    :goto_1
    iget v3, p0, Lcom/wordloco/wordchallenge/c/h;->a:I

    if-lt v2, v3, :cond_1

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 358
    :cond_1
    iget-object v3, p0, Lcom/wordloco/wordchallenge/c/h;->g:[[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string v4, "_"

    aput-object v4, v3, v2

    .line 357
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public e(I)V
    .locals 0

    .prologue
    .line 758
    iput p1, p0, Lcom/wordloco/wordchallenge/c/h;->d:I

    .line 759
    return-void
.end method

.method public f()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 651
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 652
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 658
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->y()Ljava/lang/String;

    move-result-object v1

    const-string v3, "es"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 661
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZ\u00d1"

    .line 663
    :cond_0
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->y()Ljava/lang/String;

    move-result-object v1

    const-string v3, "fr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 664
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c9\u00c0\u00c8\u00d9\u00c2\u00ca\u00ce\u00d4\u00db\u00cb\u00cf\u00c7"

    .line 666
    :cond_1
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->y()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ru"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 667
    const-string v0, "\u0410\u0411\u0412\u0413\u0414\u0415\u0401\u0416\u0417\u0418\u0419\u041a\u041b\u041c\u041d\u041e\u041f\u0420\u0421\u0422\u0423\u0424\u0425\u0426\u0427\u0428\u0429\u042a\u042b\u042c\u042d\u042e\u042f"

    .line 669
    :cond_2
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->y()Ljava/lang/String;

    move-result-object v1

    const-string v3, "de"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 670
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c4\u00d6\u00dc\u00df"

    .line 672
    :cond_3
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->y()Ljava/lang/String;

    move-result-object v1

    const-string v3, "sv"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 673
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c5\u00c4\u00d6"

    .line 675
    :cond_4
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->y()Ljava/lang/String;

    move-result-object v1

    const-string v3, "pl"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 676
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZ\u0104\u0106\u0118\u0141\u0143\u00d3\u015a\u0179\u017b"

    .line 678
    :cond_5
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->y()Ljava/lang/String;

    move-result-object v1

    const-string v3, "cs"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 679
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZ\u010c\u010e\u0147\u0158\u0160\u0164\u017d\u00c1\u00c9\u011a\u00cd\u00d3\u00da\u016e\u00dd"

    .line 681
    :cond_6
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->y()Ljava/lang/String;

    move-result-object v1

    const-string v3, "pt"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 683
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c1\u00c9\u00cd\u00d3\u00da\u00c2\u00ca\u00d4\u00c3\u00d5\u00c0\u00dc\u00c7"

    .line 685
    :cond_7
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->y()Ljava/lang/String;

    move-result-object v1

    const-string v3, "it"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 686
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c0\u00c8\u00cc\u00d2\u00d9"

    .line 688
    :cond_8
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->y()Ljava/lang/String;

    move-result-object v1

    const-string v3, "nl"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 689
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c1\u00c9\u00d3\u00cb"

    .line 691
    :cond_9
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->y()Ljava/lang/String;

    move-result-object v1

    const-string v3, "bg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 692
    const-string v0, "\u0410\u0411\u0412\u0413\u0414\u0415\u0416\u0417\u0418\u0419\u041a\u041b\u041c\u041d\u041e\u041f\u0420\u0421\u0422\u0423\u0424\u0425\u0426\u0427\u0428\u0429\u042a\u042c\u042e\u042f"

    .line 694
    :cond_a
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->y()Ljava/lang/String;

    move-result-object v1

    const-string v3, "hr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 695
    const-string v0, "ABC\u010c\u0106D\u0110EFGHIJKLMNOPRS\u0160TUVZ\u017d"

    .line 697
    :cond_b
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->y()Ljava/lang/String;

    move-result-object v1

    const-string v3, "uk"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 698
    const-string v0, "A\u0411B\u0413\u0490\u0414\u0415\u0404\u0416\u0417\u0418I\u0407\u0419\u041a\u041b\u041c\u041d\u041e\u041fP\u0421\u0422\u0423\u0424\u0425\u0426\u0427\u0428\u0429\u042c\u042e\u042f"

    .line 700
    :cond_c
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->y()Ljava/lang/String;

    move-result-object v1

    const-string v3, "tr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 701
    const-string v0, "ABC\u00c7DEFG\u011eHI\u0130JKLMNO\u00d6PRS\u015eTU\u00dcVYZ"

    .line 703
    :cond_d
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->y()Ljava/lang/String;

    move-result-object v1

    const-string v3, "sk"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 704
    const-string v0, "A\u00c1\u00c4BC\u010cD\u010eE\u00c9FGHI\u00cdJKL\u0139\u013dMN\u0147O\u00d3\u00d4PQR\u0154S\u0160T\u0164U\u00daVWXY\u00ddZ\u017d"

    .line 706
    :cond_e
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->q()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 707
    const-string v0, "0123456789"

    :cond_f
    move v1, v2

    .line 710
    :goto_0
    iget v3, p0, Lcom/wordloco/wordchallenge/c/h;->b:I

    if-lt v1, v3, :cond_10

    .line 719
    return-void

    :cond_10
    move v3, v2

    .line 711
    :goto_1
    iget v5, p0, Lcom/wordloco/wordchallenge/c/h;->a:I

    if-lt v3, v5, :cond_11

    .line 710
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 712
    :cond_11
    iget-object v5, p0, Lcom/wordloco/wordchallenge/c/h;->g:[[Ljava/lang/String;

    aget-object v5, v5, v1

    aget-object v5, v5, v3

    const-string v6, "_"

    if-ne v5, v6, :cond_12

    .line 713
    iget-object v5, p0, Lcom/wordloco/wordchallenge/c/h;->j:Ljava/util/ArrayList;

    iget v6, p0, Lcom/wordloco/wordchallenge/c/h;->a:I

    mul-int/2addr v6, v1

    add-int/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    iget-object v5, p0, Lcom/wordloco/wordchallenge/c/h;->g:[[Ljava/lang/String;

    aget-object v5, v5, v1

    .line 715
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    .line 714
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 711
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public f(I)V
    .locals 0

    .prologue
    .line 766
    iput p1, p0, Lcom/wordloco/wordchallenge/c/h;->e:I

    .line 767
    return-void
.end method

.method public g()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wordloco/wordchallenge/c/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 722
    iget-object v0, p0, Lcom/wordloco/wordchallenge/c/h;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method public g(I)V
    .locals 0

    .prologue
    .line 774
    iput p1, p0, Lcom/wordloco/wordchallenge/c/h;->f:I

    .line 775
    return-void
.end method

.method public h()I
    .locals 1

    .prologue
    .line 730
    iget v0, p0, Lcom/wordloco/wordchallenge/c/h;->a:I

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 738
    iget v0, p0, Lcom/wordloco/wordchallenge/c/h;->b:I

    return v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 746
    iget v0, p0, Lcom/wordloco/wordchallenge/c/h;->c:I

    return v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 754
    iget v0, p0, Lcom/wordloco/wordchallenge/c/h;->d:I

    return v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 762
    iget v0, p0, Lcom/wordloco/wordchallenge/c/h;->e:I

    return v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 770
    iget v0, p0, Lcom/wordloco/wordchallenge/c/h;->f:I

    return v0
.end method

.method public n()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 778
    iget-object v0, p0, Lcom/wordloco/wordchallenge/c/h;->j:Ljava/util/ArrayList;

    return-object v0
.end method
