.class Lvpadn/af$a;
.super Ljava/util/TimerTask;
.source "VponBannerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvpadn/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lvpadn/af;


# direct methods
.method private constructor <init>(Lvpadn/af;)V
    .locals 0

    .prologue
    .line 1747
    iput-object p1, p0, Lvpadn/af$a;->a:Lvpadn/af;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lvpadn/af;Lvpadn/af$1;)V
    .locals 0

    .prologue
    .line 1747
    invoke-direct {p0, p1}, Lvpadn/af$a;-><init>(Lvpadn/af;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1751
    iget-object v0, p0, Lvpadn/af$a;->a:Lvpadn/af;

    invoke-static {v0}, Lvpadn/af;->e(Lvpadn/af;)Lvpadn/ax;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/af$a;->a:Lvpadn/af;

    invoke-static {v0}, Lvpadn/af;->e(Lvpadn/af;)Lvpadn/ax;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/ax;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1759
    :goto_0
    return-void

    .line 1754
    :cond_0
    const/16 v0, 0x3e8

    .line 1755
    iget-object v1, p0, Lvpadn/af$a;->a:Lvpadn/af;

    invoke-static {v1}, Lvpadn/af;->m(Lvpadn/af;)I

    move-result v1

    if-lez v1, :cond_1

    .line 1756
    const/16 v0, 0x1f4

    .line 1758
    :cond_1
    iget-object v1, p0, Lvpadn/af$a;->a:Lvpadn/af;

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lvpadn/af;->b(Lvpadn/af;J)V

    goto :goto_0
.end method
