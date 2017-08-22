.class Lcom/novel/reader/SettingActivity$12;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novel/reader/SettingActivity;->setFinishDialog()V
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
    .line 337
    iput-object p1, p0, Lcom/novel/reader/SettingActivity$12;->this$0:Lcom/novel/reader/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 340
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 341
    return-void
.end method
