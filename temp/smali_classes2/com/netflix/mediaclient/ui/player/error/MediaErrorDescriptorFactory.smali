.class Lcom/netflix/mediaclient/ui/player/error/MediaErrorDescriptorFactory;
.super Ljava/lang/Object;
.source "MediaErrorDescriptorFactory.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "ErrorManager"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getHandlerForMediaError(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/event/nrdp/media/Error;)Lcom/netflix/mediaclient/service/error/ErrorDescriptor;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    .line 24
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/player/error/OpenDeviceFailureErrorDescriptor;->isValid(Lcom/netflix/mediaclient/event/nrdp/media/Error;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/player/error/OpenDeviceFailureErrorDescriptor;->build(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/event/nrdp/media/Error;)Lcom/netflix/mediaclient/ui/player/error/OpenDeviceFailureErrorDescriptor;

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    .line 28
    :cond_0
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/player/error/OpenDeviceFailureRestartErrorDescriptor;->isValid(Lcom/netflix/mediaclient/event/nrdp/media/Error;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/player/error/OpenDeviceFailureRestartErrorDescriptor;->build(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/event/nrdp/media/Error;)Lcom/netflix/mediaclient/ui/player/error/OpenDeviceFailureRestartErrorDescriptor;

    move-result-object v0

    goto :goto_0

    .line 32
    :cond_1
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/player/error/AuthFailureErrorDescriptor;->isValid(Lcom/netflix/mediaclient/event/nrdp/media/Error;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/player/error/AuthFailureErrorDescriptor;->build(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/event/nrdp/media/Error;)Lcom/netflix/mediaclient/ui/player/error/AuthFailureErrorDescriptor;

    move-result-object v0

    goto :goto_0

    .line 36
    :cond_2
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/player/error/StreamingFailureHttp420ErrorDescriptor;->isValid(Lcom/netflix/mediaclient/event/nrdp/media/Error;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 38
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/player/error/StreamingFailureHttp420ErrorDescriptor;->build(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/event/nrdp/media/Error;)Lcom/netflix/mediaclient/ui/player/error/StreamingFailureHttp420ErrorDescriptor;

    move-result-object v0

    goto :goto_0

    .line 42
    :cond_3
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/player/error/DefaultMediaErrorDescriptor;->build(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/event/nrdp/media/Error;)Lcom/netflix/mediaclient/ui/player/error/DefaultMediaErrorDescriptor;

    move-result-object v0

    goto :goto_0
.end method
