.class public Lcom/netflix/mediaclient/service/PartnerUserAgentBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PartnerUserAgentBroadcastReceiver.java"


# static fields
.field public static final LOGOUT_INTENT:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOGOUT"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/netflix/mediaclient/service/PartnerUserAgentBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/PartnerUserAgentBroadcastReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/netflix/mediaclient/service/PartnerUserAgentBroadcastReceiver;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    .line 30
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 38
    sget-object v0, Lcom/netflix/mediaclient/service/PartnerUserAgentBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "on receive intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/service/PartnerUserAgentBroadcastReceiver;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    if-eqz v0, :cond_0

    .line 40
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.LOGOUT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/service/PartnerUserAgentBroadcastReceiver;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->logoutUser()V

    .line 44
    :cond_0
    return-void
.end method
