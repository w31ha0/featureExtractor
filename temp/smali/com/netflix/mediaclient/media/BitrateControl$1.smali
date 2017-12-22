.class final Lcom/netflix/mediaclient/media/BitrateControl$1;
.super Ljava/lang/Object;
.source "BitrateControl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic val$playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

.field final synthetic val$values:[Ljava/lang/CharSequence;


# direct methods
.method constructor <init>([Ljava/lang/CharSequence;Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/netflix/mediaclient/media/BitrateControl$1;->val$values:[Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/netflix/mediaclient/media/BitrateControl$1;->val$playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BitrateControl$1;->val$values:[Ljava/lang/CharSequence;

    aget-object v0, v0, p2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 27
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BitrateControl$1;->val$playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;

    .line 28
    invoke-virtual {v0, v1, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->overrideBitrate(II)V

    .line 29
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 30
    return-void
.end method
