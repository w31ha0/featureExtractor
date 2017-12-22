.class public Lcom/netflix/mediaclient/media/BitrateControl;
.super Ljava/lang/Object;
.source "BitrateControl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSelectedBitrateIndex(Lcom/netflix/mediaclient/ui/player/PlayerFragment;[Ljava/lang/CharSequence;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getPlayoutMetadata()Lcom/netflix/mediaclient/media/PlayoutMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/PlayoutMetadata;->getVideoBitrate()I

    move-result v2

    move v0, v1

    .line 39
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 40
    aget-object v3, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 44
    :goto_1
    return v0

    .line 39
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 44
    goto :goto_1
.end method

.method public static showBitrateController(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 4

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getPlayerManifestData()Lcom/netflix/mediaclient/media/PlayerManifestData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/PlayerManifestData;->getAvailableBitrates()[Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    .line 21
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 22
    const v1, 0x7f0902b6

    invoke-virtual {v2, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 23
    invoke-static {p0, v0}, Lcom/netflix/mediaclient/media/BitrateControl;->getSelectedBitrateIndex(Lcom/netflix/mediaclient/ui/player/PlayerFragment;[Ljava/lang/CharSequence;)I

    move-result v1

    new-instance v3, Lcom/netflix/mediaclient/media/BitrateControl$1;

    invoke-direct {v3, v0, p0}, Lcom/netflix/mediaclient/media/BitrateControl$1;-><init>([Ljava/lang/CharSequence;Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    invoke-virtual {v2, v0, v1, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 32
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 34
    return-void
.end method
