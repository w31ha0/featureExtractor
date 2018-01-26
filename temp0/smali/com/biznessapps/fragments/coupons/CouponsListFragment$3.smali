.class Lcom/biznessapps/fragments/coupons/CouponsListFragment$3;
.super Ljava/lang/Object;
.source "CouponsListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/coupons/CouponsListFragment;->buildAlertMessageNoGps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/coupons/CouponsListFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/coupons/CouponsListFragment;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment$3;->this$0:Lcom/biznessapps/fragments/coupons/CouponsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 361
    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.SecuritySettings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    .local v1, "toLaunch":Landroid/content/ComponentName;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 364
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 366
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 367
    iget-object v2, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment$3;->this$0:Lcom/biznessapps/fragments/coupons/CouponsListFragment;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "toLaunch":Landroid/content/ComponentName;
    :goto_0
    return-void

    .line 368
    :catch_0
    move-exception v2

    goto :goto_0
.end method
