.class public Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;
.super Ljava/lang/Object;
.source "RemotePlayer.java"


# instance fields
.field public final buffering:Z

.field public final duration:I

.field public final paused:Z

.field public final positionInSeconds:I

.field public final showMiniPlayer:Z

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

.field public final volume:I


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;ZZIIIZ)V
    .locals 0

    .prologue
    .line 702
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;->this$0:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 703
    iput-boolean p2, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;->paused:Z

    .line 704
    iput-boolean p3, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;->buffering:Z

    .line 705
    iput p4, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;->positionInSeconds:I

    .line 706
    iput p5, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;->duration:I

    .line 707
    iput p6, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;->volume:I

    .line 708
    iput-boolean p7, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;->showMiniPlayer:Z

    .line 709
    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;ZZIIIZLcom/netflix/mediaclient/ui/mdx/RemotePlayer$1;)V
    .locals 0

    .prologue
    .line 672
    invoke-direct/range {p0 .. p7}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;-><init>(Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;ZZIIIZ)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RemoteTargetState [paused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;->paused:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", buffering="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;->buffering:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", position(seconds)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;->positionInSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;->duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;->volume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", showCastPlayer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;->showMiniPlayer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
