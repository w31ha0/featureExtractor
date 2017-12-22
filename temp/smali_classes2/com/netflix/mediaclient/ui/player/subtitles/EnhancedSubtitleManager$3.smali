.class Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager$3;
.super Ljava/lang/Object;
.source "EnhancedSubtitleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;

.field final synthetic val$visibility:Z


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;Z)V
    .locals 0

    .prologue
    .line 476
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager$3;->this$0:Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;

    iput-boolean p2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager$3;->val$visibility:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager$3;->this$0:Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager$3;->val$visibility:Z

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->access$200(Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;Z)V

    .line 480
    return-void
.end method
