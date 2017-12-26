.class public Lcom/wordloco/wordchallenge/c/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/wordloco/wordchallenge/c/j;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/wordloco/wordchallenge/c/j;Lcom/wordloco/wordchallenge/c/j;)I
    .locals 2

    .prologue
    .line 10
    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(CIC)Ljava/lang/String;
    .locals 2

    .prologue
    .line 14
    if-lez p2, :cond_1

    .line 15
    new-array v1, p2, [C

    .line 16
    const/4 v0, 0x0

    aput-char p1, v1, v0

    .line 17
    const/4 v0, 0x1

    :goto_0
    if-lt v0, p2, :cond_0

    .line 21
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 23
    :goto_1
    return-object v0

    .line 18
    :cond_0
    aput-char p3, v1, v0

    .line 17
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/wordloco/wordchallenge/c/j;

    check-cast p2, Lcom/wordloco/wordchallenge/c/j;

    invoke-virtual {p0, p1, p2}, Lcom/wordloco/wordchallenge/c/e;->a(Lcom/wordloco/wordchallenge/c/j;Lcom/wordloco/wordchallenge/c/j;)I

    move-result v0

    return v0
.end method
