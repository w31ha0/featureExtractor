.class final Lcom/netflix/mediaclient/ui/common/ExportDebugData$1;
.super Ljava/lang/Object;
.source "ExportDebugData.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic val$toast:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Landroid/widget/Toast;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/common/ExportDebugData$1;->val$toast:Landroid/widget/Toast;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/common/ExportDebugData$1;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 86
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/ExportDebugData$1;->val$toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 88
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/ExportDebugData$1;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const-string/jumbo v1, "Enter your JIRA summary and description in the email"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 89
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/ExportDebugData$1;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v3, v3}, Lcom/netflix/mediaclient/ui/common/ExportDebugData;->createBugReport(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method
