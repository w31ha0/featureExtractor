.class Lvpadn/cs$e;
.super Ljava/util/TimerTask;
.source "VideoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvpadn/cs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lvpadn/cs;


# direct methods
.method constructor <init>(Lvpadn/cs;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lvpadn/cs$e;->a:Lvpadn/cs;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 245
    iget-object v0, p0, Lvpadn/cs$e;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->b(Lvpadn/cs;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lvpadn/cs$e;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->f(Lvpadn/cs;)Lcom/vpadn/widget/VpadnActivity;

    move-result-object v0

    new-instance v1, Lvpadn/cs$d;

    iget-object v2, p0, Lvpadn/cs$e;->a:Lvpadn/cs;

    invoke-direct {v1, v2}, Lvpadn/cs$d;-><init>(Lvpadn/cs;)V

    invoke-virtual {v0, v1}, Lcom/vpadn/widget/VpadnActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 248
    :cond_0
    return-void
.end method
