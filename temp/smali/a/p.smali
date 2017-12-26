.class La/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/j",
        "<TTResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:La/s;

.field final synthetic b:La/j;

.field final synthetic c:Ljava/util/concurrent/Executor;

.field final synthetic d:La/k;


# direct methods
.method constructor <init>(La/k;La/s;La/j;Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, La/p;->d:La/k;

    iput-object p2, p0, La/p;->a:La/s;

    iput-object p3, p0, La/p;->b:La/j;

    iput-object p4, p0, La/p;->c:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/k;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/k",
            "<TTResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 342
    iget-object v0, p0, La/p;->a:La/s;

    iget-object v1, p0, La/p;->b:La/j;

    iget-object v2, p0, La/p;->c:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1, v2}, La/k;->b(La/s;La/j;La/k;Ljava/util/concurrent/Executor;)V

    .line 343
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic then(La/k;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 339
    invoke-virtual {p0, p1}, La/p;->a(La/k;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
