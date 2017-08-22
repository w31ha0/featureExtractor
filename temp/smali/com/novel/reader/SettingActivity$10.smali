.class Lcom/novel/reader/SettingActivity$10;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novel/reader/SettingActivity;->showDbResetDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novel/reader/SettingActivity;


# direct methods
.method constructor <init>(Lcom/novel/reader/SettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/novel/reader/SettingActivity;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/novel/reader/SettingActivity$10;->this$0:Lcom/novel/reader/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x1

    .line 299
    iget-object v2, p0, Lcom/novel/reader/SettingActivity$10;->this$0:Lcom/novel/reader/SettingActivity;

    invoke-static {v2, v5}, Lcom/novel/reader/SettingActivity;->access$1302(Lcom/novel/reader/SettingActivity;Z)Z

    .line 301
    new-instance v0, Lcom/novel/db/SQLiteNovel;

    iget-object v2, p0, Lcom/novel/reader/SettingActivity$10;->this$0:Lcom/novel/reader/SettingActivity;

    invoke-direct {v0, v2}, Lcom/novel/db/SQLiteNovel;-><init>(Landroid/content/Context;)V

    .line 302
    .local v0, "db":Lcom/novel/db/SQLiteNovel;
    invoke-virtual {v0}, Lcom/novel/db/SQLiteNovel;->resetDB()Z

    move-result v1

    .line 303
    .local v1, "reset":Z
    if-eqz v1, :cond_0

    .line 304
    iget-object v2, p0, Lcom/novel/reader/SettingActivity$10;->this$0:Lcom/novel/reader/SettingActivity;

    iget-object v3, p0, Lcom/novel/reader/SettingActivity$10;->this$0:Lcom/novel/reader/SettingActivity;

    invoke-virtual {v3}, Lcom/novel/reader/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700cb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 308
    :goto_0
    invoke-virtual {v0}, Lcom/novel/db/SQLiteNovel;->close()V

    .line 309
    return-void

    .line 306
    :cond_0
    iget-object v2, p0, Lcom/novel/reader/SettingActivity$10;->this$0:Lcom/novel/reader/SettingActivity;

    iget-object v3, p0, Lcom/novel/reader/SettingActivity$10;->this$0:Lcom/novel/reader/SettingActivity;

    invoke-virtual {v3}, Lcom/novel/reader/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700c8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
