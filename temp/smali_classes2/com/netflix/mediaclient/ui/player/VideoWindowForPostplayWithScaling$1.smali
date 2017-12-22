.class Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$1;
.super Ljava/lang/Object;
.source "VideoWindowForPostplayWithScaling.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;

.field final synthetic val$leftMargin:I

.field final synthetic val$scale:F

.field final synthetic val$topMargin:I


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;IIF)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$1;->this$0:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;

    iput p2, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$1;->val$leftMargin:I

    iput p3, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$1;->val$topMargin:I

    iput p4, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$1;->val$scale:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 78
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$1;->this$0:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$1;->val$leftMargin:I

    iget v2, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$1;->val$topMargin:I

    iget v3, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$1;->val$scale:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->resizeSurfaceView(IIF)V

    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$1;->this$0:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$1;->val$leftMargin:I

    iget v2, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$1;->val$topMargin:I

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->resizeTextureView(II)V

    .line 80
    return-void
.end method
