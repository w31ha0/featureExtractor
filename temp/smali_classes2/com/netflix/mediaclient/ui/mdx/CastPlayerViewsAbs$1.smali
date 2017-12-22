.class Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$1;
.super Ljava/lang/Object;
.source "CastPlayerViewsAbs.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$OnSnappableSeekBarChangeListener;


# instance fields
.field private lastProgressChangeTime:J

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;)V
    .locals 0

    .prologue
    .line 715
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    .prologue
    .line 762
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->access$000(Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;)Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 764
    if-nez p3, :cond_1

    .line 781
    :cond_0
    :goto_0
    return-void

    .line 768
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$1;->lastProgressChangeTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/TimeUtils;->convertNsToMs(J)J

    move-result-wide v0

    .line 769
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 773
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$1;->lastProgressChangeTime:J

    .line 776
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->bifImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->access$000(Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;)Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;->getManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManagerUtils;->isMdxAgentAvailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 777
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->access$000(Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;)Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    mul-int/lit16 v1, p2, 0x3e8

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getBifFrame(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->bifImage:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/bif/IBifManager$Utils;->showBifInView(Ljava/nio/ByteBuffer;Landroid/widget/ImageView;)V

    .line 780
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->access$300(Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;I)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 721
    const-string/jumbo v0, "MdxMiniPlayerViews"

    const-string/jumbo v1, "onStartTrackingTouch"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->access$000(Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;)Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 724
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->access$100(Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->access$100(Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->bifImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 729
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    new-array v1, v3, [Landroid/view/View;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->bifImage:Landroid/widget/ImageView;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->fadeInAndShow([Landroid/view/View;)V

    .line 732
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->access$200(Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 733
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    new-array v1, v3, [Landroid/view/View;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->access$200(Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;)Landroid/widget/TextView;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->fadeInAndShow([Landroid/view/View;)V

    .line 735
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->updateViewsForSeekBarUsage(Z)V

    .line 736
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 740
    const-string/jumbo v0, "MdxMiniPlayerViews"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStopTrackingTouch, isInSnapRegion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->access$000(Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;)Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;->onStopTrackingTouch(Landroid/widget/SeekBar;Z)V

    .line 743
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$1;->lastProgressChangeTime:J

    .line 744
    if-eqz p2, :cond_1

    .line 745
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->access$300(Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;I)V

    .line 752
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->showArtworkAndHideBif()V

    .line 753
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->updateViewsForSeekBarUsage(Z)V

    .line 755
    if-nez p2, :cond_0

    .line 756
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->setControlsEnabled(Z)V

    .line 758
    :cond_0
    return-void

    .line 749
    :cond_1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$1;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    goto :goto_0
.end method
