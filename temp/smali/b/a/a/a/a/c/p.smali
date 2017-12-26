.class public abstract Lb/a/a/a/a/c/p;
.super Lb/a/a/a/a/c/a;
.source "SourceFile"

# interfaces
.implements Lb/a/a/a/a/c/l;
.implements Lb/a/a/a/a/c/u;
.implements Lb/a/a/a/a/c/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Lb/a/a/a/a/c/a",
        "<TParams;TProgress;TResult;>;",
        "Lb/a/a/a/a/c/l",
        "<",
        "Lb/a/a/a/a/c/y;",
        ">;",
        "Lb/a/a/a/a/c/u;",
        "Lb/a/a/a/a/c/y;"
    }
.end annotation


# instance fields
.field private final a:Lb/a/a/a/a/c/v;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lb/a/a/a/a/c/a;-><init>()V

    .line 20
    new-instance v0, Lb/a/a/a/a/c/v;

    invoke-direct {v0}, Lb/a/a/a/a/c/v;-><init>()V

    iput-object v0, p0, Lb/a/a/a/a/c/p;->a:Lb/a/a/a/a/c/v;

    .line 21
    return-void
.end method


# virtual methods
.method public a(Lb/a/a/a/a/c/y;)V
    .locals 2

    .prologue
    .line 41
    invoke-virtual {p0}, Lb/a/a/a/a/c/p;->a_()Lb/a/a/a/a/c/j;

    move-result-object v0

    sget-object v1, Lb/a/a/a/a/c/j;->a:Lb/a/a/a/a/c/j;

    if-eq v0, v1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must not add Dependency after task is running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    invoke-virtual {p0}, Lb/a/a/a/a/c/p;->g()Lb/a/a/a/a/c/l;

    move-result-object v0

    check-cast v0, Lb/a/a/a/a/c/u;

    check-cast v0, Lb/a/a/a/a/c/l;

    invoke-interface {v0, p1}, Lb/a/a/a/a/c/l;->c(Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lb/a/a/a/a/c/p;->g()Lb/a/a/a/a/c/l;

    move-result-object v0

    check-cast v0, Lb/a/a/a/a/c/u;

    check-cast v0, Lb/a/a/a/a/c/y;

    invoke-interface {v0, p1}, Lb/a/a/a/a/c/y;->a(Ljava/lang/Throwable;)V

    .line 75
    return-void
.end method

.method public final varargs a(Ljava/util/concurrent/ExecutorService;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            "[TParams;)V"
        }
    .end annotation

    .prologue
    .line 25
    new-instance v0, Lb/a/a/a/a/c/q;

    invoke-direct {v0, p1, p0}, Lb/a/a/a/a/c/q;-><init>(Ljava/util/concurrent/Executor;Lb/a/a/a/a/c/p;)V

    .line 26
    invoke-super {p0, v0, p2}, Lb/a/a/a/a/c/a;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lb/a/a/a/a/c/a;

    .line 27
    return-void
.end method

.method public b()Lb/a/a/a/a/c/o;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lb/a/a/a/a/c/p;->g()Lb/a/a/a/a/c/l;

    move-result-object v0

    check-cast v0, Lb/a/a/a/a/c/u;

    invoke-interface {v0}, Lb/a/a/a/a/c/u;->b()Lb/a/a/a/a/c/o;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lb/a/a/a/a/c/p;->g()Lb/a/a/a/a/c/l;

    move-result-object v0

    check-cast v0, Lb/a/a/a/a/c/u;

    check-cast v0, Lb/a/a/a/a/c/y;

    invoke-interface {v0, p1}, Lb/a/a/a/a/c/y;->b(Z)V

    .line 65
    return-void
.end method

.method public c()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lb/a/a/a/a/c/y;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0}, Lb/a/a/a/a/c/p;->g()Lb/a/a/a/a/c/l;

    move-result-object v0

    check-cast v0, Lb/a/a/a/a/c/u;

    check-cast v0, Lb/a/a/a/a/c/l;

    invoke-interface {v0}, Lb/a/a/a/a/c/l;->c()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lb/a/a/a/a/c/y;

    invoke-virtual {p0, p1}, Lb/a/a/a/a/c/p;->a(Lb/a/a/a/a/c/y;)V

    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 31
    invoke-static {p0, p1}, Lb/a/a/a/a/c/o;->a(Lb/a/a/a/a/c/u;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lb/a/a/a/a/c/p;->g()Lb/a/a/a/a/c/l;

    move-result-object v0

    check-cast v0, Lb/a/a/a/a/c/u;

    check-cast v0, Lb/a/a/a/a/c/l;

    invoke-interface {v0}, Lb/a/a/a/a/c/l;->d()Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lb/a/a/a/a/c/p;->g()Lb/a/a/a/a/c/l;

    move-result-object v0

    check-cast v0, Lb/a/a/a/a/c/u;

    check-cast v0, Lb/a/a/a/a/c/y;

    invoke-interface {v0}, Lb/a/a/a/a/c/y;->f()Z

    move-result v0

    return v0
.end method

.method public g()Lb/a/a/a/a/c/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lb/a/a/a/a/c/l",
            "<",
            "Lb/a/a/a/a/c/y;",
            ">;:",
            "Lb/a/a/a/a/c/u;",
            ":",
            "Lb/a/a/a/a/c/y;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lb/a/a/a/a/c/p;->a:Lb/a/a/a/a/c/v;

    return-object v0
.end method
