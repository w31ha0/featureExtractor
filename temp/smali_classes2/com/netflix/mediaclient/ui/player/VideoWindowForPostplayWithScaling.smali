.class public Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;
.super Ljava/lang/Object;
.source "VideoWindowForPostplayWithScaling.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplay;


# static fields
.field protected static TAG:Ljava/lang/String;


# instance fields
.field private final END_MARGIN_LEFT_DP:I

.field private final END_MARGIN_TOP_DP:I

.field private final END_WIDTH_DP:I

.field protected mContext:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

.field protected mOriginalSurfaceState:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;

.field protected mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

.field protected mParent:Landroid/widget/RelativeLayout;

.field protected mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

.field protected mSurface2:Landroid/view/TextureView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, "nf_postplay"

    sput-object v0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 8

    .prologue
    const/16 v4, 0x12c

    const/4 v1, 0x0

    const/16 v3, 0xc

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v3, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->END_MARGIN_TOP_DP:I

    .line 33
    iput v3, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->END_MARGIN_LEFT_DP:I

    .line 34
    iput v4, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->END_WIDTH_DP:I

    .line 49
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mContext:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    .line 50
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 51
    const v0, 0x7f1002bb

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    .line 52
    const v0, 0x7f1002bc

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface2:Landroid/view/TextureView;

    .line 53
    const v0, 0x7f1001d7

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mParent:Landroid/widget/RelativeLayout;

    .line 54
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    if-nez v0, :cond_0

    .line 55
    sget-object v0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "PostPlayWithScaling:: surface not found"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface2:Landroid/view/TextureView;

    if-nez v0, :cond_1

    .line 58
    sget-object v0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "PostPlayWithScaling:: surface2 not found"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mParent:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_2

    .line 61
    sget-object v0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "PostPlayWithScaling:: rootFrame not found"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mContext:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v0

    .line 65
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mContext:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/AndroidUtils;->dipToPixels(Landroid/content/Context;I)I

    move-result v6

    .line 66
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mContext:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/AndroidUtils;->dipToPixels(Landroid/content/Context;I)I

    move-result v5

    .line 67
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mContext:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/netflix/mediaclient/util/AndroidUtils;->dipToPixels(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    .line 68
    int-to-float v0, v0

    div-float v7, v2, v0

    .line 70
    new-instance v0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    const/high16 v4, 0x3f800000    # 1.0f

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;-><init>(IIIFIIF)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    .line 71
    return-void
.end method


# virtual methods
.method protected addCenterInParent(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 203
    if-eqz p1, :cond_0

    .line 204
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 205
    const/16 v1, 0xd

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 206
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    :cond_0
    return-void
.end method

.method public animateIn()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 129
    sget-object v0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "PostPlayWithScaling:: doTransitionToPostPlay starts"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->getCurrentSurfaceState()Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mOriginalSurfaceState:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;

    .line 147
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->removeCenterInParent(Landroid/view/View;)V

    .line 148
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface2:Landroid/view/TextureView;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->removeCenterInParent(Landroid/view/View;)V

    .line 150
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->getEndScale()F

    move-result v0

    .line 151
    invoke-virtual {p0, v2, v2, v0}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->resizeVideo(IIF)V

    .line 153
    sget-object v0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "PostPlayWithScaling:: doTransitionToPostPlay ends after request layout"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void
.end method

.method public animateOut(Ljava/lang/Runnable;)V
    .locals 9

    .prologue
    const/16 v8, 0xd

    const/4 v7, -0x1

    const/4 v1, 0x0

    .line 162
    sget-object v0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "PostPlayWithScaling:: doTransitionFromPostPlay starts"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 166
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mOriginalSurfaceState:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;

    if-nez v0, :cond_0

    .line 167
    sget-object v0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Previos state unknown"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    new-instance v0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;-><init>(IIIII)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mOriginalSurfaceState:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;

    .line 171
    :cond_0
    invoke-virtual {v6, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 172
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mOriginalSurfaceState:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;

    iget v0, v0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;->leftMargin:I

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mOriginalSurfaceState:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;

    iget v1, v1, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;->topMargin:I

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mOriginalSurfaceState:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;

    iget v2, v2, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;->rightMargin:I

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mOriginalSurfaceState:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;

    iget v3, v3, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;->bottomMargin:I

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 173
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v0, v6}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mOriginalSurfaceState:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;

    iget v1, v1, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;->surfaceMode:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setMode(I)V

    .line 175
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->postInvalidate()V

    .line 177
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface2:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface2:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 179
    invoke-virtual {v0, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 180
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mOriginalSurfaceState:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;

    iget v1, v1, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;->leftMargin:I

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mOriginalSurfaceState:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;

    iget v2, v2, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;->topMargin:I

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mOriginalSurfaceState:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;

    iget v3, v3, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;->rightMargin:I

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mOriginalSurfaceState:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;

    iget v4, v4, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 181
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface2:Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface2:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->postInvalidate()V

    .line 185
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "PostPlayWithScaling:: doTransitionFromPostPlay ends after request layout"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void
.end method

.method public canVideoVindowResize()Z
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x1

    return v0
.end method

.method protected getCurrentSurfaceState()Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;
    .locals 6

    .prologue
    .line 118
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 119
    new-instance v0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;

    iget v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v4, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->getMode()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;-><init>(IIIII)V

    .line 120
    return-object v0
.end method

.method protected getTransitionToPostPlayAnimationParameters()Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    return-object v0
.end method

.method protected removeCenterInParent(Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v3, 0xd

    .line 190
    if-nez p1, :cond_0

    .line 200
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 194
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v1

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    .line 195
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 199
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 197
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1
.end method

.method protected resizeSurfaceView(IIF)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 110
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 111
    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 112
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v0, p3}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setScale(F)V

    .line 114
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->postInvalidate()V

    .line 115
    return-void
.end method

.method protected resizeTextureView(II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface2:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface2:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 95
    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 96
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface2:Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface2:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->postInvalidate()V

    .line 99
    :cond_0
    return-void
.end method

.method protected resizeVideo(IIF)V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mContext:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    new-instance v1, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$1;-><init>(Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;IIF)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 82
    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    .prologue
    .line 242
    if-eqz p1, :cond_0

    .line 243
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    sget-object v1, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->VISIBLE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibility(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V

    .line 244
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface2:Landroid/view/TextureView;

    sget-object v1, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->VISIBLE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibility(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V

    .line 249
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    sget-object v1, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->INVISIBLE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibility(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V

    .line 247
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface2:Landroid/view/TextureView;

    sget-object v1, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->INVISIBLE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibility(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V

    goto :goto_0
.end method
