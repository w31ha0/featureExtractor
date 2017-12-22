.class public Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsActivity$MyListReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PreReleaseDetailsActivity.java"


# static fields
.field public static final MYLIST_ADD_INTENT:Ljava/lang/String; = "com.netflix.mediaclient.mylist.intent.action.ADD"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsActivity;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsActivity;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsActivity$MyListReceiver;->this$0:Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.netflix.mediaclient.mylist.intent.action.ADD"

    if-ne v0, v1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsActivity$MyListReceiver;->this$0:Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsActivity;->access$000(Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsActivity;)V

    .line 53
    :cond_0
    return-void
.end method
