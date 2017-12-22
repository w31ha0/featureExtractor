.class Lcom/netflix/mediaclient/NetflixApplication$2;
.super Landroid/content/BroadcastReceiver;
.source "NetflixApplication.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/NetflixApplication;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/NetflixApplication;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/netflix/mediaclient/NetflixApplication$2;->this$0:Lcom/netflix/mediaclient/NetflixApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 357
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 358
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.NETFLIX_SERVICE_DESTROYED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 359
    const-string/jumbo v0, "NetflixApplication"

    const-string/jumbo v1, "Netflix service is destroyed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication$2;->this$0:Lcom/netflix/mediaclient/NetflixApplication;

    invoke-static {v0}, Lcom/netflix/mediaclient/NetflixApplication;->access$000(Lcom/netflix/mediaclient/NetflixApplication;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.NETFLIX_SERVICE_INIT_COMPLETE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    const-string/jumbo v0, "status_code"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/StatusCode;

    .line 369
    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->isSucess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 370
    const-string/jumbo v0, "NetflixApplication"

    const-string/jumbo v1, " Netflix application is ready"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication$2;->this$0:Lcom/netflix/mediaclient/NetflixApplication;

    invoke-static {v0}, Lcom/netflix/mediaclient/NetflixApplication;->access$000(Lcom/netflix/mediaclient/NetflixApplication;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 373
    :cond_2
    const-string/jumbo v0, "NetflixApplication"

    const-string/jumbo v1, " Netflix application is NOT ready"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication$2;->this$0:Lcom/netflix/mediaclient/NetflixApplication;

    invoke-static {v0}, Lcom/netflix/mediaclient/NetflixApplication;->access$000(Lcom/netflix/mediaclient/NetflixApplication;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method
