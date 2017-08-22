.class Lvpadn/cs$f;
.super Ljava/util/TimerTask;
.source "VideoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvpadn/cs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lvpadn/cs;

.field private b:I


# direct methods
.method constructor <init>(Lvpadn/cs;)V
    .locals 1

    .prologue
    .line 2881
    iput-object p1, p0, Lvpadn/cs$f;->a:Lvpadn/cs;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 2882
    const/4 v0, -0x1

    iput v0, p0, Lvpadn/cs$f;->b:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0x64

    .line 2886
    :try_start_0
    iget-object v0, p0, Lvpadn/cs$f;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->l(Lvpadn/cs;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lvpadn/cs$f;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->l(Lvpadn/cs;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2887
    iget-object v0, p0, Lvpadn/cs$f;->a:Lvpadn/cs;

    invoke-virtual {v0}, Lvpadn/cs;->t()I

    move-result v1

    .line 2888
    if-ge v4, v1, :cond_0

    const/16 v0, 0xc8

    if-ge v1, v0, :cond_0

    .line 2889
    const/4 v0, -0x1

    iput v0, p0, Lvpadn/cs$f;->b:I

    .line 2892
    :cond_0
    iget v0, p0, Lvpadn/cs$f;->b:I

    sub-int v0, v1, v0

    const/16 v2, 0x50

    if-le v0, v2, :cond_2

    .line 2893
    iget-object v0, p0, Lvpadn/cs$f;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->g(Lvpadn/cs;)Lvpadn/cr;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/cr;->O()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2894
    mul-int/lit16 v0, v0, 0x3e8

    .line 2895
    sub-int v3, v1, v0

    if-lez v3, :cond_1

    sub-int v0, v1, v0

    if-ge v0, v4, :cond_1

    .line 2896
    iput v1, p0, Lvpadn/cs$f;->b:I

    .line 2898
    iget-object v0, p0, Lvpadn/cs$f;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->f(Lvpadn/cs;)Lcom/vpadn/widget/VpadnActivity;

    move-result-object v0

    new-instance v3, Lvpadn/cs$f$1;

    invoke-direct {v3, p0}, Lvpadn/cs$f$1;-><init>(Lvpadn/cs$f;)V

    invoke-virtual {v0, v3}, Lcom/vpadn/widget/VpadnActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2911
    :catch_0
    move-exception v0

    .line 2912
    const-string v1, "VideoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PauseByTimeLocationTimerTask throw exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2914
    :cond_2
    return-void
.end method
