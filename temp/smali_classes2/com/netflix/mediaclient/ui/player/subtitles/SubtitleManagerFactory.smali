.class public final Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManagerFactory;
.super Ljava/lang/Object;
.source "SubtitleManagerFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static createInstance(Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;
    .locals 2

    .prologue
    .line 31
    if-nez p1, :cond_0

    .line 32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Player fragment is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Player fragment\'s activity is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_1
    if-nez p0, :cond_2

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Subtitle profile can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->IMAGE:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->IMAGE_ENC:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 44
    :cond_3
    new-instance v0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    .line 46
    :goto_0
    return-object v0

    :cond_4
    new-instance v0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    goto :goto_0
.end method

.method public static getSubtitleManagerLabel(Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 58
    const-string/jumbo v0, ""

    .line 59
    invoke-interface {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;->getContext()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    .line 60
    instance-of v2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;

    if-eqz v2, :cond_1

    .line 61
    const v0, 0x7f0902c1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    :cond_0
    :goto_0
    return-object v0

    .line 62
    :cond_1
    instance-of v2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;

    if-eqz v2, :cond_0

    .line 63
    const v0, 0x7f0902c0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
