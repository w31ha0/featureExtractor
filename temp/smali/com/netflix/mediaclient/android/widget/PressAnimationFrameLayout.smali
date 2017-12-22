.class public Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;
.super Landroid/widget/FrameLayout;
.source "PressAnimationFrameLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FrameLayoutPressedHandler"


# instance fields
.field protected pressedHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;->init()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;->init()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;->init()V

    .line 31
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;-><init>(Landroid/view/View;)V

    :goto_0
    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;->pressedHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    .line 38
    return-void

    .line 36
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/android/widget/AlphaPressedStateHandler;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/widget/AlphaPressedStateHandler;-><init>(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method protected dispatchSetPressed(Z)V
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;->shouldDispatchToPressHandler()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;->pressedHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->handleSetPressed(Z)V

    .line 53
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchSetPressed(Z)V

    .line 54
    return-void
.end method

.method public getPressedStateHandler()Lcom/netflix/mediaclient/android/widget/PressedStateHandler;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;->pressedHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    return-object v0
.end method

.method public setPressedStateHandlerEnabled(Z)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;->pressedHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->setEnabled(Z)V

    .line 42
    return-void
.end method

.method protected shouldDispatchToPressHandler()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method
