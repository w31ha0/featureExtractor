.class Lcom/netflix/mediaclient/ui/offline/OfflineActivity$2;
.super Ljava/lang/Object;
.source "OfflineActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/offline/OfflineActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/OfflineActivity;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineActivity$2;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 165
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineActivity$2;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineActivity$2;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;

    .line 169
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getSelectedItemsCount()I

    move-result v1

    .line 170
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getSelectedItemsDiskSpace()Ljava/lang/String;

    move-result-object v2

    .line 172
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->deleteSelected()V

    .line 174
    invoke-virtual {v0, v5}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->switchToEditMode(Z)V

    .line 177
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineActivity$2;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineActivity;

    const v3, 0x7f10018d

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_1

    .line 179
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/OfflineActivity$2;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineActivity;

    const v4, 0x7f09021e

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->getFormatter(Landroid/content/Context;I)Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;

    move-result-object v3

    .line 180
    invoke-virtual {v3, v1}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->withQuantity(I)Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;

    move-result-object v1

    const-string/jumbo v3, "sizeOfFile"

    .line 181
    invoke-virtual {v1, v3, v2}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->withArg(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;

    move-result-object v1

    const-string/jumbo v2, "unitOfMeasure"

    const-string/jumbo v3, ""

    .line 182
    invoke-virtual {v1, v2, v3}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->withArg(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;

    move-result-object v1

    .line 183
    invoke-virtual {v1}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->format()Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-static {v0, v1, v5}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    .line 192
    :cond_0
    :goto_0
    return v6

    .line 187
    :cond_1
    const-string/jumbo v0, "Expected a R.id.coordinatorLayout here"

    invoke-static {v0}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;)V

    goto :goto_0
.end method
