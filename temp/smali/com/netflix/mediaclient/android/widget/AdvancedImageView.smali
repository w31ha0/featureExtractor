.class public Lcom/netflix/mediaclient/android/widget/AdvancedImageView;
.super Lcom/makeramen/RoundedImageView;
.source "AdvancedImageView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AdvancedImageView"


# instance fields
.field private defaultForegroundResId:I

.field private foreground:Landroid/graphics/drawable/Drawable;

.field protected pressedHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1}, Lcom/makeramen/RoundedImageView;-><init>(Landroid/content/Context;)V

    .line 24
    const v0, 0x7f020251

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->defaultForegroundResId:I

    .line 45
    iput-object v1, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->pressedHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    .line 49
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->init(Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/makeramen/RoundedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const v0, 0x7f020251

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->defaultForegroundResId:I

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->pressedHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    .line 54
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->init(Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/makeramen/RoundedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const v0, 0x7f020251

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->defaultForegroundResId:I

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->pressedHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    .line 59
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->init(Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 63
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;-><init>(Landroid/view/View;)V

    :goto_0
    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->pressedHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    .line 67
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/R$styleable;->AdvancedImageView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 68
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 70
    if-eqz v1, :cond_1

    .line 71
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 75
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    return-void

    .line 63
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/android/widget/RipplePressedStateHandler;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/widget/RipplePressedStateHandler;-><init>(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;)V

    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->defaultForegroundResId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method


# virtual methods
.method protected dispatchSetPressed(Z)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->pressedHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->handleSetPressed(Z)V

    .line 114
    invoke-super {p0, p1}, Lcom/makeramen/RoundedImageView;->dispatchSetPressed(Z)V

    .line 115
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 197
    invoke-super {p0, p1}, Lcom/makeramen/RoundedImageView;->draw(Landroid/graphics/Canvas;)V

    .line 198
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 201
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 171
    invoke-super {p0}, Lcom/makeramen/RoundedImageView;->drawableStateChanged()V

    .line 172
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 175
    :cond_0
    return-void
.end method

.method public getForegroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getImageLoaderInfo()Lcom/netflix/mediaclient/android/widget/AdvancedImageView$ImageLoaderInfo;
    .locals 1

    .prologue
    .line 87
    const v0, 0x7f100010

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView$ImageLoaderInfo;

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const-string/jumbo v0, "AdvancedImageView"

    return-object v0
.end method

.method public getPressedStateHandler()Lcom/netflix/mediaclient/android/widget/PressedStateHandler;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->pressedHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    return-object v0
.end method

.method public isImageLoaded()Z
    .locals 1

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getImageLoaderInfo()Lcom/netflix/mediaclient/android/widget/AdvancedImageView$ImageLoaderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getImageLoaderInfo()Lcom/netflix/mediaclient/android/widget/AdvancedImageView$ImageLoaderInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView$ImageLoaderInfo;->loaded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 163
    invoke-super {p0}, Lcom/makeramen/RoundedImageView;->jumpDrawablesToCurrentState()V

    .line 164
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 167
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 179
    invoke-super {p0, p1, p2}, Lcom/makeramen/RoundedImageView;->onMeasure(II)V

    .line 180
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 182
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->invalidate()V

    .line 184
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 188
    invoke-super {p0, p1, p2, p3, p4}, Lcom/makeramen/RoundedImageView;->onSizeChanged(IIII)V

    .line 189
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 191
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->invalidate()V

    .line 193
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 208
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v3, 0x15

    if-lt v0, v3, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    :goto_1
    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 212
    :cond_0
    invoke-super {p0, p1}, Lcom/makeramen/RoundedImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_1
    move v0, v2

    .line 208
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public onViewRecycled()V
    .locals 1

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->clear(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;)V

    .line 226
    return-void
.end method

.method public refreshImageIfNecessary()V
    .locals 2

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 100
    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_0

    .line 102
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->refreshImgIfNecessary(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;)V

    .line 104
    :cond_0
    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    .line 154
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 140
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    :cond_1
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    .line 145
    if-eqz p1, :cond_2

    .line 146
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 147
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 152
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->requestLayout()V

    .line 153
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->invalidate()V

    goto :goto_0
.end method

.method public setForegroundResource(I)V
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 126
    return-void
.end method

.method public setImageLoaderInfo(Lcom/netflix/mediaclient/android/widget/AdvancedImageView$ImageLoaderInfo;)V
    .locals 1

    .prologue
    .line 83
    const v0, 0x7f100010

    invoke-virtual {p0, v0, p1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setTag(ILjava/lang/Object;)V

    .line 84
    return-void
.end method

.method public setPressedStateHandlerEnabled(Z)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->pressedHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->setEnabled(Z)V

    .line 92
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/makeramen/RoundedImageView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
