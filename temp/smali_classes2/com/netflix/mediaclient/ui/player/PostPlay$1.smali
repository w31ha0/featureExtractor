.class Lcom/netflix/mediaclient/ui/player/PostPlay$1;
.super Ljava/lang/Object;
.source "PostPlay.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PostPlay;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$1;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 230
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Hijacking tap, do nothing"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v0, 0x1

    return v0
.end method
