.class Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c$1;
.super Ljava/util/TimerTask;
.source "TWMAdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;

.field private final synthetic b:J

.field private final synthetic c:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;JLjava/lang/Integer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;

    iput-wide p2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c$1;->b:J

    iput-object p4, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c$1;->c:Ljava/lang/Integer;

    .line 152
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 156
    const-string v0, "TWMAdActivity"

    const-string v1, "timerTasker runs"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->a(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;)I

    move-result v1

    int-to-long v2, v1

    iget-wide v4, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c$1;->b:J

    add-long/2addr v2, v4

    long-to-int v1, v2

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->a(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;I)V

    .line 158
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->d(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;)Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->c(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 159
    const-string v1, "http://agent.tamedia.com.tw/rmadp/g/adv"

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;

    invoke-static {v2}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->b(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;)Ljava/lang/String;

    move-result-object v2

    .line 160
    const-string v3, "I"

    const-string v4, "1"

    iget-object v5, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;

    invoke-static {v5}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->a(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;)I

    move-result v5

    .line 158
    invoke-static/range {v0 .. v5}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->reportVideoProgress(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 161
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->c(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->b(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;I)V

    .line 162
    const-string v0, "TWMAdActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "counts/maxReportTimes : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;

    invoke-static {v2}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->c(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c$1;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c$1;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->c(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;)I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->d(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;)Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->d(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->d(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;)Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->d(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 166
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->d(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;)Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->d(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 169
    :cond_0
    return-void
.end method
