.class final Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor$1;
.super Ljava/lang/Object;
.source "ConcurentStreamUpgradeErrorDescriptor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$fragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

.field final synthetic val$json:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor$1;->val$fragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor$1;->val$json:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 167
    const-string/jumbo v0, "nf_play_error"

    const-string/jumbo v1, "Publish NCCP reason code event to UI"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor$1;->val$fragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixApplication()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/device/ReasonCode;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor$1;->val$json:Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/event/nrdp/device/ReasonCode;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/NetflixApplication;->publishEvent(Lcom/netflix/mediaclient/event/UIEvent;)V

    .line 169
    const-string/jumbo v0, "nf_play_error"

    const-string/jumbo v1, "Exit from playback after UI is alerted to handle"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor$1;->val$fragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 171
    return-void
.end method
