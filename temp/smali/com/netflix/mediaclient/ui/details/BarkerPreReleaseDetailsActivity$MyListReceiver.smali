.class public Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsActivity$MyListReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BarkerPreReleaseDetailsActivity.java"


# static fields
.field public static final MYLIST_ADD_INTENT:Ljava/lang/String; = "com.netflix.mediaclient.mylist.intent.action.ADD"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsActivity;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsActivity;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsActivity$MyListReceiver;->this$0:Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.netflix.mediaclient.mylist.intent.action.ADD"

    if-ne v0, v1, :cond_0

    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsActivity$MyListReceiver;->this$0:Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsActivity;->access$000(Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsActivity;)V

    .line 51
    :cond_0
    return-void
.end method
