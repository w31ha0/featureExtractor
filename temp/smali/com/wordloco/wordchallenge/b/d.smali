.class public Lcom/wordloco/wordchallenge/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean v0, p0, Lcom/wordloco/wordchallenge/b/d;->g:Z

    .line 17
    iput v0, p0, Lcom/wordloco/wordchallenge/b/d;->h:I

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean v2, p0, Lcom/wordloco/wordchallenge/b/d;->g:Z

    .line 17
    iput v2, p0, Lcom/wordloco/wordchallenge/b/d;->h:I

    .line 23
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->u()I

    move-result v0

    iput v0, p0, Lcom/wordloco/wordchallenge/b/d;->a:I

    .line 29
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    const/16 v0, 0xa

    iput v0, p0, Lcom/wordloco/wordchallenge/b/d;->b:I

    .line 31
    iput v2, p0, Lcom/wordloco/wordchallenge/b/d;->d:I

    .line 32
    iput v2, p0, Lcom/wordloco/wordchallenge/b/d;->c:I

    .line 50
    :goto_0
    return-void

    .line 34
    :cond_0
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->A()I

    move-result v0

    sget-object v1, Lcom/wordloco/wordchallenge/b/a;->e:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 35
    sget-object v0, Lcom/wordloco/wordchallenge/b/a;->e:[I

    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->A()I

    move-result v1

    aget v0, v0, v1

    iput v0, p0, Lcom/wordloco/wordchallenge/b/d;->b:I

    .line 36
    iput v2, p0, Lcom/wordloco/wordchallenge/b/d;->d:I

    .line 37
    iput v2, p0, Lcom/wordloco/wordchallenge/b/d;->c:I

    goto :goto_0

    .line 39
    :cond_1
    invoke-static {}, Lcom/wordloco/wordchallenge/d/j;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 40
    invoke-static {}, Lcom/wordloco/wordchallenge/d/h;->a()V

    .line 41
    invoke-static {}, Lcom/wordloco/wordchallenge/d/h;->b()V

    .line 43
    :cond_2
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->I()I

    move-result v0

    iput v0, p0, Lcom/wordloco/wordchallenge/b/d;->b:I

    .line 44
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->J()I

    move-result v0

    iput v0, p0, Lcom/wordloco/wordchallenge/b/d;->d:I

    .line 45
    iput v2, p0, Lcom/wordloco/wordchallenge/b/d;->c:I

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lcom/wordloco/wordchallenge/b/d;->a:I

    .line 66
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/wordloco/wordchallenge/b/d;->g:Z

    .line 114
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 53
    iget v0, p0, Lcom/wordloco/wordchallenge/b/d;->a:I

    sget v1, Lcom/wordloco/wordchallenge/b/a;->i:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/wordloco/wordchallenge/b/d;->a:I

    sget v1, Lcom/wordloco/wordchallenge/b/a;->j:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/wordloco/wordchallenge/b/d;->a:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 73
    iput p1, p0, Lcom/wordloco/wordchallenge/b/d;->b:I

    .line 74
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/wordloco/wordchallenge/b/d;->b:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 81
    iput p1, p0, Lcom/wordloco/wordchallenge/b/d;->c:I

    .line 82
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/wordloco/wordchallenge/b/d;->c:I

    return v0
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 89
    iput p1, p0, Lcom/wordloco/wordchallenge/b/d;->d:I

    .line 90
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/wordloco/wordchallenge/b/d;->d:I

    return v0
.end method

.method public e(I)V
    .locals 0

    .prologue
    .line 97
    iput p1, p0, Lcom/wordloco/wordchallenge/b/d;->e:I

    .line 98
    return-void
.end method

.method public f()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/wordloco/wordchallenge/b/d;->e:I

    return v0
.end method

.method public f(I)V
    .locals 0

    .prologue
    .line 105
    iput p1, p0, Lcom/wordloco/wordchallenge/b/d;->f:I

    .line 106
    return-void
.end method

.method public g()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/wordloco/wordchallenge/b/d;->f:I

    return v0
.end method

.method public g(I)V
    .locals 0

    .prologue
    .line 121
    iput p1, p0, Lcom/wordloco/wordchallenge/b/d;->h:I

    .line 122
    return-void
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/wordloco/wordchallenge/b/d;->g:Z

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/wordloco/wordchallenge/b/d;->h:I

    return v0
.end method
