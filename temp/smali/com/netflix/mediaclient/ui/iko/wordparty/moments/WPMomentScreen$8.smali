.class Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$8;
.super Ljava/lang/Object;
.source "WPMomentScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field mLastClickTime:J

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;)V
    .locals 2

    .prologue
    .line 1043
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$8;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1044
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$8;->mLastClickTime:J

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1048
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$8;->mLastClickTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1054
    :goto_0
    return-void

    .line 1052
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$8;->mLastClickTime:J

    .line 1053
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$8;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    check-cast p1, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->access$1200(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V

    goto :goto_0
.end method
