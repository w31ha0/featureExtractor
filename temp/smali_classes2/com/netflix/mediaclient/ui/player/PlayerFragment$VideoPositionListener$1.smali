.class Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener$1;
.super Ljava/lang/Object;
.source "PlayerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;

.field final synthetic val$progress:I

.field final synthetic val$seekBar:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;Landroid/widget/SeekBar;I)V
    .locals 0

    .prologue
    .line 1738
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener$1;->this$1:Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener$1;->val$seekBar:Landroid/widget/SeekBar;

    iput p3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener$1;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1741
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener$1;->this$1:Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener$1;->val$seekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener$1;->val$progress:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 1742
    return-void
.end method
