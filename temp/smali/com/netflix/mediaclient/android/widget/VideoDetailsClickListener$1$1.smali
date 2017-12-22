.class Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener$1$1;
.super Lcom/netflix/mediaclient/service/configuration/SimpleConfigurationAgentWebCallback;
.source "VideoDetailsClickListener.java"


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener$1;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener$1;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener$1$1;->this$1:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener$1;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/SimpleConfigurationAgentWebCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 165
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 166
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->refresh()V

    .line 168
    :cond_0
    return-void
.end method
