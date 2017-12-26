.class Lcom/a/a/a/g;
.super Lb/a/a/a/a/d/b;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/a/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/a/a/a/d/b",
        "<",
        "Lcom/a/a/a/k;",
        ">;",
        "Lcom/a/a/a/j",
        "<",
        "Lcom/a/a/a/k;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lb/a/a/a/a/d/q;

.field private final g:Lb/a/a/a/a/e/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/a/a/a/h;Lb/a/a/a/a/e/m;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lb/a/a/a/a/d/b;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lb/a/a/a/a/d/d;)V

    .line 29
    iput-object p4, p0, Lcom/a/a/a/g;->g:Lb/a/a/a/a/e/m;

    .line 30
    return-void
.end method


# virtual methods
.method public a()Lb/a/a/a/a/d/q;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/a/a/a/g;->a:Lb/a/a/a/a/d/q;

    return-object v0
.end method

.method public a(Lb/a/a/a/a/g/b;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 40
    new-instance v0, Lcom/a/a/a/e;

    invoke-static {}, Lcom/a/a/a/a;->b()Lcom/a/a/a/a;

    move-result-object v1

    iget-object v3, p1, Lb/a/a/a/a/g/b;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/a/a/a/g;->g:Lb/a/a/a/a/e/m;

    new-instance v2, Lb/a/a/a/a/b/k;

    invoke-direct {v2}, Lb/a/a/a/a/b/k;-><init>()V

    iget-object v5, p0, Lcom/a/a/a/g;->b:Landroid/content/Context;

    invoke-virtual {v2, v5}, Lb/a/a/a/a/b/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/a/a/a/e;-><init>(Lb/a/a/a/p;Ljava/lang/String;Ljava/lang/String;Lb/a/a/a/a/e/m;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/a/a/a/g;->a:Lb/a/a/a/a/d/q;

    .line 44
    iget-object v0, p0, Lcom/a/a/a/g;->d:Lb/a/a/a/a/d/d;

    check-cast v0, Lcom/a/a/a/h;

    invoke-virtual {v0, p1}, Lcom/a/a/a/h;->a(Lb/a/a/a/a/g/b;)V

    .line 46
    iget v0, p1, Lb/a/a/a/a/g/b;->b:I

    invoke-virtual {p0, v0}, Lcom/a/a/a/g;->a(I)V

    .line 47
    return-void
.end method
