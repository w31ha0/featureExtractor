.class Lcom/netflix/mediaclient/service/NetflixService$7;
.super Lcom/netflix/mediaclient/service/configuration/SimpleConfigurationAgentWebCallback;
.source "NetflixService.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/NetflixService;

.field final synthetic val$callback:Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;

.field final synthetic val$email:Ljava/lang/String;

.field final synthetic val$passwd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/NetflixService;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;)V
    .locals 0

    .prologue
    .line 1195
    iput-object p1, p0, Lcom/netflix/mediaclient/service/NetflixService$7;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/NetflixService$7;->val$email:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/NetflixService$7;->val$passwd:Ljava/lang/String;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/NetflixService$7;->val$callback:Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/SimpleConfigurationAgentWebCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    .prologue
    .line 1198
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "onConfigDataFetched statusCode=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    if-eqz p1, :cond_0

    .line 1200
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$7;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$1600(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->persistConfigOverride(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;)V

    .line 1202
    :cond_0
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1203
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "fetching nrm cookies failed, proceeding without Nrm cookies"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$7;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$600(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService$7;->val$email:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/NetflixService$7;->val$passwd:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/NetflixService$7;->val$callback:Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/user/UserAgent;->loginUser(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V

    .line 1209
    return-void
.end method
