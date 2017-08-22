.class Lvpadn/n$d$1;
.super Ljava/lang/Object;
.source "NativeToJsMessageQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvpadn/n$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvpadn/n$d;


# direct methods
.method constructor <init>(Lvpadn/n$d;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lvpadn/n$d$1;->a:Lvpadn/n$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 307
    iget-object v1, p0, Lvpadn/n$d$1;->a:Lvpadn/n$d;

    iget-object v1, v1, Lvpadn/n$d;->c:Lvpadn/n;

    invoke-static {v1}, Lvpadn/n;->d(Lvpadn/n;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 308
    iget-object v1, p0, Lvpadn/n$d$1;->a:Lvpadn/n$d;

    iget-object v2, p0, Lvpadn/n$d$1;->a:Lvpadn/n$d;

    iget-boolean v2, v2, Lvpadn/n$d;->a:Z

    if-nez v2, :cond_1

    :goto_0
    iput-boolean v0, v1, Lvpadn/n$d;->a:Z

    .line 310
    :try_start_0
    iget-object v0, p0, Lvpadn/n$d$1;->a:Lvpadn/n$d;

    iget-object v0, v0, Lvpadn/n$d;->c:Lvpadn/n;

    invoke-static {v0}, Lvpadn/n;->b(Lvpadn/n;)Lvpadn/f;

    move-result-object v0

    iget-object v1, p0, Lvpadn/n$d$1;->a:Lvpadn/n$d;

    iget-boolean v1, v1, Lvpadn/n$d;->a:Z

    invoke-virtual {v0, v1}, Lvpadn/f;->setNetworkAvailable(Z)V

    .line 311
    iget-object v0, p0, Lvpadn/n$d$1;->a:Lvpadn/n$d;

    iget-boolean v0, v0, Lvpadn/n$d;->a:Z

    if-nez v0, :cond_0

    .line 313
    iget-object v0, p0, Lvpadn/n$d$1;->a:Lvpadn/n$d;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lvpadn/n$d;->a:Z

    .line 314
    iget-object v0, p0, Lvpadn/n$d$1;->a:Lvpadn/n$d;

    iget-object v0, v0, Lvpadn/n$d;->c:Lvpadn/n;

    invoke-static {v0}, Lvpadn/n;->b(Lvpadn/n;)Lvpadn/f;

    move-result-object v0

    iget-object v1, p0, Lvpadn/n$d$1;->a:Lvpadn/n$d;

    iget-boolean v1, v1, Lvpadn/n$d;->a:Z

    invoke-virtual {v0, v1}, Lvpadn/f;->setNetworkAvailable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :cond_0
    :goto_1
    return-void

    .line 308
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 316
    :catch_0
    move-exception v0

    .line 318
    const-string v1, "JsMessageQueue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnlineEventsBridgeMode class throw Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
