.class Lcom/novel/reader/SettingActivity$1;
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
    .line 151
    iput-object p1, p0, Lcom/novel/reader/SettingActivity$1;->this$0:Lcom/novel/reader/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/novel/reader/SettingActivity$1;->this$0:Lcom/novel/reader/SettingActivity;

    invoke-static {v0}, Lcom/novel/reader/SettingActivity;->access$000(Lcom/novel/reader/SettingActivity;)V

    .line 155
    return-void
.end method
