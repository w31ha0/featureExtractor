.class Lcom/netflix/mediaclient/ui/voip/LandingPageScreen$1;
.super Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;
.source "LandingPageScreen.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen$1;->this$0:Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoLoginTokenCreated(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 181
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "?nftoken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen$1;->this$0:Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->access$000(Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;Ljava/lang/String;)V

    .line 189
    :goto_0
    return-void

    .line 186
    :cond_0
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Couldn\'t fetch token, opening url without auto login"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen$1;->this$0:Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen$1;->val$url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->access$000(Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;Ljava/lang/String;)V

    goto :goto_0
.end method
