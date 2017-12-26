.class public Lcom/a/a/a/a;
.super Lcom/a/a/a/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/a/a/a/b;-><init>()V

    return-void
.end method

.method public static b()Lcom/a/a/a/a;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/a/a/a/a;

    invoke-static {v0}, Lb/a/a/a/f;->a(Ljava/lang/Class;)Lb/a/a/a/p;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/a;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lb/a/a/a/a/b/q;)V
    .locals 0

    .prologue
    .line 5
    invoke-super {p0, p1}, Lcom/a/a/a/b;->a(Lb/a/a/a/a/b/q;)V

    return-void
.end method

.method public bridge synthetic a(Lb/a/a/a/a/b/r;)V
    .locals 0

    .prologue
    .line 5
    invoke-super {p0, p1}, Lcom/a/a/a/b;->a(Lb/a/a/a/a/b/r;)V

    return-void
.end method

.method public bridge synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5
    invoke-super {p0}, Lcom/a/a/a/b;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5
    invoke-super {p0}, Lcom/a/a/a/b;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
