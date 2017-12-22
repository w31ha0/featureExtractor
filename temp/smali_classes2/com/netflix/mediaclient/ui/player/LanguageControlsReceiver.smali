.class public Lcom/netflix/mediaclient/ui/player/LanguageControlsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LanguageControlsReceiver.java"


# static fields
.field public static final CHANGE_AUDIO_INTENT:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.CHANGEAUDIO"

.field public static final CHANGE_SUBTITLE_INTENT:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.CHANGESUBTITLE"

.field public static final EXTRA_CHANGE_TO:Ljava/lang/String; = "switchTo"

.field private static final TAG:Ljava/lang/String; = "LanguageControlsReceiver"


# instance fields
.field mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/LanguageControlsReceiver;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    .line 38
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 46
    const-string/jumbo v0, "LanguageControlsReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received an action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.CHANGEAUDIO"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/LanguageControlsReceiver;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getLanguage()Lcom/netflix/mediaclient/media/Language;

    move-result-object v1

    .line 52
    const-string/jumbo v2, "switchTo"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 53
    if-ltz v0, :cond_0

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/Language;->getAltAudios()[Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 54
    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/Language;->getAltAudios()[Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/media/Language;->setSelectedAudio(Lcom/netflix/mediaclient/media/AudioSource;)Lcom/netflix/mediaclient/media/AudioSource;

    .line 55
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/LanguageControlsReceiver;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0, v1, v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->changeLanguage(Lcom/netflix/mediaclient/media/Language;Z)V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.CHANGESUBTITLE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/LanguageControlsReceiver;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getLanguage()Lcom/netflix/mediaclient/media/Language;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/Language;->getCurrentAudioSource()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/media/Language;->setSelectedAudio(Lcom/netflix/mediaclient/media/AudioSource;)Lcom/netflix/mediaclient/media/AudioSource;

    .line 63
    const-string/jumbo v2, "switchTo"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 64
    if-ltz v0, :cond_0

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/Language;->getUsedSubtitles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 65
    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/Language;->getUsedSubtitles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/media/Subtitle;

    .line 66
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/media/Language;->setSelectedSubtitle(Lcom/netflix/mediaclient/media/Subtitle;)Lcom/netflix/mediaclient/media/Subtitle;

    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/LanguageControlsReceiver;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0, v1, v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->changeLanguage(Lcom/netflix/mediaclient/media/Language;Z)V

    .line 68
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/LanguageControlsReceiver;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->startScreenUpdateTask()V

    goto :goto_0
.end method
