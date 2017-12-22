.class Lcom/netflix/mediaclient/service/mdx/MdxAgent$7;
.super Landroid/content/BroadcastReceiver;
.source "MdxAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V
    .locals 0

    .prologue
    .line 1360
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$7;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 1364
    if-nez p2, :cond_1

    .line 1365
    const-string/jumbo v0, "MdxAgent"

    const-string/jumbo v1, "Null intent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    :cond_0
    :goto_0
    return-void

    .line 1368
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$7;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->isReady()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1369
    const-string/jumbo v0, "MdxAgent"

    const-string/jumbo v1, "mUserAgentReceiver MdxAgent not ready, ignoring"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1372
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1373
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.NOTIFY_USER_PROFILE_ACTIVE"

    .line 1374
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1375
    const-string/jumbo v0, "MdxAgent"

    const-string/jumbo v1, "useprofile is active"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$7;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$3600(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Z)V

    goto :goto_0

    .line 1377
    :cond_3
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.NOTIFY_USER_PROFILE_DEACTIVE"

    .line 1378
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1379
    const-string/jumbo v0, "MdxAgent"

    const-string/jumbo v1, "useprofile is not active"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$7;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$3600(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Z)V

    goto :goto_0

    .line 1381
    :cond_4
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.NOTIFY_USER_ACCOUNT_ACTIVE"

    .line 1382
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1383
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$7;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$3700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V

    .line 1384
    const-string/jumbo v0, "MdxAgent"

    const-string/jumbo v1, "user account is activated"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1385
    :cond_5
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.NOTIFY_USER_ACCOUNT_DEACTIVE"

    .line 1386
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1387
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$7;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$3800(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V

    .line 1388
    const-string/jumbo v0, "MdxAgent"

    const-string/jumbo v1, "user account is deactivated"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
