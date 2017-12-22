.class final Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents$1;
.super Ljava/util/HashSet;
.source "UserAgentBroadcastIntents.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 53
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.NOTIFY_USER_ACCOUNT_NOT_LOGGED_IN"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents$1;->add(Ljava/lang/Object;)Z

    .line 54
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.NOTIFY_USER_ACCOUNT_ACTIVE"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents$1;->add(Ljava/lang/Object;)Z

    .line 55
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.NOTIFY_USER_ACCOUNT_DEACTIVE"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents$1;->add(Ljava/lang/Object;)Z

    .line 56
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.NOTIFY_USER_PROFILE_ACTIVE"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents$1;->add(Ljava/lang/Object;)Z

    .line 57
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.NOTIFY_USER_PROFILE_DEACTIVE"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents$1;->add(Ljava/lang/Object;)Z

    .line 58
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.NOTIFY_USER_PROFILE_READY_TO_SELECT"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents$1;->add(Ljava/lang/Object;)Z

    .line 59
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.NOTIFY_USER_PROFILE_SELECTION_RESULT"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents$1;->add(Ljava/lang/Object;)Z

    .line 60
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.NOTIFY_PROFILES_LIST_UPDATED"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents$1;->add(Ljava/lang/Object;)Z

    .line 61
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.NOTIFY_CURRENT_PROFILE_INVALID"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents$1;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method
