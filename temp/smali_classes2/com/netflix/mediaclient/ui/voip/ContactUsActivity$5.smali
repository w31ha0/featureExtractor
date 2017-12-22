.class Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$5;
.super Ljava/lang/Object;
.source "ContactUsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;)V
    .locals 0

    .prologue
    .line 672
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$5;->this$0:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 675
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "User did NOT verified call to proceed!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$5;->this$0:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->access$402(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;Z)Z

    .line 677
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$5;->this$0:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v2, v2, v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->callFailed(Lcom/netflix/mediaclient/servicemgr/IVoip$Call;Ljava/lang/String;I)V

    .line 678
    return-void
.end method
