.class public Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$StaticMethodWrapper;
.super Ljava/lang/Object;
.source "TWMAdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StaticMethodWrapper"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isShowing()Z
    .locals 1

    .prologue
    .line 512
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->a()Z

    move-result v0

    return v0
.end method

.method public launchAdActivity(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 497
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;

    .line 498
    if-eqz v0, :cond_0

    .line 499
    const-string v1, "_context"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 500
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 501
    const-class v3, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    .line 500
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 502
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 503
    const-string v2, "txId"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->a(Z)V

    .line 505
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 509
    :goto_0
    return-void

    .line 507
    :cond_0
    const-string v0, "TWMAdActivity"

    const-string v1, "AdUnit is null in AdManager"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
