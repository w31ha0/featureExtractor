.class Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup$FetchSupplementalsCallback;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "BarkerPreReleaseDetailsFrag.java"


# instance fields
.field private clickListener:Landroid/view/View$OnClickListener;

.field private playable:Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

.field private final requestId:J

.field final synthetic this$1:Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup;J)V
    .locals 2

    .prologue
    .line 166
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup$FetchSupplementalsCallback;->this$1:Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup;

    .line 167
    const-string/jumbo v0, "BarkerPreReleaseVideoDetailsViewGroup"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    .line 157
    new-instance v0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup$FetchSupplementalsCallback$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup$FetchSupplementalsCallback$1;-><init>(Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup$FetchSupplementalsCallback;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup$FetchSupplementalsCallback;->clickListener:Landroid/view/View$OnClickListener;

    .line 168
    iput-wide p2, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup$FetchSupplementalsCallback;->requestId:J

    .line 169
    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup$FetchSupplementalsCallback;)Lcom/netflix/mediaclient/servicemgr/interface_/Playable;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup$FetchSupplementalsCallback;->playable:Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    return-object v0
.end method


# virtual methods
.method public onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .prologue
    .line 173
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 175
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup$FetchSupplementalsCallback;->requestId:J

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup$FetchSupplementalsCallback;->this$1:Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup;->this$0:Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;

    iget-wide v2, v2, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;->requestId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup$FetchSupplementalsCallback;->this$1:Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup;->this$0:Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;->access$300(Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    :cond_0
    const-string/jumbo v0, "BarkerPreReleaseVideoDetailsViewGroup"

    const-string/jumbo v1, "Ignoring stale callback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_1
    :goto_0
    return-void

    .line 180
    :cond_2
    if-eqz p1, :cond_1

    .line 181
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup$FetchSupplementalsCallback;->playable:Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    .line 182
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup$FetchSupplementalsCallback;->setupTrailerPlay()V

    goto :goto_0
.end method

.method setupTrailerPlay()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup$FetchSupplementalsCallback;->this$1:Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup;->access$400(Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup$FetchSupplementalsCallback;->this$1:Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup;->access$400(Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 189
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup$FetchSupplementalsCallback;->this$1:Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup;->access$400(Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup$FetchSupplementalsCallback;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    return-void
.end method
