.class public final Lcom/netflix/mediaclient/service/player/subtitles/image/v2/PassthroughDecryptor;
.super Ljava/lang/Object;
.source "PassthroughDecryptor.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ImageDecryptor;


# static fields
.field protected static final TAG:Ljava/lang/String; = "nf_subtitles_imv2"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decrypt([BLcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;Ljava/lang/String;I)[B
    .locals 2

    .prologue
    .line 18
    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v1, "PassthroughDecryptor::decrypt: returning passed image"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return-object p1
.end method
