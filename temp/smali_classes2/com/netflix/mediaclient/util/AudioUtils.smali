.class public final Lcom/netflix/mediaclient/util/AudioUtils;
.super Ljava/lang/Object;
.source "AudioUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSoundPool(I)Landroid/media/SoundPool;
    .locals 1

    .prologue
    .line 19
    invoke-static {p0}, Lcom/netflix/mediaclient/util/api/Api21Util;->createSoundPool(I)Landroid/media/SoundPool;

    move-result-object v0

    return-object v0
.end method
