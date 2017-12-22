.class Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog$1;
.super Ljava/lang/Object;
.source "MdxSessionWatchDog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog$1;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/32 v4, 0x493e0

    .line 25
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog$1;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;->access$000(Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;)Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog$SessionWatchDogInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog$SessionWatchDogInterface;->onGetTimeOfMostRecentIncomingMessage()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v2, v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 27
    const-string/jumbo v0, "nf_mdxSessionWatchDog"

    const-string/jumbo v1, "MdxSessionWatchDog:  expired"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog$1;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;->access$000(Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;)Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog$SessionWatchDogInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog$SessionWatchDogInterface;->onSessionWatchDogExpired()V

    .line 33
    :goto_0
    return-void

    .line 30
    :cond_0
    const-string/jumbo v0, "nf_mdxSessionWatchDog"

    const-string/jumbo v1, "MdxSessionWatchDog: check if session still alive"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog$1;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;->access$200(Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog$1;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;->access$100(Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
