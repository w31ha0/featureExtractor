.class Lcom/novel/reader/SettingActivity$8;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Lyuku/ambilwarna/AmbilWarnaDialog$OnAmbilWarnaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novel/reader/SettingActivity;->showTextBackgroundPicker(ILandroid/widget/ImageView;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novel/reader/SettingActivity;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$textPreview:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/novel/reader/SettingActivity;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/novel/reader/SettingActivity;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/novel/reader/SettingActivity$8;->this$0:Lcom/novel/reader/SettingActivity;

    iput-object p2, p0, Lcom/novel/reader/SettingActivity$8;->val$imageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/novel/reader/SettingActivity$8;->val$textPreview:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lyuku/ambilwarna/AmbilWarnaDialog;)V
    .locals 0
    .param p1, "dialog"    # Lyuku/ambilwarna/AmbilWarnaDialog;

    .prologue
    .line 238
    return-void
.end method

.method public onOk(Lyuku/ambilwarna/AmbilWarnaDialog;I)V
    .locals 2
    .param p1, "dialog"    # Lyuku/ambilwarna/AmbilWarnaDialog;
    .param p2, "color"    # I

    .prologue
    .line 229
    iget-object v0, p0, Lcom/novel/reader/SettingActivity$8;->this$0:Lcom/novel/reader/SettingActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/novel/reader/SettingActivity;->access$1302(Lcom/novel/reader/SettingActivity;Z)Z

    .line 231
    iget-object v0, p0, Lcom/novel/reader/SettingActivity$8;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 232
    iget-object v0, p0, Lcom/novel/reader/SettingActivity$8;->val$textPreview:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 233
    return-void
.end method
