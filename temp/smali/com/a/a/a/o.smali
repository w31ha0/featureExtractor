.class Lcom/a/a/a/o;
.super Lb/a/a/a/a/d/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/a/a/a/d/g",
        "<",
        "Lcom/a/a/a/k;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lb/a/a/a/a/d/o;Lcom/a/a/a/h;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lb/a/a/a/a/d/o",
            "<",
            "Lcom/a/a/a/k;",
            ">;",
            "Lcom/a/a/a/h;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Lb/a/a/a/a/d/g;-><init>(Landroid/content/Context;Lb/a/a/a/a/d/o;Lb/a/a/a/a/d/d;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 16
    return-void
.end method

.method static synthetic a(Lcom/a/a/a/o;)Lb/a/a/a/a/d/o;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/a/a/a/o;->c:Lb/a/a/a/a/d/o;

    return-object v0
.end method


# virtual methods
.method protected a()Lb/a/a/a/a/d/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/a/a/a/a/d/o",
            "<",
            "Lcom/a/a/a/k;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    new-instance v0, Lcom/a/a/a/f;

    invoke-direct {v0}, Lcom/a/a/a/f;-><init>()V

    return-object v0
.end method

.method protected a(Lb/a/a/a/a/g/b;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/a/a/a/p;

    invoke-direct {v0, p0, p1, p2}, Lcom/a/a/a/p;-><init>(Lcom/a/a/a/o;Lb/a/a/a/a/g/b;Ljava/lang/String;)V

    invoke-super {p0, v0}, Lb/a/a/a/a/d/g;->b(Ljava/lang/Runnable;)V

    .line 37
    return-void
.end method
