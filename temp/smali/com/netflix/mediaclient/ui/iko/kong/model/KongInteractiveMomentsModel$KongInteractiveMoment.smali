.class public Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;
.super Ljava/lang/Object;
.source "KongInteractiveMomentsModel.java"


# instance fields
.field imageBackgroundBitmap:Landroid/graphics/Bitmap;

.field imageBitmap:Landroid/graphics/Bitmap;

.field name:Ljava/lang/String;

.field notification:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;

.field sfxSoundPoolId:I

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDurationMS()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->getMomentEndTimeMS()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->getMomentStartTimeMS()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getImageBackgroundBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->imageBackgroundBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImageBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->imageBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getMomentAnimationImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->notification:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->notification:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;->states:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongUnlockState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->notification:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;->states:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongUnlockState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongUnlockState;->_default:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongDefaultImages;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->notification:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;->states:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongUnlockState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongUnlockState;->_default:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongDefaultImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongDefaultImages;->animationImage:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->notification:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;->states:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongUnlockState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongUnlockState;->_default:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongDefaultImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongDefaultImages;->animationImage:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 120
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMomentEndTimeMS()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->notification:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->notification:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;

    iget v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;->endTimeMS:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMomentImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->notification:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->notification:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;->states:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongUnlockState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->notification:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;->states:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongUnlockState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongUnlockState;->_default:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongDefaultImages;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->notification:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;->states:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongUnlockState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongUnlockState;->_default:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongDefaultImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongDefaultImages;->image:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->notification:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;->states:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongUnlockState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongUnlockState;->_default:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongDefaultImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongDefaultImages;->image:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    .line 112
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMomentStartTimeMS()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->notification:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->notification:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;

    iget v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;->startTimeMS:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->notification:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->notification:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongUnlockedString;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->notification:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongUnlockedString;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongUnlockedString;->unlocked:Ljava/lang/String;

    .line 62
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNotification()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->notification:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;

    return-object v0
.end method

.method public getSfxSoundPoolId()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->sfxSoundPoolId:I

    return v0
.end method

.method public getUnlockSfxSoundUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->notification:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->notification:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongUnlockedAudio;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->notification:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongUnlockedAudio;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongUnlockedAudio;->itemUnlockSfx:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->notification:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongUnlockedAudio;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongUnlockedAudio;->itemUnlockSfx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->notification:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongUnlockedAudio;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongUnlockedAudio;->itemUnlockSfx:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->url:Ljava/lang/String;

    .line 94
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUnlockSfxSoundVolume()F
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->notification:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->notification:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongUnlockedAudio;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->notification:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongUnlockedAudio;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongUnlockedAudio;->itemUnlockSfx:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->notification:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongUnlockedAudio;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongUnlockedAudio;->itemUnlockSfx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->notification:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongUnlockedAudio;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongUnlockedAudio;->itemUnlockSfx:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->getVolume()F

    move-result v0

    .line 104
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setImageBackgroundBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->imageBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 48
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->imageBitmap:Landroid/graphics/Bitmap;

    .line 40
    return-void
.end method

.method public setSfxSoundPoolId(I)V
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->sfxSoundPoolId:I

    .line 32
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "KongInteractiveMoment{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", notification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->notification:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
