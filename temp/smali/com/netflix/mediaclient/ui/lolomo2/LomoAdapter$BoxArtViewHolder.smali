.class Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;
.super Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$LomoViewHolder;
.source "LomoAdapter.java"


# instance fields
.field basicVideo:Lcom/netflix/mediaclient/servicemgr/interface_/BasicVideo;

.field private final debugFlashColor:Landroid/graphics/drawable/Drawable;

.field private final debugRemoveForeground:Ljava/lang/Runnable;

.field lastPresentationReportingCallback:Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$PresentationReportingCallback;

.field lomoContext:Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;

.field videoPresentationReported:Z

.field final videoView:Lcom/netflix/mediaclient/android/widget/VideoView;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Lcom/netflix/mediaclient/android/widget/VideoView;Lcom/netflix/android/widgetry/lolomo/RowConfig;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 254
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$LomoViewHolder;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/netflix/android/widgetry/lolomo/RowConfig;)V

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;->videoPresentationReported:Z

    .line 241
    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;->debugRemoveForeground:Ljava/lang/Runnable;

    .line 250
    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;->debugFlashColor:Landroid/graphics/drawable/Drawable;

    .line 255
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;->videoView:Lcom/netflix/mediaclient/android/widget/VideoView;

    .line 256
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;->videoView:Lcom/netflix/mediaclient/android/widget/VideoView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/VideoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 257
    return-void
.end method


# virtual methods
.method bind(Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;Lcom/netflix/mediaclient/servicemgr/interface_/BasicVideo;IZ)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 262
    iput-boolean v5, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;->videoPresentationReported:Z

    .line 263
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;->lomoContext:Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;

    .line 264
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;->basicVideo:Lcom/netflix/mediaclient/servicemgr/interface_/BasicVideo;

    .line 265
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;->basicVideo:Lcom/netflix/mediaclient/servicemgr/interface_/BasicVideo;

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    .line 266
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;->videoView:Lcom/netflix/mediaclient/android/widget/VideoView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;->lomo()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;->getAdapterPosition()I

    move-result v3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/android/widget/VideoView;->update(Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V

    .line 267
    return-void
.end method

.method debugFlash(I)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 314
    return-void
.end method

.method protected doTrackingIfVisibleOnScreen()V
    .locals 0

    .prologue
    .line 298
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking;->doTracking(Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;)V

    .line 299
    return-void
.end method

.method public onViewDetachedFromWindow()V
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;->videoPresentationReported:Z

    .line 274
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$LomoViewHolder;->onViewDetachedFromWindow()V

    .line 275
    return-void
.end method

.method public onViewRecycled()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 279
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$LomoViewHolder;->onViewRecycled()V

    .line 280
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;->videoView:Lcom/netflix/mediaclient/android/widget/VideoView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/VideoView;->onViewRecycled()V

    .line 281
    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;->basicVideo:Lcom/netflix/mediaclient/servicemgr/interface_/BasicVideo;

    .line 282
    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;->lomoContext:Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;

    .line 284
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking;->resetTracking(Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;)V

    .line 291
    return-void
.end method
