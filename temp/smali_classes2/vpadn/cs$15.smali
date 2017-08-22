.class Lvpadn/cs$15;
.super Ljava/util/TimerTask;
.source "VideoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/cs;->ar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lvpadn/cs;


# direct methods
.method constructor <init>(Lvpadn/cs;Z)V
    .locals 0

    .prologue
    .line 2481
    iput-object p1, p0, Lvpadn/cs$15;->b:Lvpadn/cs;

    iput-boolean p2, p0, Lvpadn/cs$15;->a:Z

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2484
    iget-object v0, p0, Lvpadn/cs$15;->b:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->f(Lvpadn/cs;)Lcom/vpadn/widget/VpadnActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2485
    iget-object v0, p0, Lvpadn/cs$15;->b:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->f(Lvpadn/cs;)Lcom/vpadn/widget/VpadnActivity;

    move-result-object v0

    new-instance v1, Lvpadn/cs$15$1;

    invoke-direct {v1, p0}, Lvpadn/cs$15$1;-><init>(Lvpadn/cs$15;)V

    invoke-virtual {v0, v1}, Lcom/vpadn/widget/VpadnActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2502
    :cond_0
    return-void
.end method
