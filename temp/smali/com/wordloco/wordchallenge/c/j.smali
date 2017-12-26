.class public Lcom/wordloco/wordchallenge/c/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/wordloco/wordchallenge/c/j;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput v1, p0, Lcom/wordloco/wordchallenge/c/j;->a:I

    .line 8
    iput v1, p0, Lcom/wordloco/wordchallenge/c/j;->b:I

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/wordloco/wordchallenge/c/j;->c:Ljava/lang/String;

    .line 10
    iput-boolean v1, p0, Lcom/wordloco/wordchallenge/c/j;->d:Z

    .line 11
    iput v1, p0, Lcom/wordloco/wordchallenge/c/j;->e:I

    .line 12
    iput v1, p0, Lcom/wordloco/wordchallenge/c/j;->f:I

    .line 13
    iput v1, p0, Lcom/wordloco/wordchallenge/c/j;->g:I

    .line 14
    iput v1, p0, Lcom/wordloco/wordchallenge/c/j;->h:I

    .line 15
    iput v1, p0, Lcom/wordloco/wordchallenge/c/j;->i:I

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/wordloco/wordchallenge/c/j;->k:I

    .line 21
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput v1, p0, Lcom/wordloco/wordchallenge/c/j;->a:I

    .line 8
    iput v1, p0, Lcom/wordloco/wordchallenge/c/j;->b:I

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/wordloco/wordchallenge/c/j;->c:Ljava/lang/String;

    .line 10
    iput-boolean v1, p0, Lcom/wordloco/wordchallenge/c/j;->d:Z

    .line 11
    iput v1, p0, Lcom/wordloco/wordchallenge/c/j;->e:I

    .line 12
    iput v1, p0, Lcom/wordloco/wordchallenge/c/j;->f:I

    .line 13
    iput v1, p0, Lcom/wordloco/wordchallenge/c/j;->g:I

    .line 14
    iput v1, p0, Lcom/wordloco/wordchallenge/c/j;->h:I

    .line 15
    iput v1, p0, Lcom/wordloco/wordchallenge/c/j;->i:I

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/wordloco/wordchallenge/c/j;->k:I

    .line 161
    iput p1, p0, Lcom/wordloco/wordchallenge/c/j;->a:I

    .line 162
    iput p2, p0, Lcom/wordloco/wordchallenge/c/j;->b:I

    .line 163
    return-void
.end method

.method public constructor <init>(Lcom/wordloco/wordchallenge/c/j;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput v1, p0, Lcom/wordloco/wordchallenge/c/j;->a:I

    .line 8
    iput v1, p0, Lcom/wordloco/wordchallenge/c/j;->b:I

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/wordloco/wordchallenge/c/j;->c:Ljava/lang/String;

    .line 10
    iput-boolean v1, p0, Lcom/wordloco/wordchallenge/c/j;->d:Z

    .line 11
    iput v1, p0, Lcom/wordloco/wordchallenge/c/j;->e:I

    .line 12
    iput v1, p0, Lcom/wordloco/wordchallenge/c/j;->f:I

    .line 13
    iput v1, p0, Lcom/wordloco/wordchallenge/c/j;->g:I

    .line 14
    iput v1, p0, Lcom/wordloco/wordchallenge/c/j;->h:I

    .line 15
    iput v1, p0, Lcom/wordloco/wordchallenge/c/j;->i:I

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/wordloco/wordchallenge/c/j;->k:I

    .line 24
    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/j;->i()I

    move-result v0

    iput v0, p0, Lcom/wordloco/wordchallenge/c/j;->a:I

    .line 25
    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/j;->j()I

    move-result v0

    iput v0, p0, Lcom/wordloco/wordchallenge/c/j;->b:I

    .line 26
    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wordloco/wordchallenge/c/j;->c:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/j;->l()Z

    move-result v0

    iput-boolean v0, p0, Lcom/wordloco/wordchallenge/c/j;->d:Z

    .line 28
    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/j;->m()I

    move-result v0

    iput v0, p0, Lcom/wordloco/wordchallenge/c/j;->e:I

    .line 29
    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/j;->e()I

    move-result v0

    iput v0, p0, Lcom/wordloco/wordchallenge/c/j;->f:I

    .line 30
    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/j;->f()I

    move-result v0

    iput v0, p0, Lcom/wordloco/wordchallenge/c/j;->g:I

    .line 31
    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/j;->g()I

    move-result v0

    iput v0, p0, Lcom/wordloco/wordchallenge/c/j;->h:I

    .line 32
    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/j;->h()I

    move-result v0

    iput v0, p0, Lcom/wordloco/wordchallenge/c/j;->i:I

    .line 33
    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/j;->d()I

    move-result v0

    iput v0, p0, Lcom/wordloco/wordchallenge/c/j;->j:I

    .line 34
    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/j;->c()I

    move-result v0

    iput v0, p0, Lcom/wordloco/wordchallenge/c/j;->k:I

    .line 35
    return-void
.end method

.method private o()V
    .locals 3

    .prologue
    .line 197
    :goto_0
    iget-object v0, p0, Lcom/wordloco/wordchallenge/c/j;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/wordloco/wordchallenge/c/j;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/wordloco/wordchallenge/c/j;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/wordloco/wordchallenge/c/j;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "%"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wordloco/wordchallenge/c/j;->c:Ljava/lang/String;

    .line 202
    return-void

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/wordloco/wordchallenge/c/j;->c:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/wordloco/wordchallenge/c/j;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wordloco/wordchallenge/c/j;->c:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/wordloco/wordchallenge/c/j;)I
    .locals 2

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/c/j;->n()V

    .line 39
    iget v0, p0, Lcom/wordloco/wordchallenge/c/j;->k:I

    packed-switch v0, :pswitch_data_0

    .line 69
    :goto_0
    return-void

    .line 41
    :pswitch_0
    iget v0, p0, Lcom/wordloco/wordchallenge/c/j;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/wordloco/wordchallenge/c/j;->h:I

    goto :goto_0

    .line 44
    :pswitch_1
    iget v0, p0, Lcom/wordloco/wordchallenge/c/j;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/wordloco/wordchallenge/c/j;->h:I

    goto :goto_0

    .line 47
    :pswitch_2
    iget v0, p0, Lcom/wordloco/wordchallenge/c/j;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/wordloco/wordchallenge/c/j;->i:I

    goto :goto_0

    .line 50
    :pswitch_3
    iget v0, p0, Lcom/wordloco/wordchallenge/c/j;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/wordloco/wordchallenge/c/j;->i:I

    goto :goto_0

    .line 53
    :pswitch_4
    iget v0, p0, Lcom/wordloco/wordchallenge/c/j;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/wordloco/wordchallenge/c/j;->h:I

    .line 54
    iget v0, p0, Lcom/wordloco/wordchallenge/c/j;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/wordloco/wordchallenge/c/j;->i:I

    goto :goto_0

    .line 57
    :pswitch_5
    iget v0, p0, Lcom/wordloco/wordchallenge/c/j;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/wordloco/wordchallenge/c/j;->h:I

    .line 58
    iget v0, p0, Lcom/wordloco/wordchallenge/c/j;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/wordloco/wordchallenge/c/j;->i:I

    goto :goto_0

    .line 61
    :pswitch_6
    iget v0, p0, Lcom/wordloco/wordchallenge/c/j;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/wordloco/wordchallenge/c/j;->h:I

    .line 62
    iget v0, p0, Lcom/wordloco/wordchallenge/c/j;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/wordloco/wordchallenge/c/j;->i:I

    goto :goto_0

    .line 65
    :pswitch_7
    iget v0, p0, Lcom/wordloco/wordchallenge/c/j;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/wordloco/wordchallenge/c/j;->h:I

    .line 66
    iget v0, p0, Lcom/wordloco/wordchallenge/c/j;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/wordloco/wordchallenge/c/j;->i:I

    goto :goto_0

    .line 39
    nop

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

.method public a(I)V
    .locals 0

    .prologue
    .line 113
    iput p1, p0, Lcom/wordloco/wordchallenge/c/j;->k:I

    .line 114
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/wordloco/wordchallenge/c/j;->c:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/wordloco/wordchallenge/c/j;->d:Z

    .line 210
    return-void
.end method

.method public a(Lcom/wordloco/wordchallenge/d/c;)Z
    .locals 1

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/wordloco/wordchallenge/c/j;->o()V

    .line 193
    invoke-virtual {p1, p0}, Lcom/wordloco/wordchallenge/d/c;->a(Lcom/wordloco/wordchallenge/c/j;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 72
    iget v0, p0, Lcom/wordloco/wordchallenge/c/j;->f:I

    iput v0, p0, Lcom/wordloco/wordchallenge/c/j;->h:I

    .line 73
    iget v0, p0, Lcom/wordloco/wordchallenge/c/j;->g:I

    iput v0, p0, Lcom/wordloco/wordchallenge/c/j;->i:I

    .line 74
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/wordloco/wordchallenge/c/j;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    .line 106
    return-void

    .line 75
    :cond_0
    iget v1, p0, Lcom/wordloco/wordchallenge/c/j;->k:I

    packed-switch v1, :pswitch_data_0

    .line 74
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :pswitch_0
    iget v1, p0, Lcom/wordloco/wordchallenge/c/j;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/wordloco/wordchallenge/c/j;->h:I

    goto :goto_1

    .line 80
    :pswitch_1
    iget v1, p0, Lcom/wordloco/wordchallenge/c/j;->h:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/wordloco/wordchallenge/c/j;->h:I

    goto :goto_1

    .line 83
    :pswitch_2
    iget v1, p0, Lcom/wordloco/wordchallenge/c/j;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/wordloco/wordchallenge/c/j;->i:I

    goto :goto_1

    .line 86
    :pswitch_3
    iget v1, p0, Lcom/wordloco/wordchallenge/c/j;->i:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/wordloco/wordchallenge/c/j;->i:I

    goto :goto_1

    .line 89
    :pswitch_4
    iget v1, p0, Lcom/wordloco/wordchallenge/c/j;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/wordloco/wordchallenge/c/j;->h:I

    .line 90
    iget v1, p0, Lcom/wordloco/wordchallenge/c/j;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/wordloco/wordchallenge/c/j;->i:I

    goto :goto_1

    .line 93
    :pswitch_5
    iget v1, p0, Lcom/wordloco/wordchallenge/c/j;->h:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/wordloco/wordchallenge/c/j;->h:I

    .line 94
    iget v1, p0, Lcom/wordloco/wordchallenge/c/j;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/wordloco/wordchallenge/c/j;->i:I

    goto :goto_1

    .line 97
    :pswitch_6
    iget v1, p0, Lcom/wordloco/wordchallenge/c/j;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/wordloco/wordchallenge/c/j;->h:I

    .line 98
    iget v1, p0, Lcom/wordloco/wordchallenge/c/j;->i:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/wordloco/wordchallenge/c/j;->i:I

    goto :goto_1

    .line 101
    :pswitch_7
    iget v1, p0, Lcom/wordloco/wordchallenge/c/j;->h:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/wordloco/wordchallenge/c/j;->h:I

    .line 102
    iget v1, p0, Lcom/wordloco/wordchallenge/c/j;->i:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/wordloco/wordchallenge/c/j;->i:I

    goto :goto_1

    .line 75
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

.method public b(I)V
    .locals 0

    .prologue
    .line 121
    iput p1, p0, Lcom/wordloco/wordchallenge/c/j;->j:I

    .line 122
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/wordloco/wordchallenge/c/j;->k:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 129
    iput p1, p0, Lcom/wordloco/wordchallenge/c/j;->f:I

    .line 130
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/wordloco/wordchallenge/c/j;

    invoke-virtual {p0, p1}, Lcom/wordloco/wordchallenge/c/j;->a(Lcom/wordloco/wordchallenge/c/j;)I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/wordloco/wordchallenge/c/j;->j:I

    return v0
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 137
    iput p1, p0, Lcom/wordloco/wordchallenge/c/j;->g:I

    .line 138
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/wordloco/wordchallenge/c/j;->f:I

    return v0
.end method

.method public e(I)V
    .locals 0

    .prologue
    .line 145
    iput p1, p0, Lcom/wordloco/wordchallenge/c/j;->h:I

    .line 146
    return-void
.end method

.method public f()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/wordloco/wordchallenge/c/j;->g:I

    return v0
.end method

.method public f(I)V
    .locals 0

    .prologue
    .line 153
    iput p1, p0, Lcom/wordloco/wordchallenge/c/j;->i:I

    .line 154
    return-void
.end method

.method public g()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/wordloco/wordchallenge/c/j;->h:I

    return v0
.end method

.method public g(I)V
    .locals 0

    .prologue
    .line 170
    iput p1, p0, Lcom/wordloco/wordchallenge/c/j;->a:I

    .line 171
    return-void
.end method

.method public h()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/wordloco/wordchallenge/c/j;->i:I

    return v0
.end method

.method public h(I)V
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/wordloco/wordchallenge/c/j;->b:I

    if-ge p1, v0, :cond_0

    .line 179
    iput p1, p0, Lcom/wordloco/wordchallenge/c/j;->b:I

    .line 181
    :cond_0
    return-void
.end method

.method public i()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/wordloco/wordchallenge/c/j;->a:I

    return v0
.end method

.method public i(I)V
    .locals 0

    .prologue
    .line 217
    iput p1, p0, Lcom/wordloco/wordchallenge/c/j;->e:I

    .line 218
    return-void
.end method

.method public j()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/wordloco/wordchallenge/c/j;->b:I

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/wordloco/wordchallenge/c/j;->c:Ljava/lang/String;

    return-object v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/wordloco/wordchallenge/c/j;->d:Z

    return v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/wordloco/wordchallenge/c/j;->e:I

    return v0
.end method

.method public n()V
    .locals 2

    .prologue
    .line 221
    iget v0, p0, Lcom/wordloco/wordchallenge/c/j;->g:I

    iget v1, p0, Lcom/wordloco/wordchallenge/c/j;->i:I

    if-ne v0, v1, :cond_1

    .line 222
    iget v0, p0, Lcom/wordloco/wordchallenge/c/j;->f:I

    iget v1, p0, Lcom/wordloco/wordchallenge/c/j;->h:I

    if-ge v0, v1, :cond_0

    .line 223
    const/4 v0, 0x0

    iput v0, p0, Lcom/wordloco/wordchallenge/c/j;->k:I

    .line 246
    :goto_0
    return-void

    .line 225
    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/wordloco/wordchallenge/c/j;->k:I

    goto :goto_0

    .line 227
    :cond_1
    iget v0, p0, Lcom/wordloco/wordchallenge/c/j;->f:I

    iget v1, p0, Lcom/wordloco/wordchallenge/c/j;->h:I

    if-ne v0, v1, :cond_3

    .line 228
    iget v0, p0, Lcom/wordloco/wordchallenge/c/j;->g:I

    iget v1, p0, Lcom/wordloco/wordchallenge/c/j;->i:I

    if-ge v0, v1, :cond_2

    .line 229
    const/4 v0, 0x1

    iput v0, p0, Lcom/wordloco/wordchallenge/c/j;->k:I

    goto :goto_0

    .line 231
    :cond_2
    const/4 v0, 0x5

    iput v0, p0, Lcom/wordloco/wordchallenge/c/j;->k:I

    goto :goto_0

    .line 233
    :cond_3
    iget v0, p0, Lcom/wordloco/wordchallenge/c/j;->f:I

    iget v1, p0, Lcom/wordloco/wordchallenge/c/j;->h:I

    if-ge v0, v1, :cond_5

    .line 234
    iget v0, p0, Lcom/wordloco/wordchallenge/c/j;->g:I

    iget v1, p0, Lcom/wordloco/wordchallenge/c/j;->i:I

    if-ge v0, v1, :cond_4

    .line 235
    const/4 v0, 0x3

    iput v0, p0, Lcom/wordloco/wordchallenge/c/j;->k:I

    goto :goto_0

    .line 237
    :cond_4
    const/4 v0, 0x2

    iput v0, p0, Lcom/wordloco/wordchallenge/c/j;->k:I

    goto :goto_0

    .line 239
    :cond_5
    iget v0, p0, Lcom/wordloco/wordchallenge/c/j;->g:I

    iget v1, p0, Lcom/wordloco/wordchallenge/c/j;->i:I

    if-ge v0, v1, :cond_6

    .line 240
    const/4 v0, 0x6

    iput v0, p0, Lcom/wordloco/wordchallenge/c/j;->k:I

    goto :goto_0

    .line 242
    :cond_6
    const/4 v0, 0x7

    iput v0, p0, Lcom/wordloco/wordchallenge/c/j;->k:I

    goto :goto_0
.end method
