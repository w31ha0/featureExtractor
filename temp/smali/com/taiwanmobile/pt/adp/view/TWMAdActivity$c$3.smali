.class Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c$3;
.super Ljava/lang/Object;
.source "TWMAdActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;


# direct methods
.method constructor <init>(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c$3;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 258
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 252
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
