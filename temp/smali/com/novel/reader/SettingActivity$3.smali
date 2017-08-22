.class Lcom/novel/reader/SettingActivity$3;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novel/reader/SettingActivity;->setViews()V
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
    .line 165
    iput-object p1, p0, Lcom/novel/reader/SettingActivity$3;->this$0:Lcom/novel/reader/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/novel/reader/SettingActivity$3;->this$0:Lcom/novel/reader/SettingActivity;

    iget-object v1, p0, Lcom/novel/reader/SettingActivity$3;->this$0:Lcom/novel/reader/SettingActivity;

    invoke-static {v1}, Lcom/novel/reader/SettingActivity;->access$500(Lcom/novel/reader/SettingActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/novel/reader/SettingActivity$3;->this$0:Lcom/novel/reader/SettingActivity;

    invoke-static {v2}, Lcom/novel/reader/SettingActivity;->access$600(Lcom/novel/reader/SettingActivity;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/novel/reader/SettingActivity$3;->this$0:Lcom/novel/reader/SettingActivity;

    invoke-static {v3}, Lcom/novel/reader/SettingActivity;->access$300(Lcom/novel/reader/SettingActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/novel/reader/SettingActivity;->access$700(Lcom/novel/reader/SettingActivity;ILandroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 169
    return-void
.end method
