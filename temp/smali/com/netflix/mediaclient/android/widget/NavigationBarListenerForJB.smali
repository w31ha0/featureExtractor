.class public Lcom/netflix/mediaclient/android/widget/NavigationBarListenerForJB;
.super Lcom/netflix/mediaclient/android/widget/NavigationBarListener;
.source "NavigationBarListenerForJB.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private isLowPeofile:Z


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/NavigationBarListener;-><init>(Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;)V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/NavigationBarListenerForJB;->isLowPeofile:Z

    .line 21
    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 47
    and-int/lit8 v0, p1, 0x2

    .line 48
    and-int/lit8 v1, p1, 0x1

    .line 50
    and-int/lit8 v2, p1, 0x0

    .line 51
    and-int/lit8 v2, p1, 0x4

    .line 59
    if-eqz v0, :cond_0

    .line 60
    const-string/jumbo v0, "nf_navbar"

    const-string/jumbo v1, "onSystemUiVisibilityChange Navigation bar is hidden, do nothing"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iput-boolean v3, p0, Lcom/netflix/mediaclient/android/widget/NavigationBarListenerForJB;->isLowPeofile:Z

    .line 77
    :goto_0
    return-void

    .line 62
    :cond_0
    if-eqz v1, :cond_1

    .line 64
    const-string/jumbo v0, "nf_navbar"

    const-string/jumbo v1, "onSystemUiVisibilityChange Navigation bar is low profile"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/NavigationBarListenerForJB;->isLowPeofile:Z

    goto :goto_0

    .line 66
    :cond_1
    if-eqz v2, :cond_2

    .line 67
    const-string/jumbo v0, "nf_navbar"

    const-string/jumbo v1, "onSystemUiVisibilityChange SystemUI is full screen, do nothing"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 69
    :cond_2
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/NavigationBarListenerForJB;->isLowPeofile:Z

    if-nez v0, :cond_3

    .line 71
    const-string/jumbo v0, "nf_navbar"

    const-string/jumbo v1, "onSystemUiVisibilityChange Navigation bar is visible, execute onTouch event"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NavigationBarListenerForJB;->owner:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->processOnTouchEvent(Landroid/view/MotionEvent;)V

    .line 74
    :cond_3
    iput-boolean v3, p0, Lcom/netflix/mediaclient/android/widget/NavigationBarListenerForJB;->isLowPeofile:Z

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
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NavigationBarListenerForJB;->owner:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/NavigationBarListenerForJB;->isLowPeofile:Z

    .line 30
    return-void
.end method

.method public stopListening()V
    .locals 2

    .prologue
    .line 36
    const-string/jumbo v0, "nf_navbar"

    const-string/jumbo v1, "stopListening: remove listener"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NavigationBarListenerForJB;->owner:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 38
    return-void
.end method
