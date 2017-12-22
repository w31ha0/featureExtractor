.class Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$4;
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
    .line 662
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$4;->this$0:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 666
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "User verified call to proceed!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$4;->this$0:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->access$402(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;Z)Z

    .line 668
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$4;->this$0:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->access$500(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;)V

    .line 669
    return-void
.end method
