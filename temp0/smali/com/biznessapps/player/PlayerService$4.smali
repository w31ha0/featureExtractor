.class Lcom/biznessapps/player/PlayerService$4;
.super Ljava/lang/Object;
.source "PlayerService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/player/PlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/player/PlayerService;


# direct methods
.method constructor <init>(Lcom/biznessapps/player/PlayerService;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/biznessapps/player/PlayerService$4;->this$0:Lcom/biznessapps/player/PlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 195
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 196
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService$4;->this$0:Lcom/biznessapps/player/PlayerService;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/biznessapps/player/PlayerService;->setState(I)V

    .line 198
    return-void
.end method
