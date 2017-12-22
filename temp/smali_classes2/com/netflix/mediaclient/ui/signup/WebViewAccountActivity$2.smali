.class Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity$2;
.super Ljava/lang/Object;
.source "WebViewAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity$2;->this$0:Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 142
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 137
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
