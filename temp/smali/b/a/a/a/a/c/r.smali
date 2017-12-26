.class Lb/a/a/a/a/c/r;
.super Lb/a/a/a/a/c/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/a/a/a/c/t",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lb/a/a/a/a/c/q;


# direct methods
.method constructor <init>(Lb/a/a/a/a/c/q;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lb/a/a/a/a/c/r;->a:Lb/a/a/a/a/c/q;

    invoke-direct {p0, p2, p3}, Lb/a/a/a/a/c/t;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Lb/a/a/a/a/c/l;
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
    .line 102
    iget-object v0, p0, Lb/a/a/a/a/c/r;->a:Lb/a/a/a/a/c/q;

    invoke-static {v0}, Lb/a/a/a/a/c/q;->a(Lb/a/a/a/a/c/q;)Lb/a/a/a/a/c/p;

    move-result-object v0

    return-object v0
.end method
