.class Lcom/netflix/mediaclient/service/user/UserAgent$ProfilesUpdateCallBackWithResult;
.super Lcom/netflix/mediaclient/service/user/SimpleUserAgentWebCallback;
.source "UserAgent.java"


# instance fields
.field mResultCallback:Lcom/netflix/mediaclient/service/user/UserAgentCallback;

.field final synthetic this$0:Lcom/netflix/mediaclient/service/user/UserAgent;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V
    .locals 0

    .prologue
    .line 1308
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$ProfilesUpdateCallBackWithResult;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/SimpleUserAgentWebCallback;-><init>()V

    .line 1309
    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$ProfilesUpdateCallBackWithResult;->mResultCallback:Lcom/netflix/mediaclient/service/user/UserAgentCallback;

    .line 1310
    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgentCallback;Lcom/netflix/mediaclient/service/user/UserAgent$1;)V
    .locals 0

    .prologue
    .line 1305
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgent$ProfilesUpdateCallBackWithResult;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V

    return-void
.end method


# virtual methods
.method public onUserProfilesUpdated(Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$ProfilesUpdateCallBackWithResult;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$2600(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;->onUserProfilesUpdated(Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1315
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$ProfilesUpdateCallBackWithResult;->mResultCallback:Lcom/netflix/mediaclient/service/user/UserAgentCallback;

    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/service/user/UserAgentCallback;->onProfilesListUpdateResult(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1316
    return-void
.end method
