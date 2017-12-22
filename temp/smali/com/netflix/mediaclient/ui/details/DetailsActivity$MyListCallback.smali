.class Lcom/netflix/mediaclient/ui/details/DetailsActivity$MyListCallback;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "DetailsActivity.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/DetailsActivity;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/details/DetailsActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 550
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$MyListCallback;->this$0:Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    .line 551
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    .line 552
    return-void
.end method


# virtual methods
.method public onQueueAdd(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 556
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onQueueAdd(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 557
    const v0, 0x7f090111

    .line 558
    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    if-ne v1, p1, :cond_1

    .line 559
    const v0, 0x7f090157

    .line 565
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$MyListCallback;->this$0:Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 566
    return-void

    .line 560
    :cond_1
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->ALREADY_IN_QUEUE:Lcom/netflix/mediaclient/StatusCode;

    if-ne v1, v2, :cond_2

    .line 561
    const v0, 0x7f0901b8

    goto :goto_0

    .line 562
    :cond_2
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NOT_VALID:Lcom/netflix/mediaclient/StatusCode;

    if-ne v1, v2, :cond_0

    .line 563
    const v0, 0x7f090110

    goto :goto_0
.end method

.method public onQueueRemove(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .prologue
    const v0, 0x7f090158

    .line 570
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onQueueRemove(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 571
    const v1, 0x7f090113

    .line 572
    sget-object v2, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    if-ne v2, p1, :cond_0

    .line 578
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$MyListCallback;->this$0:Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 579
    return-void

    .line 574
    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/StatusCode;->NOT_IN_QUEUE:Lcom/netflix/mediaclient/StatusCode;

    if-ne v2, v3, :cond_1

    .line 575
    const-string/jumbo v1, "DetailsActivity"

    const-string/jumbo v2, "It was already removed"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
