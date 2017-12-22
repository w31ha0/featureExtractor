.class public Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;
.super Ljava/lang/Object;
.source "VideoWindowForPostplayWithScaling.java"


# instance fields
.field bottomMargin:I

.field leftMargin:I

.field rightMargin:I

.field surfaceMode:I

.field topMargin:I


# direct methods
.method constructor <init>(IIIII)V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput p1, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;->bottomMargin:I

    .line 230
    iput p2, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;->topMargin:I

    .line 231
    iput p3, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;->leftMargin:I

    .line 232
    iput p4, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;->rightMargin:I

    .line 233
    iput p5, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;->surfaceMode:I

    .line 234
    return-void
.end method
