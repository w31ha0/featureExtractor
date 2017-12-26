.class public Lcom/wordloco/wordchallenge/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field a:Z

.field b:I

.field c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-boolean v0, p0, Lcom/wordloco/wordchallenge/c/d;->a:Z

    .line 7
    iput v0, p0, Lcom/wordloco/wordchallenge/c/d;->d:I

    .line 8
    iput v0, p0, Lcom/wordloco/wordchallenge/c/d;->b:I

    .line 13
    iput v0, p0, Lcom/wordloco/wordchallenge/c/d;->c:I

    .line 17
    return-void
.end method

.method public constructor <init>(ZIIIIII)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-boolean v0, p0, Lcom/wordloco/wordchallenge/c/d;->a:Z

    .line 7
    iput v0, p0, Lcom/wordloco/wordchallenge/c/d;->d:I

    .line 8
    iput v0, p0, Lcom/wordloco/wordchallenge/c/d;->b:I

    .line 13
    iput v0, p0, Lcom/wordloco/wordchallenge/c/d;->c:I

    .line 21
    iput-boolean p1, p0, Lcom/wordloco/wordchallenge/c/d;->a:Z

    .line 22
    iput p2, p0, Lcom/wordloco/wordchallenge/c/d;->d:I

    .line 23
    iput p3, p0, Lcom/wordloco/wordchallenge/c/d;->b:I

    .line 24
    iput p4, p0, Lcom/wordloco/wordchallenge/c/d;->e:I

    .line 25
    iput p5, p0, Lcom/wordloco/wordchallenge/c/d;->f:I

    .line 26
    iput p6, p0, Lcom/wordloco/wordchallenge/c/d;->g:I

    .line 27
    iput p7, p0, Lcom/wordloco/wordchallenge/c/d;->h:I

    .line 29
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/wordloco/wordchallenge/c/d;->d:I

    .line 45
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/wordloco/wordchallenge/c/d;->a:Z

    .line 37
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/wordloco/wordchallenge/c/d;->a:Z

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/wordloco/wordchallenge/c/d;->d:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/wordloco/wordchallenge/c/d;->b:I

    .line 53
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/wordloco/wordchallenge/c/d;->b:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/wordloco/wordchallenge/c/d;->e:I

    .line 61
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/wordloco/wordchallenge/c/d;->e:I

    return v0
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lcom/wordloco/wordchallenge/c/d;->f:I

    .line 69
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/wordloco/wordchallenge/c/d;->f:I

    return v0
.end method

.method public e(I)V
    .locals 0

    .prologue
    .line 76
    iput p1, p0, Lcom/wordloco/wordchallenge/c/d;->g:I

    .line 77
    return-void
.end method

.method public f()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/wordloco/wordchallenge/c/d;->g:I

    return v0
.end method

.method public f(I)V
    .locals 0

    .prologue
    .line 84
    iput p1, p0, Lcom/wordloco/wordchallenge/c/d;->h:I

    .line 85
    return-void
.end method

.method public g()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/wordloco/wordchallenge/c/d;->h:I

    return v0
.end method

.method public g(I)V
    .locals 0

    .prologue
    .line 92
    iput p1, p0, Lcom/wordloco/wordchallenge/c/d;->c:I

    .line 93
    return-void
.end method

.method public h()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/wordloco/wordchallenge/c/d;->c:I

    return v0
.end method
