.class Lvpadn/af$b;
.super Ljava/util/TimerTask;
.source "VponBannerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvpadn/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lvpadn/af;


# direct methods
.method private constructor <init>(Lvpadn/af;)V
    .locals 0

    .prologue
    .line 1774
    iput-object p1, p0, Lvpadn/af$b;->a:Lvpadn/af;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lvpadn/af;Lvpadn/af$1;)V
    .locals 0

    .prologue
    .line 1774
    invoke-direct {p0, p1}, Lvpadn/af$b;-><init>(Lvpadn/af;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1778
    iget-object v0, p0, Lvpadn/af$b;->a:Lvpadn/af;

    invoke-static {v0}, Lvpadn/af;->n(Lvpadn/af;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1788
    :goto_0
    return-void

    .line 1782
    :cond_0
    iget-object v0, p0, Lvpadn/af$b;->a:Lvpadn/af;

    iget-object v0, v0, Lvpadn/af;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lvpadn/af$b$1;

    invoke-direct {v1, p0}, Lvpadn/af$b$1;-><init>(Lvpadn/af$b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
