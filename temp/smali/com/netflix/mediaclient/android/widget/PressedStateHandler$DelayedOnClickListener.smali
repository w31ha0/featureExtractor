.class public Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;
.super Ljava/lang/Object;
.source "PressedStateHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final onClickListener:Landroid/view/View$OnClickListener;

.field private final pressedStateHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/widget/PressedStateHandler;Landroid/view/View$OnClickListener;)V
    .locals 2

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;->pressedStateHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    .line 110
    iput-object p2, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;->onClickListener:Landroid/view/View$OnClickListener;

    .line 112
    if-nez p2, :cond_0

    .line 113
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "onClickListener must not be null"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;)Lcom/netflix/mediaclient/android/widget/PressedStateHandler;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;->pressedStateHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;->onClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;->pressedStateHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;->pressedStateHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;->pressedStateHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    new-instance v1, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener$1;-><init>(Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;Landroid/view/View;)V

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->access$300(Lcom/netflix/mediaclient/android/widget/PressedStateHandler;Lcom/netflix/mediaclient/android/widget/PressedStateHandler$Listener;)V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method
