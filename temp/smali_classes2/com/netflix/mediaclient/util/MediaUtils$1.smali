.class final Lcom/netflix/mediaclient/util/MediaUtils$1;
.super Ljava/util/HashMap;
.source "MediaUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 77
    const-string/jumbo v0, "video/avc"

    sget-object v1, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->AVC:Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/util/MediaUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string/jumbo v0, "video/x-vnd.on2.vp9"

    sget-object v1, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->VP9:Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/util/MediaUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string/jumbo v0, "video/hevc"

    sget-object v1, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->HEVC:Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/util/MediaUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-void
.end method
