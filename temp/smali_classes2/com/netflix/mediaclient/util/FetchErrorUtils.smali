.class public final Lcom/netflix/mediaclient/util/FetchErrorUtils;
.super Ljava/lang/Object;
.source "FetchErrorUtils.java"


# static fields
.field public static final ACTION_DELETED_PROFILE:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.DELETED_PROFILE"

.field private static final TAG:Ljava/lang/String; = "nf_fetcherrorutils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAccountError(Lcom/netflix/mediaclient/StatusCode;)Z
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->DELETED_PROFILE:Lcom/netflix/mediaclient/StatusCode;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static notifyOthersOfAccountErrors(Landroid/content/Context;Lcom/netflix/mediaclient/StatusCode;)V
    .locals 2

    .prologue
    .line 24
    const-string/jumbo v0, "nf_fetcherrorutils"

    const-string/jumbo v1, "Broadcasting DELETED_PROFILE intent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.DELETED_PROFILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 28
    return-void
.end method
