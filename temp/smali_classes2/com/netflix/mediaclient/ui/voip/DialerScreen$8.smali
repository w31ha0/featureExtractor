.class Lcom/netflix/mediaclient/ui/voip/DialerScreen$8;
.super Ljava/lang/Object;
.source "DialerScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)V
    .locals 0

    .prologue
    .line 704
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$8;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 709
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$8;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->access$200(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "timer update exit"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :goto_0
    return-void

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$8;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->access$1100(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)V

    .line 715
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$8;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->access$1200(Lcom/netflix/mediaclient/ui/voip/DialerScreen;I)V

    goto :goto_0
.end method
