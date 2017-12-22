.class public interface abstract Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup$IVideoView;
.super Ljava/lang/Object;
.source "VideoViewGroup.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/common/PlayContextProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/netflix/mediaclient/ui/common/PlayContextProvider;"
    }
.end annotation


# static fields
.field public static final EXTRA_IS_HORIZONTAL_KEY:I = 0x1

.field public static final EXTRA_USE_HIGH_RES_IMAGE_KEY:I = 0x2


# virtual methods
.method public abstract getImageUrl(Ljava/lang/Object;Z)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract hide()V
.end method

.method public abstract update(Ljava/lang/Object;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;",
            "IZZ)V"
        }
    .end annotation
.end method
