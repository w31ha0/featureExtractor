.class final Lcom/netflix/mediaclient/service/PrepareHelperImpl$TtrBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PrepareHelperImpl.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/PrepareHelperImpl;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/service/PrepareHelperImpl;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/netflix/mediaclient/service/PrepareHelperImpl$TtrBroadcastReceiver;->this$0:Lcom/netflix/mediaclient/service/PrepareHelperImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/service/PrepareHelperImpl;Lcom/netflix/mediaclient/service/PrepareHelperImpl$1;)V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/PrepareHelperImpl$TtrBroadcastReceiver;-><init>(Lcom/netflix/mediaclient/service/PrepareHelperImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 142
    const-string/jumbo v0, "nf_prepareHelperImpl"

    const-string/jumbo v1, "TTR done broadcast received, process any pending items."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/netflix/mediaclient/service/PrepareHelperImpl$TtrBroadcastReceiver;->this$0:Lcom/netflix/mediaclient/service/PrepareHelperImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/PrepareHelperImpl;->access$100(Lcom/netflix/mediaclient/service/PrepareHelperImpl;)V

    .line 144
    return-void
.end method
