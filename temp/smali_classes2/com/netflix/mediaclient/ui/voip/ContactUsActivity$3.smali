.class Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$3;
.super Ljava/lang/Object;
.source "ContactUsActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/configuration/VoipConfigurationAgentWebCallback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;)V
    .locals 0

    .prologue
    .line 560
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$3;->this$0:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoipConfigDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 563
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 565
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$3;->this$0:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->access$100(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;)V

    .line 571
    :goto_0
    return-void

    .line 567
    :cond_0
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "fetchVoipConfigData Failed:: Back to landing page contact us"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$3;->this$0:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$3;->this$0:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->access$200(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$3;->this$0:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->access$300(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;)V

    goto :goto_0
.end method
