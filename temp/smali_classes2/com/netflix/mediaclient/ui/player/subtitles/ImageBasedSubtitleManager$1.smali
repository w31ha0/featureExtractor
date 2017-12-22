.class Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager$1;
.super Ljava/lang/Object;
.source "ImageBasedSubtitleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;

.field final synthetic val$visibility:Z


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;Z)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager$1;->this$0:Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;

    iput-boolean p2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager$1;->val$visibility:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager$1;->this$0:Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager$1;->val$visibility:Z

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->access$000(Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;Z)V

    .line 87
    return-void
.end method
