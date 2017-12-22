.class Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager$1;
.super Ljava/lang/Object;
.source "EnhancedSubtitleManager.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager$1;->this$0:Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 407
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "onPreDraw on display area"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const/4 v0, 0x0

    return v0
.end method
