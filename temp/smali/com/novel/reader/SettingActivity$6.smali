.class Lcom/novel/reader/SettingActivity$6;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    .line 186
    iput-object p1, p0, Lcom/novel/reader/SettingActivity$6;->this$0:Lcom/novel/reader/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "arg0"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "arg2"    # Z

    .prologue
    .line 189
    iget-object v0, p0, Lcom/novel/reader/SettingActivity$6;->this$0:Lcom/novel/reader/SettingActivity;

    invoke-static {v0}, Lcom/novel/reader/SettingActivity;->access$1000(Lcom/novel/reader/SettingActivity;)Landroid/widget/TextView;

    move-result-object v0

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 190
    iget-object v0, p0, Lcom/novel/reader/SettingActivity$6;->this$0:Lcom/novel/reader/SettingActivity;

    invoke-static {v0}, Lcom/novel/reader/SettingActivity;->access$300(Lcom/novel/reader/SettingActivity;)Landroid/widget/TextView;

    move-result-object v0

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 191
    iget-object v0, p0, Lcom/novel/reader/SettingActivity$6;->this$0:Lcom/novel/reader/SettingActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/novel/reader/SettingActivity;->access$1302(Lcom/novel/reader/SettingActivity;Z)Z

    .line 192
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 196
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 200
    return-void
.end method
