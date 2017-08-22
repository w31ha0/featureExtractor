.class Lvpadn/cs$17;
.super Ljava/util/TimerTask;
.source "VideoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/cs;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvpadn/cs;


# direct methods
.method constructor <init>(Lvpadn/cs;)V
    .locals 0

    .prologue
    .line 2570
    iput-object p1, p0, Lvpadn/cs$17;->a:Lvpadn/cs;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2573
    iget-object v0, p0, Lvpadn/cs$17;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->b(Lvpadn/cs;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lvpadn/cs$17;->a:Lvpadn/cs;

    iget-boolean v0, v0, Lvpadn/cs;->a:Z

    if-nez v0, :cond_0

    .line 2574
    iget-object v0, p0, Lvpadn/cs$17;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->f(Lvpadn/cs;)Lcom/vpadn/widget/VpadnActivity;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/vpadn/widget/VpadnActivity;->setRequestedOrientation(I)V

    .line 2576
    :cond_0
    return-void
.end method
