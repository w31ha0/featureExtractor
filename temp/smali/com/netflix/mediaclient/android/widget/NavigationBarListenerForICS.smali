.class public Lcom/netflix/mediaclient/android/widget/NavigationBarListenerForICS;
.super Lcom/netflix/mediaclient/android/widget/NavigationBarListener;
.source "NavigationBarListenerForICS.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/NavigationBarListener;-><init>(Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;)V

    .line 21
    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 2

    .prologue
    .line 46
    and-int/lit8 v0, p1, 0x2

    .line 47
    and-int/lit8 v1, p1, 0x0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    const-string/jumbo v0, "nf_navbar"

    const-string/jumbo v1, "Navigation bar is hidden, do nothing"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :goto_0
    return-void

    .line 58
    :cond_0
    const-string/jumbo v0, "nf_navbar"

    const-string/jumbo v1, "Navigation bar is visible, execute onTouch event"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NavigationBarListenerForICS;->owner:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->processOnTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public startListening()V
    .locals 2

    .prologue
    .line 27
    const-string/jumbo v0, "nf_navbar"

    const-string/jumbo v1, "startListening: add itself to listen for navigation bar changes."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NavigationBarListenerForICS;->owner:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 29
    return-void
.end method

.method public stopListening()V
    .locals 2

    .prologue
    .line 35
    const-string/jumbo v0, "nf_navbar"

    const-string/jumbo v1, "stopListening: remove listener"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NavigationBarListenerForICS;->owner:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 37
    return-void
.end method
