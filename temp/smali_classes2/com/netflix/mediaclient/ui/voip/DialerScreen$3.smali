.class Lcom/netflix/mediaclient/ui/voip/DialerScreen$3;
.super Ljava/lang/Object;
.source "DialerScreen.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$3;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 274
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 283
    :goto_0
    return v2

    .line 276
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$3;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->access$100(Lcom/netflix/mediaclient/ui/voip/DialerScreen;Landroid/view/View;Z)V

    goto :goto_0

    .line 279
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$3;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-static {v0, p1, v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->access$100(Lcom/netflix/mediaclient/ui/voip/DialerScreen;Landroid/view/View;Z)V

    goto :goto_0

    .line 274
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
