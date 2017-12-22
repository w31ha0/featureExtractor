.class public final Lcom/netflix/mediaclient/service/user/PartnerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PartnerReceiver.java"


# static fields
.field private static final EXTRA_LOGGEDIN:Ljava/lang/String; = "loggedIn"

.field private static final TAG:Ljava/lang/String; = "nf_receiver"

.field private static final USER_STATUS_REQUEST:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.USER_STATUS"

.field private static final USER_STATUS_RESPONSE:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.USER_STATUS_RESPONSE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static broadcastUserStatus(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 84
    const-string/jumbo v0, "nf_receiver"

    const-string/jumbo v1, "broadcastUserStatus"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.USER_STATUS_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    const-string/jumbo v1, "loggedIn"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 88
    return-void
.end method

.method private handleUsertatus(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 65
    const-string/jumbo v0, "nf_receiver"

    const-string/jumbo v1, "Received user status request"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string/jumbo v0, "nf_user_status_loggedin"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 73
    invoke-static {p1, v0}, Lcom/netflix/mediaclient/service/user/PartnerReceiver;->broadcastUserStatus(Landroid/content/Context;Z)V

    .line 74
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 47
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.USER_STATUS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/user/PartnerReceiver;->handleUsertatus(Landroid/content/Context;Landroid/content/Intent;)V

    .line 55
    :goto_0
    return-void

    .line 52
    :cond_0
    const-string/jumbo v0, "nf_receiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received Unintented action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
