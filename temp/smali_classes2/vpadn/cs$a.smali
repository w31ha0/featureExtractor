.class Lvpadn/cs$a;
.super Ljava/util/TimerTask;
.source "VideoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvpadn/cs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lvpadn/cs;


# direct methods
.method constructor <init>(Lvpadn/cs;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lvpadn/cs$a;->a:Lvpadn/cs;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 200
    :try_start_0
    iget-object v0, p0, Lvpadn/cs$a;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->a(Lvpadn/cs;)Lvpadn/cv;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/cs$a;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->b(Lvpadn/cs;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lvpadn/cs$a;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->a(Lvpadn/cs;)Lvpadn/cv;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/cv;->getCurrentPosition()I

    move-result v0

    .line 202
    if-lez v0, :cond_1

    iget-object v1, p0, Lvpadn/cs$a;->a:Lvpadn/cs;

    invoke-static {v1}, Lvpadn/cs;->c(Lvpadn/cs;)I

    move-result v1

    if-nez v1, :cond_1

    .line 203
    iget-object v0, p0, Lvpadn/cs$a;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->d(Lvpadn/cs;)V

    .line 204
    iget-object v0, p0, Lvpadn/cs$a;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->e(Lvpadn/cs;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 205
    iget-object v0, p0, Lvpadn/cs$a;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->e(Lvpadn/cs;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 206
    iget-object v0, p0, Lvpadn/cs$a;->a:Lvpadn/cs;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lvpadn/cs;->a(Lvpadn/cs;Ljava/util/Timer;)Ljava/util/Timer;

    .line 207
    iget-object v0, p0, Lvpadn/cs$a;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->f(Lvpadn/cs;)Lcom/vpadn/widget/VpadnActivity;

    move-result-object v0

    new-instance v1, Lvpadn/cs$c;

    iget-object v2, p0, Lvpadn/cs$a;->a:Lvpadn/cs;

    invoke-direct {v1, v2}, Lvpadn/cs$c;-><init>(Lvpadn/cs;)V

    invoke-virtual {v0, v1}, Lcom/vpadn/widget/VpadnActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 208
    iget-object v0, p0, Lvpadn/cs$a;->a:Lvpadn/cs;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lvpadn/cs;->a(Lvpadn/cs;Z)V

    .line 209
    iget-object v0, p0, Lvpadn/cs$a;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->g(Lvpadn/cs;)Lvpadn/cr;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/cr;->O()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lvpadn/cs$a;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->h(Lvpadn/cs;)V

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v1, p0, Lvpadn/cs$a;->a:Lvpadn/cs;

    invoke-static {v1}, Lvpadn/cs;->c(Lvpadn/cs;)I

    move-result v1

    if-lez v1, :cond_0

    .line 213
    iget-object v1, p0, Lvpadn/cs$a;->a:Lvpadn/cs;

    invoke-static {v1}, Lvpadn/cs;->c(Lvpadn/cs;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 214
    iget-object v0, p0, Lvpadn/cs$a;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->d(Lvpadn/cs;)V

    .line 215
    iget-object v0, p0, Lvpadn/cs$a;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->e(Lvpadn/cs;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 216
    iget-object v0, p0, Lvpadn/cs$a;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->e(Lvpadn/cs;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 217
    iget-object v0, p0, Lvpadn/cs$a;->a:Lvpadn/cs;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lvpadn/cs;->a(Lvpadn/cs;Ljava/util/Timer;)Ljava/util/Timer;

    .line 218
    iget-object v0, p0, Lvpadn/cs$a;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->f(Lvpadn/cs;)Lcom/vpadn/widget/VpadnActivity;

    move-result-object v0

    new-instance v1, Lvpadn/cs$c;

    iget-object v2, p0, Lvpadn/cs$a;->a:Lvpadn/cs;

    invoke-direct {v1, v2}, Lvpadn/cs$c;-><init>(Lvpadn/cs;)V

    invoke-virtual {v0, v1}, Lcom/vpadn/widget/VpadnActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 219
    iget-object v0, p0, Lvpadn/cs$a;->a:Lvpadn/cs;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lvpadn/cs;->a(Lvpadn/cs;Z)V

    .line 220
    iget-object v0, p0, Lvpadn/cs$a;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->g(Lvpadn/cs;)Lvpadn/cr;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/cr;->O()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lvpadn/cs$a;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->h(Lvpadn/cs;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    goto :goto_0
.end method
