.class public Lcom/wordloco/wordchallenge/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/wordloco/wordchallenge/b/c;->a:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/wordloco/wordchallenge/b/c;->b:Ljava/lang/String;

    .line 16
    iput p3, p0, Lcom/wordloco/wordchallenge/b/c;->c:I

    .line 17
    iput p4, p0, Lcom/wordloco/wordchallenge/b/c;->d:I

    .line 18
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/wordloco/wordchallenge/b/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/b/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/wordloco/wordchallenge/d/i;->a(Ljava/lang/String;Z)V

    .line 46
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/wordloco/wordchallenge/b/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/b/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/wordloco/wordchallenge/d/i;->b(Ljava/lang/String;Z)V

    .line 50
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/wordloco/wordchallenge/b/c;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/i;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/wordloco/wordchallenge/b/c;->c:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/wordloco/wordchallenge/b/c;->d:I

    return v0
.end method
