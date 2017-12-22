.class Lcom/netflix/mediaclient/ui/player/BottomPanel$1;
.super Ljava/lang/Object;
.source "BottomPanel.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/BottomPanel;

.field final synthetic val$fTimeline:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/BottomPanel;Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel$1;->this$0:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel$1;->val$fTimeline:Landroid/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 189
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Timeline is visible now, its location is known, render current time now!!! <=="

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel$1;->this$0:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->currentTime:Lcom/netflix/mediaclient/ui/player/CurrentTime;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/CurrentTime;->updateTimeMargins()V

    .line 192
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel$1;->this$0:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    iget v0, v0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->timelineWasPreviouslyRendered:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel$1;->val$fTimeline:Landroid/widget/SeekBar;

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/util/ViewUtils;->removeGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel$1;->this$0:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    iget v1, v0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->timelineWasPreviouslyRendered:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->timelineWasPreviouslyRendered:I

    .line 196
    return-void
.end method
