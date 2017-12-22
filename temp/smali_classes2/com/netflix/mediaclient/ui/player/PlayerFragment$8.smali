.class Lcom/netflix/mediaclient/ui/player/PlayerFragment$8;
.super Landroid/view/OrientationEventListener;
.source "PlayerFragment.java"


# instance fields
.field lastTilt:I

.field final minTilt:I

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1988
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$8;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 1990
    const/16 v0, 0xa

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$8;->minTilt:I

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2

    .prologue
    .line 1996
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$8;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isFragmentValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 2008
    :cond_0
    :goto_0
    return-void

    .line 2000
    :cond_1
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$8;->lastTilt:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    .line 2004
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$8;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setUserInteraction()V

    .line 2007
    :cond_2
    iput p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$8;->lastTilt:I

    goto :goto_0
.end method
