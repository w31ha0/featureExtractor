.class public Lcom/netflix/mediaclient/service/player/bif/IBifManager$Utils;
.super Ljava/lang/Object;
.source "IBifManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BifManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showBifInView(Ljava/nio/ByteBuffer;Landroid/widget/ImageView;)V
    .locals 3

    .prologue
    .line 29
    if-nez p1, :cond_0

    .line 30
    const-string/jumbo v0, "BifManager"

    const-string/jumbo v1, "View is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :goto_0
    return-void

    .line 34
    :cond_0
    if-nez p0, :cond_1

    .line 35
    const-string/jumbo v0, "BifManager"

    const-string/jumbo v1, "ByteBuffer is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 43
    :cond_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 44
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_3

    .line 46
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 49
    :cond_3
    const-string/jumbo v0, "BifManager"

    const-string/jumbo v1, "decoded bif bitmap is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
