.class Lcom/netflix/mediaclient/service/logging/DialLoggingImpl;
.super Ljava/lang/Object;
.source "DialLoggingImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/DialLogging;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_log_dial"


# instance fields
.field private final mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/EventHandler;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/DialLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    .line 25
    return-void
.end method

.method private handleServerDiscovered(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 56
    const-string/jumbo v0, "esn"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    const-string/jumbo v1, "headers"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    const-string/jumbo v2, "desc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/DialLoggingImpl;->serverDiscovered(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method


# virtual methods
.method public handleIntent(Landroid/content/Intent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 39
    const/4 v0, 0x1

    .line 41
    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_1

    move v0, v1

    .line 51
    :goto_1
    return v0

    .line 41
    :pswitch_0
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.LOG_DIAL_SERVER_DISCOVERED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    goto :goto_0

    .line 43
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/DialLoggingImpl;->handleServerDiscovered(Landroid/content/Intent;)V

    goto :goto_1

    .line 41
    :pswitch_data_0
    .packed-switch -0x5f008a62
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public serverDiscovered(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 30
    const-string/jumbo v0, "nf_log_dial"

    const-string/jumbo v1, "serverDiscovered"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    new-instance v0, Lcom/netflix/mediaclient/service/logging/dial/model/ServerDiscoveredEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/dial/model/ServerDiscoveredEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/DialLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 34
    return-void
.end method
