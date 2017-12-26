.class Lcom/skipping/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/skipping/inappbilling/util/IabHelper$OnConsumeFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/skipping/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/skipping/MainActivity;


# direct methods
.method constructor <init>(Lcom/skipping/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/skipping/MainActivity$3;->this$0:Lcom/skipping/MainActivity;

    .line 956
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeFinished(Lcom/skipping/inappbilling/util/Purchase;Lcom/skipping/inappbilling/util/IabResult;)V
    .locals 5
    .param p1, "purchase"    # Lcom/skipping/inappbilling/util/Purchase;
    .param p2, "result"    # Lcom/skipping/inappbilling/util/IabResult;

    .prologue
    const/4 v4, 0x1

    .line 960
    invoke-virtual {p2}, Lcom/skipping/inappbilling/util/IabResult;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 962
    iget-object v3, p0, Lcom/skipping/MainActivity$3;->this$0:Lcom/skipping/MainActivity;

    iget-object v3, v3, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 963
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "disable_ads"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 964
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 966
    iget-object v3, p0, Lcom/skipping/MainActivity$3;->this$0:Lcom/skipping/MainActivity;

    iput-boolean v4, v3, Lcom/skipping/MainActivity;->disable_ads:Z

    .line 969
    iget-object v3, p0, Lcom/skipping/MainActivity$3;->this$0:Lcom/skipping/MainActivity;

    const v4, 0x7f0a0002

    invoke-virtual {v3, v4}, Lcom/skipping/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 970
    .local v1, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 971
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x0

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 972
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 977
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "layout":Landroid/widget/LinearLayout;
    .end local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method
