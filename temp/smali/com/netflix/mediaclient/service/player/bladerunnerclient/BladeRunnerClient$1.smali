.class Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient$1;
.super Lcom/netflix/mediaclient/service/player/bladerunnerclient/SimpleBladeRunnerWebCallback;
.source "BladeRunnerClient.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

.field final synthetic val$callback:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient$1;->this$0:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient$1;->val$callback:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/SimpleBladeRunnerWebCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onOfflineLicenseFetched(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 120
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/SimpleBladeRunnerWebCallback;->onOfflineLicenseFetched(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 121
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->TAG:Ljava/lang/String;

    const-string/jumbo v1, " license fetched status: %s"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p2, v2, v5

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 123
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->willTiggerYearlyLimit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient$1;->this$0:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient$1;->this$0:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->access$000(Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;)Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mYearlyLimitExpiryDateMillis:J

    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient$1;->this$0:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

    invoke-static {v4}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->access$100(Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;)Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getCurrentAppLocale()Lcom/netflix/mediaclient/util/l10n/UserLocale;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->access$200(Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;Landroid/content/Context;JLjava/util/Locale;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    .line 125
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->TAG:Ljava/lang/String;

    const-string/jumbo v1, " license fetched status: %s"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p2, v2, v5

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient$1;->this$0:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->access$300(Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;Lcom/netflix/mediaclient/StatusCode;)V

    .line 132
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient$1;->val$callback:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;->onOfflineLicenseFetched(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 134
    return-void
.end method
